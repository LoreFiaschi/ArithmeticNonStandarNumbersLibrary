__precompile__()
module BAN

using Printf, Format
using Random, LinearAlgebra

export Ban, AbstractAlgNum
export α, η
export SIZE
export print_ext, println_ext, print_latex
export standard_part
export degree, min_degree, magnitude, principal
export nextban, prevban
export denoise#, isoverflow, isoverflow!
export component_wise_division, retrieve_infinitesimals 


# α^p P(η) , P(0) != 0 except for zero

##########################
#    BEGIN DEFINITIONS   #
##########################

abstract type AbstractAlgNum <: Number end

# Ban dimension
const SIZE = 3;

# Ban declaration
mutable struct Ban <: AbstractAlgNum

    # Members
    p::Int
    num::Array{T,1} where T<:Real
    
    # Constructor
    Ban(p::Int,num::Array{T,1}, check::Bool) where T <: Real = new(p,copy(num))
    Ban(p::Int,num::Array{T,1}) where T <: Real = (_constraints_satisfaction(p,num) && new(p,copy(num)))
    Ban(a::Ban) = new(a.p,copy(a.num))
    Ban(x::Bool) = one(Ban)
    Ban(x::T) where T<:Real = ifelse(isinf(x), Ban(0, ones(SIZE).*x), one(Ban)*x)
end

# α constant
const α = Ban(1, [one(Int64); zeros(Int64, SIZE-1)], false);
# η constant
const η = Ban(-1, [one(Int64); zeros(Int64, SIZE-1)], false);

# Check if the Ban is in a correct form (which guarantees uniqueness of the representation)
# The constraints are:  1) lenght of SIZE; 
#                       2) the first entry of the array must be non-zero except for the "0"
#                       3) the "0" is represented with a vector of zeros of degree zero
function _constraints_satisfaction(p::Int,num::Array{T,1}) where T <: Real
    
    length(num) != SIZE && throw(ArgumentError(string("Wrong input array dimension. Supposed ", SIZE, ", ", length(num), " given.")))
    num[1] == 0 && (p != 0 || !all(x->x==0, num)) && throw(ArgumentError("The first entry of the input array can be 0 only if all the other entries and the degree are nil too."))
    return true
end


###################
#    BEGIN I/O    #
###################

function _show(io::IO, a::Ban)

    print(io, string("α^",a.p,"(",a[1]))
    for i=2:SIZE
        if a[i] >= 0 
            print(io, string(" + ", a[i], "η^$(i-1)"))
        else
            print(io, string(" - ", -a[i], "η^$(i-1)"))
        end
    end
    print(io, ")")
end

function _write(io::IO, a::Ban)
	# SIZE is supposed known and equal to the current one
	byte = write(io, a.p);
	b = convert(Vector{Float64}, a.num);
	for i=1:SIZE
		byte += write(io, b[i]);
	end

	return byte
end

function _read(io::IO, a::Type{Ban})
	#SIZE is supposed known and equal to the current one
	p = read(io, Int64)
	vec = Vector{Float64}(undef, SIZE);
	for i=1:SIZE
		vec[i] = read(io, Float64);
	end

	return Ban(p, vec)
end


function print_ext(a::Ban)

    if a == 0
        print("0");
    else
        q = a.p;
        @printf("%.3gα^%d",a[1], q);
        for i=2:SIZE
            q -= 1;
            if a[i] > 0 
                @printf(" + %.3gα^%d", a[i], q);
            elseif a[i] < 0
                @printf(" - %.3gα^%d", -a[i], q);
            end
        end
    end
end

function println_ext(a::Ban)

    print_ext(a);
    println("");
end

