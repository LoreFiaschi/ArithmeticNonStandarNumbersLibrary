__precompile__()
module BAN

# Library for HPC fixing SIZE = 3
# Next Next step: use non-mutable struct
# Next Next Next step: avoid use of constructors as much as possible

using Printf, Format
using Random, LinearAlgebra

export Ban, AbstractAlgNum
export α, η
#export SIZE
export print_ext, println_ext, print_latex
export standard_part
export degree, min_degree, magnitude, principal
export nextban, prevban
#export denoise#, isoverflow, isoverflow!
#export component_wise_division, retrieve_infinitesimals 


# α^p P(η) , P(0) != 0 except for zero

##########################
#    BEGIN DEFINITIONS   #
##########################

abstract type AbstractAlgNum <: Number end

# Ban dimension
const SIZE = Int32(3);

# Ban declaration
mutable struct Ban <: AbstractAlgNum

    # Members
    p::Int32
    num::Vector{Float32}
    
    # Constructor
    Ban(p::Int32,num::Vector{Float32}, check::Bool) = new(p,copy(num))
    Ban(p::Int32,num::Vector{Float32}) = (_constraints_satisfaction(p,num) && new(p,copy(num)))
    Ban(a::Ban) = new(a.p,copy(a.num))
    Ban(x::Bool) = one(Ban)
    Ban(x::Float32) = ifelse(isinf(x), Ban(zero32, ones(Float32, SIZE).*x, false), Ban(zero32, [x, 0f0, 0f0], false))
end

# α constant
const α = Ban(one(Int32), [1f0, 0f0, 0f0], false);
# η constant
const η = Ban(-one(Int32), [1f0, 0f0, 0f0], false);
# coefficient to compute sqrt
const sqrt_coef = -0.125f0;
# 0 on 32 bits
const zero32 = Int32(0);
# 1 on 32 bits
const one32 = Int32(1);

# Check if the Ban is in a correct form (which guarantees uniqueness of the representation)
# The constraints are:  1) lenght of SIZE; 
#                       2) the first entry of the array must be non-zero except for the "0"
#                       3) the "0" is represented with a vector of zeros of degree zero
function _constraints_satisfaction(p::Int32,num::Vector{Float32})
    
    length(num) != SIZE && throw(ArgumentError(string("Wrong input array dimension. Supposed ", SIZE, ", ", length(num), " given.")))
    num[1] == 0f0 && (p != zero32 || num[1] != 0f0 || num[2] != 0f0) && throw(ArgumentError("The first entry of the input array can be 0 only if all the other entries and the degree are nil too."))
    return true
end

###################
#    BEGIN I/O    #
###################

function _show(io::IO, a::Ban)

    print(io, string("α^",a.p,"(",a.num[1]))

    if a.num[2] >= 0f0
        print(io, string(" + ", a.num[2], "η^1"))
    else
        print(io, string(" - ", -a.num[2], "η^1"))
    end

    if a.num[3] >= 0f0
        print(io, string(" + ", a.num[3], "η^2"))
    else
        print(io, string(" - ", -a.num[3], "η^2"))
    end

    print(io, ")")
end


function _write(io::IO, a::Ban)
	# SIZE is supposed known and equal to the current one
	byte = write(io, a.p);
	byte += write(io, a.num[1]);
    byte += write(io, a.num[2]);
    byte += write(io, a.num[3]);

	return byte
end

function _read(io::IO, a::Type{Ban})
	#SIZE is supposed known and equal to the current one
	p = read(io, Int32)
	vec = Vector{Float32}(undef, SIZE);
    vec[1] = read(io, Float32);
    vec[2] = read(io, Float32);
    vec[3] = read(io, Float32);

	return Ban(p, vec, false)
end

function print_ext(a::Ban)

    if a == 0
        print("0");
    else
        q = a.p;
        @printf("%.3gα^%d",a.num[1], q);
		
		q -= one32
		if a.num[2] > 0f0 
                @printf(" + %.3gα^%d", a.num[2], q);
		elseif a.num[2] < 0f0
                @printf(" - %.3gα^%d", -a.num[2], q);
        end
			
		q -= one32
		if a.num[3] > 0f0 
                @printf(" + %.3gα^%d", a.num[3], q);
		elseif a.num[3] < 0f0
                @printf(" - %.3gα^%d", -a.num[3], q);
        end
    end
