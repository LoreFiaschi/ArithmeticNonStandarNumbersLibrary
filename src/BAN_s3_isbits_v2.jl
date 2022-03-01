__precompile__()
module BAN

# Library for HPC fixing SIZE = 3

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
const SIZE = 3;

# Ban declaration
struct Ban <: AbstractAlgNum

    # Members
    p::Int64
    num1::Float64
	num2::Float64
	num3::Float64
    
    # Constructor
    Ban(p::Int64,num::Vector{Float64}, check::Bool) = new(p,num[1],num[2],num[3])
    Ban(p::Int64,num::Vector{T}, check::Bool) where T<:Real = Ban(p, Vector{Float64}(num), check)
	Ban(p::Int64,num::Tuple{T,T,T}, check::Bool) where T<:Float64 = new(p,num[1],num[2],num[3])
	Ban(p::Int64,num::Tuple{R,S,T}, check::Bool) where {R<:Real,S<:Real,T<:Real} = Ban(p, Tuple{Float64,Float64,Float64}(num), check)
	Ban(p::Int64,num1::T,num2::T,num3::T, check::Bool) where T<:Float64 = new(p,num1,num2,num3)
    Ban(p::Int64,num::Vector{Float64}) = (_constraints_satisfaction(p,num) && new(p,num[1],num[2],num[3]))
    Ban(p::Int64,num::Vector{T}) where T<:Real = Ban(p, Vector{Float64}(num))
    Ban(p::Int64,num::Tuple{T,T,T}) where T<:Float64 = (_constraints_satisfaction(p,num) && new(p,num[1],num[2],num[3]))
    Ban(p::Int64,num::Tuple{R,S,T}) where {R<:Real,S<:Real,T<:Real} = Ban(p, Tuple{Float64,Float64,Float64}(num))
	Ban(p::Int64,num1::T,num2::T,num3::T) where T<:Float64 = (_constraints_satisfaction(p,num1,num2,num3) && new(p,num1,num2,num3))
    Ban(a::Ban) = new(a.p,a.num1,a.num2,a.num3)
    Ban(x::Bool) = one(Ban)
    Ban(x::T) where T<:Real= Ban(0, Float64(x), 0.0, 0.0, false)
end

# α constant
const α = Ban(1, 1.0, 0.0, 0.0, false);
# η constant
const η = Ban(-1, 1.0, 0.0, 0.0, false);
# coefficient to compute sqrt
const sqrt_coef = -0.125;


# Check if the Ban is in a correct form (which guarantees uniqueness of the representation)
# The constraints are:  1) lenght of SIZE; 
#                       2) the first entry of the array must be non-zero except for the "0"
#                       3) the "0" is represented with a vector of zeros of degree zero
function _constraints_satisfaction(p::Int64,num::Vector{Float64})
    
    length(num) != SIZE && throw(ArgumentError(string("Wrong input array dimension. Supposed ", SIZE, ", ", length(num), " given.")))
    num[1] == 0.0 && (p != 0 || num[2] != 0.0 || num[3] != 0.0) && throw(ArgumentError("The first entry of the input array can be 0 only if all the other entries and the degree are nil too."))
    return true
end

function _constraints_satisfaction(p::Int64,num1::T,num2::T,num3::T) where T<:Float64

    num1 == 0.0 && (p != 0 || num2 != 0.0 || num3 != 0.0) && throw(ArgumentError("The first entry of the input array can be 0 only if all the other entries and the degree are nil too."))
    return true
end

###################
#    BEGIN I/O    #
###################

function _show(io::IO, a::Ban)

    print(io, string("α^",a.p,"(",a.num1))

    if a.num2 >= 0.0
        print(io, string(" + ", a.num2, "η^1"))
    else
        print(io, string(" - ", -a.num2, "η^1"))
    end

    if a.num3 >= 0.0
        print(io, string(" + ", a.num3, "η^2"))
    else
        print(io, string(" - ", -a.num3, "η^2"))
    end

    print(io, ")")
end