function print_latex(a::Ban; precision::Integer=16, digits::Integer=2)
	f = "{1:s} {2:.$(digits)e} {3:s}";
    if a == 0
        print("0");
    else
        deg = degree(a);
        vect = a.num
        printfmt("{1:.$(digits)f} {2:s}", round(vect[1], digits=precision), "\\alpha^{$deg}");
        for n in vect[2:end]
            deg -= 1;
            if n > 0
                printfmt(f, " +", round(n, digits=precision), "\\alpha^{$deg}");
            elseif n < 0
                printfmt(f, " -", -round(n, digits=precision), "\\alpha^{$deg}");
            end
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
function _sum(a::Ban, b::Ban)

    # Sum with zero (in order to avoid precision loss)
    a == 0 && return Ban(b);
    b == 0 && return Ban(a);

    diff_p = a.p - b.p;
    
    # Assume a.p >= b.p, if not call again the function with the arguments reverted
    diff_p < 0 && return _sum(b, a);
    
    # If the numbers are too different the precision is not enough to compute the sum
    diff_p >= SIZE && return Ban(a);
    
    c = Ban(b);
    c.p = a.p;
    
    # Shift right the components
    if diff_p > 0
        c[diff_p+1:SIZE] = c[1:SIZE-diff_p];
        c[1:diff_p] = zeros(Float64, diff_p);
    end
    
    # Compute the sum
    c.num += a.num;
    
    if diff_p == 0 && c[1] == 0
        all(x->x==0, c.num[2:end]) && (c.p=0; true;) && return c;
        
        _to_normal_form!(c);
    end
    
    return c;
end

# Multiplication of two Bans
function _mul(a::Ban, b::Ban)

    c = zero(a);
    
    # Introduced to guarantee the normal form Bans
    (a == 0 || b == 0) && return c;

    c.p = a.p + b.p;
    
    for i = 1:SIZE
        for j = 1:SIZE-i+1
            c[i+j-1] += a[i] * b[j];
        end
    end
    
	# Added to guarantee normal form, otherwise: (1e-170*α)*(1e-170*α) = α^2(0+0...)
	if c[1] == 0
        all(x->x==0, c.num[2:end]) && (c.p = 0; return c;)
        _to_normal_form!(c);
    end
	
    return c;
end

# Division of two Bans (Assumed SIZE >= 1)
function _div(a::Ban, b::Ban)
    
    # Check validity of operation
    a == 0 && return ifelse(b == 0, NaN, Ban(0,zeros(SIZE),false))
    b == 0 && return ifelse(a<0, -Inf, Inf)
    
    c = Ban(a);
    c.p -= b.p;
    
    # Notice _b not in normal form to avoid overflow
    _b, normalizer = _generate_eps_(b);
    
    eps = Ban(0, (_mul_(_b, a)).num, false);
    
    c.num += eps.num; 
    for i = 2:SIZE
        eps = _mul_(eps, _b);
        c.num += eps.num
    end

	c /= normalizer;

	if(c.num == 0)
		all(x->x==0, c.num[2:end]) && (c.p = 0; return c;)
        _to_normal_form!(c);
	end
    
    return c # if the scalar division is deleted this must be changed into c.num ./= normalizer; return c; (otherwise loop happens)
end

function _pow(a::Ban, p::Integer)

	if a == 0
		p > 0 && return zero(Ban)
		p < 0 && return Inf
		return one(Ban)
	end

	a == 1 && return one(Ban)
	
	p < 0 && (a=1/a; p=-p; true)

	tmp = _pow_fast_(a, p÷2)	
	p&1 == 1 && return a*tmp*tmp
	
	return tmp*tmp
	
end

function _isless(a::Ban, b::Ban)

	a_inf = isinf(a);
	b_inf = isinf(b);
	
	if a_inf 
		idx = findfirst(x->abs(x)==Inf, a.num);
		if b_inf
			@warn "comparison between overflowed numbers happend";
			idx_b = findfirst(x->abs(x)==Inf, b.num);
			return a[idx] < b[idx_b]
		end
		a[idx]>0 && return false
		return true
	end
	
	if b_inf
		idx = findfirst(x->abs(x)==Inf, b.num);
		b[idx]<0 && return false
		return true
	end
	
    a.p < b.p && return ifelse(b[1] > 0 || b[1] == 0 && a[1] < 0, true, false)
    a.p > b.p && return ifelse(a[1] < 0 || a[1] == 0 && b[1] > 0, true, false)
    
    for i=1:SIZE
        a[i] < b[i] && return true
        a[i] > b[i] && return false
    end
    
    return false