end

function println_ext(a::Ban)

    print_ext(a);
    println("");
end

function print_latex(a::Ban; precision::Integer=16, digits::Integer=2)
	f = "{1:s} {2:.$(digits)e} {3:s}";
    if a == 0f0
        print("0");
    else
        deg = a.p;
        printfmt("{1:.$(digits)f} {2:s}", round(a.num[1], digits=precision), "\\alpha^{$deg}");
		
		deg -= one32;
		if a.num[2] > 0fo
			printfmt(f, " +", round(a.num[2], digits=precision), "\\alpha^{$deg}");
		elseif a.num[2] < 0f0
			printfmt(f, " -", -round(a.num[2], digits=precision), "\\alpha^{$deg}");
		end
		
		deg -= one32;
		if a.num[3] > 0f0
			printfmt(f, " +", round(a.num[3], digits=precision), "\\alpha^{$deg}");
		elseif a.num[3] < 0f0
			printfmt(f, " -", -round(a.num[3], digits=precision), "\\alpha^{$deg}");
		end
    end
end

function print_latex(a::Vector{T}; precision::Integer=16, digits::Integer=2) where T <: AbstractAlgNum

    num_elem = length(a);

    print("\\begin{bmatrix}");
    print_latex(a[1], precision=precision, digits=digits);
    for i = 2:num_elem
        print("\\\\ ")
        print_latex(a[i], precision=precision, digits=digits);
    end
    print("\\end{bmatrix}");
end

function print_latex(A::Matrix{T}; precision::Integer=16, digits::Integer=2) where T <: AbstractAlgNum

    num_elem = size(A);

    println("\\begin{bmatrix}");
	for i=1:num_elem[1]-1
		for j=1:num_elem[2]-1
			print_latex(A[i,j], precision=precision, digits=digits);
			print(" & ");
		end
		print_latex(A[i,num_elem[2]], precision=precision, digits=digits);
		println(" \\\\")
	end
	for j=1:num_elem[2]-1
		print_latex(A[num_elem[1],j], precision=precision, digits=digits);
		print(" & ");
	end
	print_latex(A[num_elem[1],num_elem[2]], precision=precision, digits=digits);
	println("");
    print("\\end{bmatrix}");
end

#########################
#   BEGIN ARITHMETICS   #
#########################


# Sum of two Bans
function _sum_body!(res::Ban, b::Ban, diff_p::Int32)
	
	if diff_p == zero32
		res.num[1] += b.num[1];
		res.num[2] += b.num[2];
		res.num[3] += b.num[3];
		to_normal_form!(res);
	
	elseif diff_p == one32
		res.num[2] += b.num[1];
		res.num[3] += b.num[2];
	
	else # diff_p ==2
		res.num[3] += b.num[1];
	end
	
	return res;
	
end

function _sum(a::Ban, b::Ban)
	# Sum with zero (in order to avoid precision loss)
    a == 0f0 && return b;
    b == 0f0 && return a;
	
	diff_p = a.p - b.p;
	
	diff_p >= SIZE  && return a;
	diff_p <= -SIZE && return b;
	
	diff_p < 0f0 && return _sum_body!(Ban(b), a, -diff_p);
	
	return _sum_body!(Ban(a), b, diff_p);
	
end

# Multiplication of two Bans
function _mul_body!(num_a::Vector{T}, num_b::Vector{T}, num_res::Vector{T}) where T<:Float32
	num_res[1] = num_a[1] * num_b[1];
	num_res[2] = num_a[2] * num_b[1] + num_a[1] * num_b[2];
	num_res[3] = num_a[3] * num_b[1] + num_a[1] * num_b[3] + num_a[2] * num_b[2];
end

function _mul(a::Ban, b::Ban)
	num = Vector{Float32}(undef, SIZE);
	_mul_body!(a.num, b.num, num);
	res = Ban(a.p+b.p, num, false);
	to_normal_form!(res);
	
	return res;