function _write(io::IO, a::Ban)
	# SIZE is supposed known and equal to the current one
	byte = write(io, a.p);
	byte += write(io, a.num1);
    byte += write(io, a.num2);
    byte += write(io, a.num3);

	return byte
end

function _read(io::IO, a::Type{Ban})
	#SIZE is supposed known and equal to the current one
	p = read(io, Int64)
	vec = Vector{Float64}(undef, SIZE);
    vec[1] = read(io, Float64);
    vec[2] = read(io, Float64);
    vec[3] = read(io, Float64);

	return Ban(p, vec, false)
end

function print_ext(a::Ban)

    if a == 0.0
        print("0");
    else
        q = a.p;
        @printf("%.3gα^%d",a.num1, q);
		
		q -= 1
		if a.num2 > 0.0 
                @printf(" + %.3gα^%d", a.num2, q);
		elseif a.num2 < 0.0
                @printf(" - %.3gα^%d", -a.num2, q);
        end
			
		q -= 1
		if a.num3 > 0.0 
                @printf(" + %.3gα^%d", a.num3, q);
		elseif a.num3 < 0.0
                @printf(" - %.3gα^%d", -a.num3, q);
        end
    end
end

function println_ext(a::Ban)

    print_ext(a);
    println("");
end

function print_latex(a::Ban; precision::Integer=16, digits::Integer=2)
	f = "{1:s} {2:.$(digits)e} {3:s}";
    if a == 0.0
        print("0");
    else
        deg = a.p;
        printfmt("{1:.$(digits)f} {2:s}", round(a.num1, digits=precision), "\\alpha^{$deg}");
		
		deg -= 1;
		if a.num2 > 0.0
			printfmt(f, " +", round(a.num2, digits=precision), "\\alpha^{$deg}");
		elseif a.num2 < 0.0
			printfmt(f, " -", -round(a.num2, digits=precision), "\\alpha^{$deg}");
		end
		
		deg -= 1;
		if a.num3 > 0.0
			printfmt(f, " +", round(a.num3, digits=precision), "\\alpha^{$deg}");
		elseif a.num3 < 0.0
			printfmt(f, " -", -round(a.num3, digits=precision), "\\alpha^{$deg}");
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
function _sum_body(a::Tuple{T,T,T}, b::Tuple{T,T,T}, diff_p::Int64) where T <: Float64
	
	diff_p == 0 && return a[1]+b[1], a[2]+b[2], a[3]+b[3]
	
	diff_p == 1 && return a[1], a[2]+b[1], a[3]+b[2]

	# diff_p == 2
	return a[1], a[2], a[3]+b[1];
end

function _sum(a::Ban, b::Ban)
	# Sum with zero (in order to avoid precision loss)
    a == 0.0 && return b;
    b == 0.0 && return a;
	
	diff_p = a.p - b.p;
	
	diff_p >= SIZE  && return a;
	diff_p <= -SIZE && return b;
	
	if diff_p < 0 
		num =_sum_body(get_monosemia(b), get_monosemia(a), -diff_p)
		return Ban(b.p, num, false); # no need tp check normal form diff_p < 0
	end
	
	# TODO put all in a single row
	num = _sum_body(get_monosemia(a), get_monosemia(b), diff_p);
	p, num = to_normal_form(a.p, num);
	
	return Ban(p, num, false);
	
end

# Multiplication of two Bans
function _mul_body(a::Tuple{T,T,T}, b::Tuple{T,T,T}) where T<:Float64
	return a[1] * b[1], a[2] * b[1] + a[1] * b[2], a[3] * b[1] + a[1] * b[3] + a[2] * b[2]
end

function _mul(a::Ban, b::Ban)
	num = _mul_body(get_monosemia(a), get_monosemia(b));
	p, num = to_normal_form(a.p+b.p, num);
	
	return Ban(p, num, false);
end