end

function _sqrt(a::Ban)

    a < 0 && error("Sqrt of negative number")
    a.p % 2 != 0 && throw(ArgumentError("Sqrt of BAN with odd reference power"))
    (a == 0 || a == 1) && return copy(a)
    
    _a = Ban(convert(Int64, floor(a.p/2)), [one(Int64);zeros(Int64,SIZE-1)], false); 
    
    # Notice: eps and _eps are not in normal form to avoid overflow and to speed up the computation
    eps, normalizer = _generate_eps_(a);
    eps.num *= -1;
    _eps = Ban(eps);

    _a.num += 0.5.*eps.num;
    
    fact_i = 1; # factorial(i), kept to speed up the computation
    
    for i=2:SIZE-1
        fact_i *= i;
        coef = (-1)^i*factorial(i<<1)/((1-(i<<1))*(fact_i)^2<<(i<<1));
        eps = _mul_(eps, _eps);
        _a.num += coef.*eps.num;
    end
    
    return _a*sqrt(normalizer)  
end

function _zeros(n::Int, m::Int)

    (m < 0 || n < 0) && error("Negative matrix dimensions not allowed")
    
    A = Matrix{Ban}(undef, n, m);
    
    if m > 0 && n > 0
        for i = 1:m*n
            A[i] = zero(Ban)
        end
    end
    
    return A
end

function _zeros(n::Int)

    n <= 0 && error("Non-positive vector dimensions not allowed")
    
    a = Array{Ban,1}(undef, n);
    
    if n > 0
        for i = 1:n
            a[i] = zero(Ban)
        end
    end
    
    return a
end

function _ones(n::Int, m::Int)

    (m <= 0 || n <= 0) && error("Non-positive matrix dimensions not allowed")
    
    A = Matrix{Ban}(undef, n, m);
    
    if m > 0 && n > 0
        for i = 1:m*n
            A[i] = one(Ban)
        end
    end
    
    return A
end

function _ones(n::Int)

    n <= 0 && error("Non-positive vector dimensions not allowed")
    
    a = Array{Ban,1}(undef, n);
    
    if n > 0
        for i = 1:n
            a[i] = one(Ban)
        end
    end
    
    return a
end


###############################
#  BEGIN EXTERNAL OPERATIONS  #
###############################

function standard_part(a::Ban)

	a.p > 0 && return Inf*a.num[1]
	a.p < 0 && return 0
	return a.num[1]
end

# Given a Ban, it returns some of the infinitesimal componets
function retrieve_infinitesimals(a::Ban, degree::Integer)

	a == 0 && return zero(Ban)
	a.p <= degree && return copy(a)
	(SIZE-a.p+degree <= 0 || all(x->x==0, a.num[a.p-degree+1:end])) && return zero(Ban)
	
	res = Ban(degree, [a.num[a.p-degree+1:end]; zeros(a.p-degree)], false)
	res[1] == 0 && (_to_normal_form!(res); true)
	
	return res
end

function retrieve_infinitesimals(a::Real, degree::Integer)
	degree < 0 && return 0
	return a
end

function retrieve_infinitesimals(A::AbstractArray{Ban}, degree::Integer)

	s = size(A);
	B = Array{Ban}(undef,s);
	for i in eachindex(A)
		B[i] = retrieve_infinitesimals(A[i], degree);
	end

	return B
end

function component_wise_division(a::Ban, b::Ban)

	a.p != b.p && throw(ArgumentError("Bans must have the same degree"));

	return Ban(a.p, a.num./b.num, false)