end

# Division of two Bans
function _div_body!(num_num::Vector{T}, num_den::Vector{T}, num_res::Vector{T}) where T<:Float32
	normalizer = num_den[1];
	den_norm = Vector{T}(undef, SIZE);
	eps1 = Vector{T}(undef, SIZE);
	eps2 = Vector{T}(undef, SIZE);
	den_norm[1] = 0f0;
	den_norm[2] = -num_den[2]/normalizer;
	den_norm[3] = -num_den[3]/normalizer;
	
	_mul_body!(den_norm, num_num, eps1);
	num_res[1] += eps1[1];
	num_res[2] += eps1[2];
	num_res[3] += eps1[3];
	
	_mul_body!(eps1, den_norm, eps2);
	num_res[1] += eps2[1];
	num_res[2] += eps2[2];
	num_res[3] += eps2[3];
	
	_mul_body!(eps2, den_norm, eps1);
	num_res[1] += eps1[1];
	num_res[2] += eps1[2];
	num_res[3] += eps1[3];
	
	num_res[1] /= normalizer;
	num_res[2] /= normalizer;
	num_res[3] /= normalizer;
	
end

function _div(a::Ban, b::Ban)
	b == 0 && throw(ArgumentError("Division by zero detected."));
	a == 0 && return zero(Ban);
	
	res = Ban(a);
	res.p -= b.p;
	_div_body!(a.num, b.num, res.num);
	to_normal_form!(res);
	
	return res;
end

# Sum of ban and real
function _sum(a::Ban, b::T) where T<:Float32
	# Sum with zero (in order to avoid precision loss)
    a == 0f0 && return b;
    b == 0f0 && return a;
	
	if a.p >= 0f0
		res = Ban(a);
		if a.p-SIZE >= 0f0
			return res
		end
		
		res.num[a.p+on32] += b;
		to_normal_form!(res);
		return res;
	end
	
	num_res = Vector{T}(undef, SIZE);
	num_res[1] = b;
	
	if a.p == -one32
		num_res[3] = num[2];
		num_res[2] = num[1];
	else
		num_res[2] = 0f0;
		
		if a.p == -Int32(2)
			num_res[3] = num[1];
		else
			num_res[3] = 0f0;
		end
	
	end
	
	return Ban(zero32, num_res, false);
	
end

# Multiplication of ban and real
function _mul(a::Ban, b::T) where T<:Float32
	res = Ban(a.p, [a.num[1]*b, a.num[2]*b, a.num[3]*b], false);
	to_normal_form!(res);
	return res;
end

# Division of ban and real
function _div(a::Ban, b::T) where T<:Float32
	b == 0f0 && throw(ArgumentError("Division by zero detected."));
	a == 0f0 && return zero(Ban);
	
	res = Ban(a.p, [a.num[1]/b, a.num[2]/b, a.num[3]/b], false);
	to_normal_form!(res);
	return res;
end

# Power function
function _pow_fast(b::Ban, e::UInt32)
	e == one32 && return b;
	
	num_res = Vector{Float32}(undef, SIZE);
	
	if e == Int32(2)
		_mul_body!(b.num, b.num, num_res);
		return Ban(b.p*Int32(2), num_res, false);
	end

	res = _pow_fast(b, e>>one32);
	_mul_body!(res.num, res.num, num_res);
	res.num[1] = num_res[1];
	res.num[2] = num_res[2];
	res.num[3] = num_res[3];
	res.p *= 2;

	if convert(Bool, e & one32)
		_mul_body!(b.num, res.num, num_res);
		res.num[1] = num_res[1];
		res.num[2] = num_res[2];
		res.num[3] = num_res[3];
		res.p += b.p;
	end
	
	return res;

end

function _pow(b::Ban, e::Int32)
	if b == 0f0
		if e > zero32
			return zero(Ban);
		end
		if e < zero32
			throw(ArgumentError("Exponentiation of 0 with negative power not implemented yet"));
		end
		return one(Ban);
	end

	if b == 1f0
		return one(Ban);
	end

	if e < zero32
		return _pow_fast(1/b, -e);
	end

	return _pow_fast(b, e);