# Division of two Bans
function _div_body(a::Tuple{T,T,T}, b::Tuple{T,T,T}) where T<:Float64
	normalizer = b[1];
	b_norm = (0.0,-b[2]/normalizer, -b[3]/normalizer);
	
	eps_ = _mul_body(b_norm, a);
	num1 = a[1] + eps_[1];
	num2 = a[2] + eps_[2];
	num3 = a[3] + eps_[3];
	
	eps_ = _mul_body(eps_, b_norm);
	num1 += eps_[1];
	num2 += eps_[2];
	num3 += eps_[3];
	
	eps_ = _mul_body(eps_, b_norm);
	num1 += eps_[1];
	num2 += eps_[2];
	num3 += eps_[3];
	
	num1 /= normalizer;
	num2 /= normalizer;
	num3 /= normalizer;
	
	return num1, num2, num3;
end

function _div(a::Ban, b::Ban)
	b == 0.0 && throw(ArgumentError("Division by zero detected."));
	a == 0.0 && return a;

	num = _div_body(get_monosemia(a), get_monosemia(b));
	p, num = to_normal_form(a.p - b.p, num);
	
	return Ban(p, num, false);
end

# Sum of ban and real
function _sum(a::Ban, b::T) where T<:Real
	# Sum with zero (in order to avoid precision loss)
    a == 0.0 && return b;
    b == 0.0 && return a;
	
	if a.p >= 0
		if a.p-SIZE >= 0
			return a;
		end
		
		num1, num2, num3 = get_monosemia(a)
		if a.p == 0
			num1 += b
		elseif a.p == 1
			num2 += b
		else
			num3 += b
		end
		p, num = to_normal_form(a.p, (num1, num2, num3));
		return Ban(p, num, false);
	end
	
	num1 = b;
	
	if a.p == -1
		num3 = a.num2;
		num2 = a.num1;
	else
		num2 = 0.0 ;
		
		if a.p == -2
			num3 = a.num1;
		else
			num3 = 0.0 ;
		end
	
	end
	
	return Ban(0, (num1, num2, num3), false);
	
end

# Multiplication of ban and real
function _mul(a::Ban, b::T) where T<:Real
	p, num = to_normal_form(a.p, (a.num1*b, a.num2*b, a.num3*b));
	return Ban(p, num, false);
end

# Division of ban and real
function _div(a::Ban, b::T) where T<:Real
	b == 0.0 && throw(ArgumentError("Division by zero detected."));
	a == 0.0 && return a;

	p, num = to_normal_form(a.p, (a.num1/b, a.num2/b, a.num3/b));
	return Ban(p, num, false);
end

# Power function
function _pow_fast(b::Tuple{T,T,T}, e::Int64) where T<:Float64
	e == 1 && return b;
	
	e == 2 && return _mul_body(b, b);

	num_tmp = _pow_fast(b, e>>1);
	num_res = _mul_body(num_tmp, num_tmp);

	if convert(Bool, e & 1)
		return _mul_body(b, num_res);
	end
	
	return num_res;

end

function _pow(b::Ban, e::Int64)
	if b == 0.0
		if e > 0
			return b; #zero(Ban);
		end
		if e < 0
			throw(ArgumentError("Exponentiation of 0 with negative power not implemented yet"));
		end
		return one(Ban);
	end

	if b == 1.0
		return b; #one(Ban);
	end

	if e < 0
		return Ban(b.p*e, _pow_fast(get_monosemia(1.0/b), -e), false);
	end

	return Ban(b.p*e, _pow_fast(get_monosemia(b), e), false);

end

# Square root function
function _sqrt(a::Ban)
	if a < 0.0
		throw(ArgumentError("Square root of negative number cannot be computed."));
	end
	
	if convert(Bool, a.p & 1)
		throw(ArgumentError("Impossibile to compute square root of odd magnitude Ban."));
	end
	
	if (a == 0.0) || (a == 1.0)
		return a;
	end
	
	normalizer = a.num1;
	eps_ = (0.0, a.num2/normalizer, a.num3/normalizer) ;
	num1 = 1.0 ;
	num2 = 0.5*eps_[2];
	num3 = 0.5*eps_[3];
	
	eps_ = _mul_body(eps_, eps_);
	
	num1 += sqrt_coef*eps_[1];
	num2 += sqrt_coef*eps_[2];
	num3 += sqrt_coef*eps_[3];
	
	normalizer = sqrt(normalizer);

	num1 *= normalizer;
	num2 *= normalizer;
	num3 *= normalizer;
	
	return Ban(a.p>>1, (num1, num2, num3), false);