end

function denoise(a::Ban, tol::Real)
    
    b = copy(a);
    b.num[findall(x->abs(x)<=tol, b.num)] .= 0;
    
    if b[1] == 0
        all(x->x==0, b.num[2:end]) && (b.p = 0; return b;)
        _to_normal_form!(b);
    end
    
    return b
end

function denoise(a::AbstractVector{Ban}, tol::Real)

	b = copy(a);
	for i in eachindex(b)
		b[i] = denoise(b[i], tol);
	end
	
	return b
end

function denoise(a::AbstractMatrix{Ban}, tol::Real)

	b = copy(a);
	for i in eachindex(b)
		b[i] = denoise(b[i], tol);
	end
	
	return b
end


#############################
#  BEGIN UTILITY FUNCTIONS  #
#############################

# Pow algorithm without control operations
function _pow_fast_(a::Ban, p::Integer)

	p == 0 && return 1

	tmp = _pow_fast_(a, p÷2)	
	p&1 == 1 && return a*tmp*tmp
	
	return tmp*tmp
	
end

# Multiplication of two Bans without checking the normal form (needed in _div) and _sqrt
function _mul_(a::Ban, b::Ban)

    c = zero(a);
    
    # Introduced to guarantee the normal form Bans
    (a == 0 || b == 0) && return c;

    c.p = a.p + b.p;
    
    for i = 1:SIZE
        for j = 1:SIZE-i+1
            c[i+j-1] += a[i] * b[j];
        end
    end
	
    return c;
end

# Compute the eps needed for division or sqrt
function _generate_eps_(a::Ban)

    eps = Ban(a);
    eps.p = 0; # for overflow avoidance
    normalizer = eps[1];
    eps.num ./= -normalizer;
    
    #Notice: eps no more in normal form
    eps[1] = 0;
    
    return eps, normalizer
end

# Bring a Ban to normal form (Notice: Ban.num != zeros is assumed)
function _to_normal_form!(a::Ban)

    # We suppose a is not in normal form and
    # a.num != zeros(SIZE)
    shift = 0;
    while a[shift+1] == 0
        a.p -= 1;
        shift += 1;
    end
    
    # We have surely shift < SIZE
    a.num[1:SIZE-shift] = a.num[shift+1:SIZE];        
    a.num[SIZE-shift+1:SIZE] = zeros(Float64, shift);
    
    return nothing
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

# function introuced for benci's bomb
function isoverflow(a::Ban)

    b = copy(a);
    idx = findfirst(x->isinf(x), b.num);
    if idx != nothing
        if idx == 1
            b.p += sign(b[1]);
            b.num = [ifelse(sign(b[1]) == 1, 0.1, 1e3); zeros(SIZE-1)];
        else
            b[idx-1] += 0.2*sign(b[idx]);
            b.num[idx:end] .= 0;
        end       
    end
    
    return b;
end

# function introuced for benci's bomb
function isoverflow!(a::Ban)

    idx = findfirst(x->isinf(x), a.num);
    if idx != nothing
        if idx == 1
            a.p += sign(b[1]);
            a.num = [ifelse(sign(b[1]) == 1, 0.1, 1e3); zeros(SIZE-1)];
        else
            a[idx-1] += 0.5*sign(a[idx]);
            a.num[idx:end] .= 0;
        end       
    end
    
    return a;
end

# function introuced for benci's bomb
function isoverflow(a::Array{Ban}) 

    b = copy(a);
    for i in eachindex(a)
        b[i] = isoverflow(a[i]);
    end
    
    return b
end

# function introuced for benci's bomb
function isoverflow!(a::Array{Ban}) 

    for i in eachindex(a)
        a[i] = isoverflow(a[i]);
    end
end

###################################

###################
#    BEGIN BASE   #
###################