end

# Square root function
function _sqrt(a::Ban)
	if a < 0f0
		throw(ArgumentError("Square root of negative number cannot be computed."));
	end
	
	if convert(Bool, a.p & one32)
		throw(ArgumentError("Impossibile to compute square root of odd magnitude Ban."));
	end
	
	if (a == 0fo) || (a == 1f0)
		return a;
	end
	
	normalizer = a.num[1];
	num_res = Vector{Float32}(undef, SIZE);
	eps1 = Vector{Float32}(undef, SIZE);
	eps2 = Vector{Float32}(undef, SIZE);
	eps3 = Vector{Float32}(undef, SIZE);
	num_res[1] = 1f0;
	eps1[1] = 0f0;
	eps2[1] = 0f0;
	eps_1[2] = eps_2[2] = a.num[2]/normalizer;
	eps_1[3] = eps_2[3] = a.num[3]/normalizer;
	num_res[1] = 1;
	num_res[2] = 0.5f0*eps_1[2];
	num_res[3] = 0.5f0*eps_1[3];
	
	_mul_body!(eps1, eps2, eps3);
	
	num_res[1] += sqrt_exp*eps_3[1];
	num_res[2] += sqrt_exp*eps_3[2];
	num_res[3] += sqrt_exp*eps_3[3];
	
	normalizer = sqrt(normalizer);

	num_res[1] *= normalizer;
	num_res[2] *= normalizer;
	num_res[3] *= normalizer;
	
	return Ban(a.p>>one32, num_res, false);
end

#####################
#  BEGIN ORDERING   #
#####################

function _isless(a::Ban, b::Ban)
	pbp = a.p < b.p;
	bpp = b.p < a.p;
	deq_p = ( pbp && ( b.num[0] > 0f0 || (!b.num[0] && a.num[0] < 0f0) ) ) || ( !pbp && bpp && ( a.num[0] < 0f0 || (!a.num[0] && b.num[0] > 0f0) ) );

	#same leading power (i.e., magnitude)

	eq0 = a.num[0] == b.num[0];
	eq1 = a.num[1] == b.num[1];

	return ( deq_p || (!pbp && !bpp && ( (!eq0 && num[0] < b.num[0]) || (eq0 && ( (!eq1 && a.num[1] < b.num[1]) || (eq1 && a.num[2] < b.num[2]) ) ) ) ) );
end

function _isless(a::Ban, b::T) where T<:Float32
	pg = a.p > zero32;
	pl = a.p < zero32;
	n0 = a.num[0] < 0f0;

	return ( ( pg &&  n0 ) || ( pl &&  ( b > 0f0 || ( !b && n0) ) ) || ( !a.p && ( a.num[0] < b || (a.num[0] == b && ( a.num[1] < 0f0 || ( !a.num[1] && a.num[2] < 0f0 ) ) ) ) ) ); 
end

function _isless(a::T, b::Ban) where T<:Float32
	pg = b.p > zero32;
	pl = b.p < zero32;
	n0 = b.num[0] > 0f0;

	return ( ( pg &&  n0 ) || ( pl &&  ( a < 0f0 || ( !a && n0) ) ) || ( !b.p && ( b.num[0] < a || (b.num[0] == a && ( b.num[1] < 0f0 || ( !b.num[1] && b.num[2] < 0f0 ) ) ) ) ) ); 
end

#####################
#    END ORDERING   #
#####################

#####################
#  BEGIN GENERATORS #
#####################

function _zeros(n::Int, m::Int)

    (m <= 0 || n <= 0) && throw(ArgumentError("Non-positive matrix dimensions not allowed."));
    
    A = Matrix{Ban}(undef, n, m);
    
	for i = 1:m*n
		A[i] = zero(Ban)
	end
    
    return A
end

function _zeros(n::Int)

    n <= 0 && throw(ArgumentError("Non-positive vector dimensions not allowed"));
    
    a = Vector{Ban}(undef, n);

	for i = 1:n
		a[i] = zero(Ban)
	end
    
    return a
end