end

#####################
#  BEGIN ORDERING   #
#####################

function _isless(a::Ban, b::Ban)
	pbp = a.p < b.p;
	bpp = b.p < a.p;
	deq_p = ( pbp && ( b.num1 > 0.0 || (b.num1 == 0.0 && a.num1 < 0.0) ) ) || ( !pbp && bpp && ( a.num1 < 0.0 || (a.num1 == 0.0 && b.num1 > 0.0) ) );

	#same leading power (i.e., magnitude)

	eq0 = a.num1 == b.num1;
	eq1 = a.num2 == b.num2;

	return ( deq_p || (!pbp && !bpp && ( (!eq0 && a.num1 < b.num1) || (eq0 && ( (!eq1 && a.num2 < b.num2) || (eq1 && a.num3 < b.num3) ) ) ) ) );
end

function _isless(a::Ban, b::T) where T<:Real
	pg = a.p > 0;
	pl = a.p < 0;
	n0 = a.num1 < 0;
	
	return ( ( pg &&  n0 ) || ( pl &&  ( b > 0.0 || ( b == 0.0 && n0) ) ) || ( a.p == 0 && ( a.num1 < b || (a.num1 == b && ( a.num2 < 0.0 || ( a.num2 == 0.0 && a.num3 < 0.0 ) ) ) ) ) ); 
end

function _isless(a::T, b::Ban) where T<:Real
	pg = b.p > 0;
	pl = b.p < 0;
	n0 = b.num1 > 0;

	return ( ( pg &&  n0 ) || ( pl &&  ( a < 0.0 || ( a == 0.0 && n0) ) ) || ( b.p == 0 && ( a < b.num1 || (b.num1 == a && ( 0.0 < b.num2  || ( b.num2 == 0.0 && 0.0 < b.num3 ) ) ) ) ) ); 
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

	a.p > 0 && return Inf*a.num1
	a.p < 0 && return 0 ;
	return a.num1
end

function _min_degree(a::Ban)
	if a.num1 == 0.0 # a == 0
		return 0 ;
	end
	
	if a.num3 != 0.0
		return a.p-2;
	end
	
	if a.num2 != 0.0
		return a.p-1 ;
	end
	
	return a.p;
end

function get_monosemia(a::Ban)

	return a.num1, a.num2, a.num3;
end



principal(a::Ban) = Ban(a.p, a.num1, 0.0, 0.0, false);
principal(a::Real) = a
magnitude(a::Ban) = Ban(a.p, 1.0, 0.0, 0.0, false)
magnitude(a::Real) = one(Ban)
degree(a::Ban) = a.p
degree(a::Real) = 0
min_degree(a::Ban) = _min_degree(a)
min_degree(a::Real) = 0

################################
#    END EXTERNAL OPERATIONS   #
################################


function to_normal_form(p::Int64, num::Tuple{T,T,T}) where T<:Float64
	num[1] != 0.0 && return p, num ;
	
	num[2] != 0.0 && return p-1, (num[2], num[3], 0.0)
	
	num[3] != 0.0 && return p-2, (num[3], 0.0, 0.0) ;
	
	# all zero
	return 0, num;
end

function nextban(a::Ban, n::Integer)
    
    return Ban(a.p, (a.num1, a.num2, nextfloat(a.num3, n)));
end

function prevban(a::Ban, n::Integer)
    
    return Ban(a.p, (a.num1, a.num2, prevfloat(a.num3, n)));
end