principal(a::Ban) = (tmp = zeros(SIZE); tmp[1] = a.num[1]; Ban(a.p, tmp, false))
principal(a::Real) = one(Ban)*a
magnitude(a::Ban) = (tmp = zeros(SIZE); tmp[1] = 1; Ban(a.p, tmp, false))
magnitude(a::Real) = one(Ban)
degree(a::Ban) = a.p
degree(a::Real) = 0
min_degree(a::Ban) = (a==0) ? 0 : a.p-findlast(x->x!=0, a.num)+1
min_degree(a::Real) = 0

Base.show(io::IO, a::Ban) = _show(io, a)
Base.write(io::IO, a::Ban) = _write(io, a)
#Base.write(io::IO, A::AbstractArray{T}) where T<:AbstractAlgNum = for i in eachindex(A) write(io, A[i]); end (Not called because Ban is non-isbits)
Base.read(io::IO, ::Type{T}) where T<:AbstractAlgNum = _read(io, T)

Base.getindex(a::Ban, i::Int) = a.num[i]
Base.getindex(a::Ban, v::AbstractArray{T}) where T<:Int = a.num[v]
Base.getindex(a::Ban, u::UnitRange{T}) where T<:Int = a.num[u]
Base.setindex!(a::Ban, v::T, i::Int) where T<:Real = (a.num[i] = v)
Base.setindex!(a::Ban, v::AbstractArray{T}, i::AbstractVector{Int}) where T<:Real = (a.num[i] = v)

Base.copy(a::Ban) = Ban(a.p, copy(a.num))
Base.deepcopy(a::Ban) = copy(a)
Base.convert(::Type{Ban}, a::T) where T <: Real = (tmp = zeros(SIZE); tmp[1] = a; Ban(0, tmp)) # No a*one(Ban) because undefined behaviour if a is Inf
Base.promote_rule(::Type{Ban}, ::Type{T}) where T <: Real = Ban
# Never uncomment
#Base.float(a::Ban) = (a.p == 0) ? convert(Float64, a[1]) : ((a.p > 0) ? Inf : zero(Float64))
#Base.Float64(a::Ban) = (a.p == 0) ? convert(Float64, a[1]) : ((a.p > 0) ? Inf : zero(Float64))
#Base.Int64(a::Ban) = (a.p == 0) ? convert(Int64, a[1]) : ((a.p > 0) ? Inf : zero(Int64))
#Base.real(a::Ban) = (a.p == 0) ? a[1] : ((a.p > 0) ? Inf : zero(a[1]))

Base.copysign(a::Ban, b::Ban) = ifelse(signbit(a.num[1])!=signbit(b.num[1]), -a, +a)
# Maintained to speed up performances
Base.copysign(a::Ban, b::Real) = ifelse(signbit(a.num[1])!=signbit(b), -a, +a)
Base.copysign(a::Real, b::Ban) = copysign(b,a)

Base.zero(a::Ban) = Ban(0, zeros(SIZE), false)
Base.zero(::Type{Ban}) = Ban(0, zeros(SIZE), false)
Base.zeros(::Type{Ban}, n::Int) = _zeros(n)
Base.zeros(::Type{Ban}, n::Int, m::Int) = _zeros(n,m)
Base.one(a::Ban) = (tmp = zeros(SIZE); tmp[1] = 1; Ban(0, tmp, false))
Base.one(::Type{Ban}) = (tmp = zeros(SIZE); tmp[1] = 1; Ban(0, tmp, false))
Base.ones(::Type{Ban}, n::Int) = _ones(n)
Base.ones(::Type{Ban}, n::Int, m::Int) = _ones(n,m)

Base.round(a::Ban; digits::Integer = 0) = (b = copy(a); for i=1:SIZE b[i] = round(b[i], digits = digits) end; return b)
Base.round(A::AbstractMatrix{T}; digits::Integer=0) where T<:AbstractAlgNum =(B = copy(A); for i in eachindex(B) B[i] = round(B[i], digits=digits) end; return B)