function _ones(n::Int, m::Int)

    (m <= 0 || n <= 0) &&  throw(ArgumentError("Non-positive matrix dimensions not allowed"));
    
    A = Matrix{Ban}(undef, n, m);
    

	for i = 1:m*n
		A[i] = one(Ban)
	end
    
    return A
end

function _ones(n::Int)

    n <= 0 &&  throw(ArgumentError("Non-positive vector dimensions not allowed"));
    
    a = Vector{Ban}(undef, n);

	for i = 1:n
		a[i] = one(Ban)
	end
    
    return a
end

#####################
#   END GENERATORS  #
#####################

###############################
#  BEGIN EXTERNAL OPERATIONS  #
###############################

function standard_part(a::Ban)

	a.p > zero32 && return Inf32*a.num[1]
	a.p < zero32 && return Int32(0);
	return a.num[1]
end

principal(a::Ban) = (res = Ban(a.p, [a.num[1], 0f0, 0f0], false); to_normal_form!(res); return res;)
principal(a::Real) = a
magnitude(a::Ban) = Ban(a.p, [1f0, 0f0, 0f0], false)
magnitude(a::Real) = one(Ban)
degree(a::Ban) = a.p
degree(a::Real) = Int32(0)
min_degree(a::Ban) = (a == 0f0) ? Int32(0) : a.p-findlast(x->x!=0f0, a.num)+one32
min_degree(a::Real) = Int32(0)

################################
#    END EXTERNAL OPERATIONS   #
################################


function to_normal_form!(a::Ban)
	a.num[1] != 0f0 && return ;
	
	if a.num[2] != 0f0
		a.num[1] = a.num[2];
		a.num[2] = a.num[3];
		a.num[3] = 0f0;
		a.p -= 1;
		return ;
	end
	
	if a.num[3] != 0f0
		a.num[1] = a.num[3];
		a.num[3] = 0f0;
		a.p -= Int32(2);
	end
	
	# all zero
	a.p = Int32(0);
	return ;
end

function nextban(a::Ban, n::Integer)

    b = copy(a);
    b.num[SIZE] = nextfloat(b.num[SIZE], n);
    
    return b
end

function prevban(a::Ban, n::Integer)

    b = copy(a);
    b.num[SIZE] = prevfloat(b.num[SIZE], n);
    
    return b
end

Base.:(+)(a::Ban, b::Ban) = _sum(a,b);
Base.:(-)(a::Ban) = Ban(a.p, [-a.num[1], -a.num[2], -a.num[3]], false);
Base.:(-)(a::Ban, b::Ban) = _sum(a,-b);
Base.:(*)(a::Ban, b::Ban) = _mul(a,b);
Base.:(/)(a::Ban, b::Ban) = _div(a,b);
Base.:(^)(a::Ban, p::Int32) = _pow(a, p);

Base.:(+)(a::Ban, b::T) where T<: Float32 = _sum(a,b);
Base.:(-)(a::Ban, b::T) where T<: Float32 = _sum(a,-b);
Base.:(*)(a::Ban, b::T) where T<: Float32 = _mul(a,b);
Base.:(/)(a::Ban, b::T) where T<: Float32 = _div(a,b);

Base.:(+)(a::T, b::Ban) where T<: Float32 = _sum(b,a);
Base.:(-)(a::T, b::Ban) where T<: Float32 = _sum(-b, a);
Base.:(*)(a::T, b::Ban) where T<: Float32 = _mul(b,a);
Base.:(/)(a::T, b::Ban) where T<: Float32 = _div(Ban(a),b);

Base.isless(a::Ban, b::Ban) = _isless(a, b);
Base.isless(a::Ban, b::T) where T<: Float32 = _isless(a, b);
Base.isless(a::T, b::Ban) where T<: Float32 = _isless(a, b);
Base.:(==)(a::Ban, b::Ban) = ((a.p == b.p) && (a.num[1] == b.num[1]) && (a.num[2] == b.num[2]) && (a.num[3] == b.num[3]));
Base.:(==)(a::Ban, b::T) where T<: Float32 = ((a.p == zero32) && (a.num[1] == b) && (a.num[2] == 0f0) && (a.num[3] == 0f0));