Base.:(+)(a::Ban, b::Ban) = _sum(a,b);
Base.:(-)(a::Ban) = Ban(a.p, -a.num1, -a.num2, -a.num3, false);
Base.:(-)(a::Ban, b::Ban) = _sum(a,-b);
Base.:(*)(a::Ban, b::Ban) = _mul(a,b);
Base.:(/)(a::Ban, b::Ban) = _div(a,b);
Base.:(^)(a::Ban, p::Int64) = _pow(a, p);

Base.:(+)(a::Ban, b::T) where T<: Real = _sum(a,b);
Base.:(-)(a::Ban, b::T) where T<: Real = _sum(a,-b);
Base.:(*)(a::Ban, b::T) where T<: Real = _mul(a,b);
Base.:(/)(a::Ban, b::T) where T<: Real = _div(a,b);

Base.:(+)(a::T, b::Ban) where T<: Real = _sum(b,a);
Base.:(-)(a::T, b::Ban) where T<: Real = _sum(-b, a);
Base.:(*)(a::T, b::Ban) where T<: Real = _mul(b,a);
Base.:(/)(a::T, b::Ban) where T<: Real = _div(Ban(a),b);

Base.isless(a::Ban, b::Ban) = _isless(a, b);
Base.isless(a::Ban, b::T) where T<: Real = _isless(a, b);
Base.isless(a::T, b::Ban) where T<: Real = _isless(a, b);
Base.:(==)(a::Ban, b::Ban) = ((a.p == b.p) && (a.num1 == b.num1) && (a.num2 == b.num2) && (a.num3 == b.num3));
Base.:(==)(a::Ban, b::T) where T<: Real = ((a.p == 0) && (a.num1 == b) && (a.num2 == 0.0) && (a.num3 == 0.0));

Base.inv(a::Ban) = 1.0/a
Base.abs(a::Ban) = (a[1] >= 0.0) ? a : -a
Base.abs2(a::Ban) = a*a
Base.sqrt(a::Ban) = _sqrt(a)

Base.conj(a::Ban) = a
Base.sign(a::Ban) = (a[1] == 0.0) ? 0 : sign(a[1])

#Base.:(<<)(a::Ban, b::Int) = Ban(a.p, a.num1<<b, a.num2<<b, a.num3<<b, false)
#Base.:(>>)(a::Ban, b::Int) = Ban(a.p, a.num1<<b, a.num2<<b, a.num3<<b, false)

Base.zero(::Type{Ban}) = Ban(0, 0.0, 0.0, 0.0, false)
Base.zeros(::Type{Ban}, n::Int) = _zeros(n)
Base.zeros(::Type{Ban}, n::Int, m::Int) = _zeros(n,m)
Base.one(::Type{Ban}) = Ban(0, 1.0, 0.0, 0.0, false)
Base.ones(::Type{Ban}, n::Int) = _ones(n)
Base.ones(::Type{Ban}, n::Int, m::Int) = _ones(n,m)

Base.convert(::Type{Ban}, a::T) where T <: Real =  Ban(0, Float64(a), 0.0, 0.0, false)
Base.promote_rule(::Type{Ban}, ::Type{T}) where T <: Real = Ban

Base.copysign(a::Ban, b::Ban)  = ifelse(signbit(a.num1)!=signbit(b.num1),  -a, a)
Base.copysign(a::Ban, b::Real) = ifelse(signbit(a.num1)!=signbit(b), -a, a)
Base.copysign(a::Real, b::Ban) = ifelse(signbit(a)!=signbit(b.num1), -a, a);

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
	
    Random.reserve(r, SIZE);
	num1 =  Random.rand_inbounds(r, sp[])-1;
	num2 = (Random.rand_inbounds(r, sp[])-1)*rand([-1,1]);
	num3 = (Random.rand_inbounds(r, sp[])-1)*rand([-1,1]);

	p, num1, num2, num3 = to_normal_form(0, (num1, num2, num3))
	if num1 < 0
		num1 .*= -1;
		num2 .*= -1;
		num3 .*= -1;
	end
	
    return Ban(p, (num1, num2, num3), false);
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