Base.inv(a::Ban) = 1/a
Base.abs(a::Ban) = (a[1] >= 0) ? copy(a) : -copy(a)
Base.abs2(a::Ban) = a*a
Base.sqrt(a::Ban) = _sqrt(a)

Base.isless(a::Ban, b::Ban) = _isless(a, b)
Base.isless(a::Ban, b::T) where T <: Real = _isless(a, convert(Ban,b))
Base.isless(a::T, b::Ban) where T <: Real = _isless(convert(Ban,a),b)

Base.isnan(a::Ban) = ifelse(isnan(a.p) | any(x->isnan(x), a.num), true, false)
Base.isinf(a::Ban) = ifelse(isinf(a.p) | any(x->isinf(x), a.num), true, false) # must be intended in a standard sense
Base.isfinite(a::Ban) = ifelse(isfinite(a.p) | all(x->isfinite(x), a.num), true, false) # must be intended in a standard sense

Base.conj(a::Ban) = a
Base.sign(a::Ban) = (a[1] == 0) ? 0 : sign(a[1])

Base.:(+)(a::Ban, b::Ban) = _sum(a,b)
Base.:(-)(a::Ban) = a*-1
Base.:(-)(a::Ban, b::Ban) = _sum(a,-b)
Base.:(*)(a::Ban, b::Ban) = _mul(a,b)
Base.:(/)(a::Ban, b::Ban) = _div(a,b)
Base.:(^)(a::Ban, p::Integer) = _pow(a, p)

Base.:(<<)(a::Ban, b::Int) = Ban(a.p, a.num.<<b, false) # previous behaviour (a == 0) ? Ban(a) : Ban(a.p+=b, a.num, false)
Base.:(>>)(a::Ban, b::Int) = Ban(a.p, a.num.>>b, false) # previous behaviour (a == 0) ? Ban(a) : Ban(a.p-=b, a.num, false)
Base.:(==)(a::Ban, b::Ban) = (a.p == b.p && a.num == b.num)

Base.nextfloat(a::Ban, n::Integer=1) = nextban(a, n)
Base.prevfloat(a::Ban, n::Integer=1) = prevban(a, n)

# Maintained to speed the computations up
function _mul(a::Ban, b::T) where T <: Real
	if(b==0)
		return zero(Ban);
	end
	res = Ban(a.p, a.num.*b, false);
	if(res.num[1] == 0)
		all(x->x==0, res.num[2:end]) && (res.p = 0; return res;)
        _to_normal_form!(res);
	end
	return res
end

Base.:(*)(a::Ban, b::T) where T <: Real = _mul(a, b)
Base.:(*)(a::T, b::Ban) where T <: Real = b*a
Base.:(/)(a::Ban, b::T) where T <: Real = a*(1/b)

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

    num = Array{Float64, 1}(undef, SIZE);
    Random.reserve(r, SIZE);
    for i in eachindex(num)
        num[i] = Random.rand_inbounds(r, sp[])-1;
    end
    
    num = num.*[1;rand([-1,1],SIZE-1)];
    
    a = Ban(0, num, false);
    a[1] == 0 && any(x->x!=0, a[2:SIZE]) && _to_normal_form!(a)
    
    return (a<0) ? -a : a;
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