Base.inv(a::Ban) = one32/a
Base.abs(a::Ban) = (a[1] >= 0f0) ? Ban(a) : -a
Base.abs2(a::Ban) = a*a
Base.sqrt(a::Ban) = _sqrt(a)

Base.conj(a::Ban) = Ban(a)
Base.sign(a::Ban) = (a[1] == 0f0) ? 0 : sign(a[1])

Base.:(<<)(a::Ban, b::Int) = Ban(a.p, [a.num[1]<<b, a.num[2]<<b, a.num[3]<<b], false)
Base.:(>>)(a::Ban, b::Int) = Ban(a.p, [a.num[1]<<b, a.num[2]<<b, a.num[3]<<b], false)

Base.zero(::Type{Ban}) = Ban(zero32, [0f0, 0f0, 0f0], false)
Base.zeros(::Type{Ban}, n::Int) = _zeros(n)
Base.zeros(::Type{Ban}, n::Int, m::Int) = _zeros(n,m)
Base.one(::Type{Ban}) = Ban(zero32, [1f0, 0f0, 0f0], false)
Base.ones(::Type{Ban}, n::Int) = _ones(n)
Base.ones(::Type{Ban}, n::Int, m::Int) = _ones(n,m)

Base.convert(::Type{Ban}, a::T) where T <: Float32 =  Ban(zero32, [a, 0f0, 0f0], false)
Base.promote_rule(::Type{Ban}, ::Type{T}) where T <: Float32 = Ban

Base.copysign(a::Ban, b::Ban)  = ifelse(signbit(a.num[1])!=signbit(b.num[1]),  -a, Ban(a))
Base.copysign(a::Ban, b::Real) = ifelse(signbit(a.num[1])!=signbit(b), -a, Ban(a))
Base.copysign(a::Real, b::Ban) = ifelse(signbit(a)!=signbit(b.num[1]), -a, Ban(a));

Base.show(io::IO, a::Ban) = _show(io, a)
Base.write(io::IO, a::Ban) = _write(io, a)
Base.read(io::IO, ::Type{T}) where T<:AbstractAlgNum = _read(io, T)

#####################
#    BEGIN RANDOM   #
#####################

abstract type AlgNumInterval{T<:AbstractAlgNum} end

struct CloseOpen01{T<:AbstractAlgNum} <: AlgNumInterval{T} end
struct CloseOpen12{T<:AbstractAlgNum} <: AlgNumInterval{T} end

const CloseOpen01_AN = CloseOpen01{Ban}
const CloseOpen12_AN = CloseOpen12{Ban}

CloseOpen01(::Type{T}) where {T<:AbstractAlgNum} = CloseOpen01{T}()
CloseOpen12(::Type{T}) where {T<:AbstractAlgNum} = CloseOpen12{T}()

function _rand_Ban(r::MersenneTwister, sp::Random.SamplerTrivial{Random.CloseOpen12_64})

    num = Vector{Float32}(undef, SIZE);
    Random.reserve(r, SIZE);
	num[1] =  Random.rand_inbounds(r, sp[])-1f0;
	num[2] = (Random.rand_inbounds(r, sp[])-1f0)*rand([-1f0,1f0]);
	num[3] = (Random.rand_inbounds(r, sp[])-1f0)*rand([-1f0,1f0]);
    
    a = Ban(zero32, num, false);
	
	if a.num[1] == 0f0
		to_normal_form!(a)
		a < 0f0 && (a *= -1f0);
	end
	
    return a;
end

Random.gentype(::Type{<:AlgNumInterval{T}}) where {T<:AbstractAlgNum} = T

Random.rand_inbounds(r::MersenneTwister, ::CloseOpen01_AN=CloseOpen01(Ban)) = _rand(r, 1)
Random.rand_inbounds(r::MersenneTwister, ::CloseOpen12_AN) = _rand(r, 0)

Random.rand(r::MersenneTwister, sp::Random.SamplerTrivial{CloseOpen01_AN}) = _rand_Ban(r, Random.SamplerTrivial{Random.CloseOpen12{Float64},Float64}(Random.CloseOpen12{Float64}()))