LinearAlgebra.generic_lufact!(A::StridedMatrix{T}, pivot::LinearAlgebra.Val{Pivot}=LinearAlgebra.Val(true); check::Bool = true) where {T<:AbstractAlgNum, Pivot} = _generic_lufact!(A, pivot; check=check)
function _generic_lufact!(A::StridedMatrix{T}, ::LinearAlgebra.Val{Pivot}=LinearAlgebra.Val(true); check::Bool = true) where {T<:AbstractAlgNum, Pivot}
	#println("custom lu")
	#println("")
    m, n = size(A)
    minmn = min(m,n)
    info = 0
    ipiv = Vector{LinearAlgebra.BlasInt}(undef, minmn)
    @inbounds begin
        for k = 1:minmn
            # find index max
            kp = k
            if Pivot && k < m
                amax = abs(A[k, k]) # abs(A[k, k].num[1])
                for i = k+1:m
                    absi = abs(A[i,k]) # abs(A[i,k].num[1])
                    if absi > amax
                        kp = i
                        amax = absi
                    end
                end
            end
            ipiv[k] = kp
            if !iszero(A[kp,k])
                if k != kp
                    # Interchange
                    for i = 1:n
                        tmp = A[k,i]
                        A[k,i] = A[kp,i]
                        A[kp,i] = tmp
                    end
                end
                # Scale first column
                Akkinv = inv(A[k,k])
                for i = k+1:m
                    A[i,k] *= Akkinv
					A[i,k] = denoise(A[i,k], 1e-8)
                end
            elseif info == 0
                info = k
            end
            # Update the rest
            for j = k+1:n
                for i = k+1:m
                    A[i,j] -= A[i,k]*A[k,j]
					A[i,j] = denoise(A[i,j], 1e-8)
                end
            end
        end
    end
    check && LinearAlgebra.checknonsingular(info, LinearAlgebra.Val{Pivot}())
    return LinearAlgebra.LU{T,typeof(A)}(A, ipiv, convert(LinearAlgebra.BlasInt, info))
end


#Generalize to the case of Union{AbstractAlgNum, Real}
LinearAlgebra.naivesub!(A::UpperTriangular{T}, b::AbstractVector{T}, x::AbstractVector{T} = b) where T<:AbstractAlgNum = _naivesub!(A, b, x)
function _naivesub!(A::UpperTriangular, b::AbstractVector, x::AbstractVector = b)
    Base.require_one_based_indexing(A, b, x)
    n = size(A, 2)
    if !(n == length(b) == length(x))
        throw(DimensionMismatch("second dimension of left hand side A, $n, length of output x, $(length(x)), and length of right hand side b, $(length(b)), must be equal"))
    end
    @inbounds for j in n:-1:1
        iszero(A.data[j,j]) && throw(SingularException(j))
        xj = x[j] = denoise(A.data[j,j] \ b[j], 1e-8)
        for i in j-1:-1:1 # counterintuitively 1:j-1 performs slightly better
            b[i] = denoise(b[i] - A.data[i,j] * xj, 1e-8)
        end
    end
    x
end

LinearAlgebra.naivesub!(A::UnitUpperTriangular{T}, b::AbstractVector{T}, x::AbstractVector{T} = b) where T<:AbstractAlgNum = _naivesub!(A, b, x)
function _naivesub!(A::UnitUpperTriangular, b::AbstractVector, x::AbstractVector = b)
    Base.require_one_based_indexing(A, b, x)
    n = size(A, 2)
    if !(n == length(b) == length(x))
        throw(DimensionMismatch("second dimension of left hand side A, $n, length of output x, $(length(x)), and length of right hand side b, $(length(b)), must be equal"))
    end
    @inbounds for j in n:-1:1
        xj = x[j] = b[j]
        for i in j-1:-1:1 # counterintuitively 1:j-1 performs slightly better
            b[i] = denoise(b[i] - A.data[i,j] * xj, 1e-8)
        end
    end
    x
end

LinearAlgebra.naivesub!(A::LowerTriangular{T}, b::AbstractVector{T}, x::AbstractVector{T} = b) where T<:AbstractAlgNum = _naivesub!(A, b, x)
function _naivesub!(A::LowerTriangular, b::AbstractVector, x::AbstractVector = b)
    Base.require_one_based_indexing(A, b, x)
    n = size(A, 2)
    if !(n == length(b) == length(x))
        throw(DimensionMismatch("second dimension of left hand side A, $n, length of output x, $(length(x)), and length of right hand side b, $(length(b)), must be equal"))
    end
    @inbounds for j in 1:n
        iszero(A.data[j,j]) && throw(SingularException(j))
        xj = x[j] = denoise(A.data[j,j] \ b[j], 1e-8)
        for i in j+1:n
            b[i] = denoise(b[i] - A.data[i,j] * xj, 1e-8)
        end
    end
    x
end

LinearAlgebra.naivesub!(A::UnitLowerTriangular{T}, b::AbstractVector{T}, x::AbstractVector{T} = b) where T<:AbstractAlgNum = _naivesub!(A, b, x)
function _naivesub!(A::UnitLowerTriangular, b::AbstractVector, x::AbstractVector = b)
    Base.require_one_based_indexing(A, b, x)
    n = size(A, 2)
    if !(n == length(b) == length(x))
        throw(DimensionMismatch("second dimension of left hand side A, $n, length of output x, $(length(x)), and length of right hand side b, $(length(b)), must be equal"))
    end
    @inbounds for j in 1:n
        xj = x[j] = b[j]
        for i in j+1:n
            b[i] = denoise(b[i] - A.data[i,j] * xj, 1e-8)
        end
    end
    x
end

end


# TODO
#
# NA-IPM: rename solve_standardqp into solve_qp
#
# NA-IPM: after changing level of optimization, some "finite" noisy residuals in "dual rho" appears, their magnitude is e-8 in general. Understand why and fix it
#
# NA-IPM: lufact and naivesub allow convergence only in floorplanning wasting the one of pyramid. Problems with factorizations or spurious gradients?
#
# NA-IPM: It seems that some entries (really??) of s and x become zero before time. Problems with Cholesky
#
# Avoid infinitesimal gradients at the wrong level in NA-IPM setting it to 0 or to a small value (e.g., solve_standardqp applied to 2° order pyramid)
#
# NA-IPM continues to have issues due to residuals of different magnitudes (e.g., linear kyte with linear=true usng solve_standardqp.jl)
#
# Rendere BanFactor compliant con le fattorizzazioni di julia
#
# Improve use of starting point (with magnitudes) in NA-IPM ?
#
# Implement presolve routine for NA-IPM and manage the split variables issue (or use the idea in Wright 229-230)
#
# Solve NA-IPM instabilities due to some variables which go to zero "too early" (level change at infinite rhos not detected)
#
# Cholesky factorization denoised
#
# Ban-customized generic_lufact! uses a constant denoise tolerance 1e-8. Let the user set it
#
# Substitute principal() with leading_term()
#
# Speed up using @inline
#
# Debug print_latex which does not show values of magnitude 10^-4
#
# Implement Bans as isbitstype in order to guarantee that arrays and matrices are stored continuously in memory
#
# Implement Bans as non-mutable
#
# NA-Simplex primary: use the correct check for the tolerances and verify effectiveness in NA-LP
#
# Revert NA-IPM to the sparse version
#
# Implement cholesky factorization for sparse matrices
#
# Merge denoise for Vectors and Matrices, and extend them to the case of N dimensions
#
# BanPlot -> set same y-axes interval for the plots that share the same y-magnitude
#
# Introduce the types BanInt64, BanFloat64 etc...
#
# Implement Packages for BanRandom and BanLinearAlgebra
#
# Speedup computations with @inbounds
#
# I-Big-M: back to original order of x
#
# I-Big-M: scaling down objectives coefficients in order to have all of them at most finite
#
# Improved speed on vector computations using view()
# 
# Speed up isnan with a unique codific
#
# Allow one to give an input array smaller than SIZE and fill the remaining with zeros
#
# Computational burden of _sum can be improved with c = Ban(a)
#
# Probably in _mul_ the check for zero is redundant (at least if it is used only by _div)
#
# Reimplement sqrt using hard-coded coefficients
#
# Speed-up deleting epsilon generation and unrolling loops