Random.Sampler(::Type{RNG}, ::Type{T}, n::Random.Repetition) where {RNG<:AbstractRNG,T<:AbstractAlgNum} = Random.Sampler(RNG, CloseOpen01(T), n)

##########################
#  BEGIN LINEAR ALGEBRA  #
##########################

function _generic_normInf(A::AbstractArray{T}) where T <:AbstractAlgNum
    (v, s) = iterate(A)::Tuple
    maxabs = norm(v)
    while true
        y = iterate(A, s)
        y === nothing && break
        (v, s) = y
        vnorm = norm(v)
        maxabs = ifelse(isnan(maxabs) | (maxabs > vnorm), maxabs, vnorm)
    end
	
    return maxabs
end 

function _cholesky!(A::AbstractMatrix{T}, ::LinearAlgebra.Val{false}=LinearAlgebra.Val(false); check::Bool = true) where T<:AbstractAlgNum
	LinearAlgebra.checksquare(A)
    if !LinearAlgebra.ishermitian(A);
		check && checkpositivedefinite(-1)
		
        return Cholesky(A, 'U', convert(LinearAlgebra.BlasInt, -1))
	else
		isa(A, Hermitian) && (A = convert(Matrix{T}, A))
		C, info = LinearAlgebra._chol!(A, UpperTriangular);
		check && LinearAlgebra.checkpositivedefinite(info);
	
		return Cholesky(C.data, 'U', info)
	end
end

function _chol!(x::AbstractAlgNum, uplo)
	rx = abs(x)
    rxr = sqrt(rx)
    rval =  convert(promote_type(typeof(x), typeof(rxr)), rxr)
    x == rx ? (rval, convert(LinearAlgebra.BlasInt, 0)) : (rval, convert(LinearAlgebra.BlasInt, 1))
end

function _setindex!(A::Hermitian{T,S}, v, i::Integer, j::Integer) where {T<:AbstractAlgNum, S<:AbstractMatrix{<:T}}
    if i != j
        throw(ArgumentError("Cannot set a non-diagonal index in a Hermitian matrix"))
    elseif !isa(v, Number)
        throw(ArgumentError("Cannot set a diagonal entry in a Hermitian matrix to a non-numeric value"))
    else
        setindex!(A.data, v, i, j)
    end
end

# Needed beacuse the library requests real(::Ban)
# Elementary reflection similar to LAPACK. The reflector is not Hermitian but
# ensures that tridiagonalization of Hermitian matrices become real. See lawn72
@inline function LinearAlgebra.reflector!(x::AbstractVector{T}) where T<:AbstractAlgNum
    Base.require_one_based_indexing(x)
    n = length(x)
    @inbounds begin
        ξ1 = x[1]
        normu = abs2(ξ1)
        for i = 2:n
            normu += abs2(x[i])
        end
        if iszero(normu)
            return zero(ξ1/normu)
        end
        normu = sqrt(normu)
        ν = copysign(normu, ξ1)
        ξ1 += ν
        x[1] = -ν
        for i = 2:n
            x[i] /= ξ1
        end
    end
    ξ1/ν
end

LinearAlgebra.cholesky!(A::AbstractMatrix{T}, ::LinearAlgebra.Val{false}=LinearAlgebra.Val(false); check::Bool = true) where T<:AbstractAlgNum = _cholesky!(copy(A), LinearAlgebra.Val(false), check=check)
LinearAlgebra._chol!(x::AbstractAlgNum, uplo) = _chol!(x, uplo)

LinearAlgebra.hermitian(A::AbstractAlgNum, ::Symbol) = convert(typeof(A), A)

LinearAlgebra.normInf(A::AbstractArray{T}) where T <: Ban = _generic_normInf(A)
LinearAlgebra.norm(a::Ban) = abs(a)

LinearAlgebra.setindex!(A::Hermitian{T,S}, v, i::Integer, j::Integer) where {T<:AbstractAlgNum, S<:AbstractMatrix{<:T}} = _setindex!(A, v, i, j)

end
