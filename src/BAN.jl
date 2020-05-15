__precompile__()
module BAN

using Random, LinearAlgebra

export Ban
export print_ext, print_latex, to_vector
export degree, magnitude, principal

export norm, normInf

# α^p P(η) , P(0) != 0 except for the zero

##########################
#    BEGIN DEFINITIONS   #
##########################

abstract type AbstractAlgNum <: Number end

# Ban dimension
SIZE = 3;

# Ban declaration
mutable struct Ban <: AbstractAlgNum

    # Members
    p::Int
    num::Array{Float64,1}
    
    # Constructor
    Ban(p::Int,num::Array{T,1}, check::Bool) where T <: Real = new(p,copy(num))
    Ban(p::Int,num::Array{T,1}) where T <: Real = (_constraints_satisfaction(p,num) && new(p,copy(num)))
    Ban(a::Ban) = new(a.p,copy(a.num))
    Ban(x::Bool) = one(Ban)
end

# Check if the Ban is in a correct form (which guarantees uniqueness of the representation)
# The constraints are:  1) lenght of SIZE; 
#                       2) the first entry of the array must be non-zero except for the "0"
#                       3) the "0" is represented with a vector of zeros of degree zero
function _constraints_satisfaction(p::Int,num::Array{T,1}) where T <: Real
    
    length(num) != SIZE && error(string("Wrong input array dimension. Supposed ", SIZE, ", ", length(num), " given."))
    num[1] == 0 && p != 0 && any(x->x!=0, num[2:SIZE]) && error("The first entry of the input array can be 0 only if all the other entries and the degree are nil too.")
    return true
end

##################
#    BEGIN BASE  #
##################

function _show(io::IO, a::Ban)

    print(string("α^",a.p,"(",a.num[1]))
    for i=2:SIZE
        if a[i] >= 0 
            print(string(" + ", a[i], "η^$(i-1)"))
        else
            print(string(" - ", -a[i], "η^$(i-1)"))
        end
    end
    print(")")
end


function print_ext(a::Ban)

    if a == 0
        print("0");
    else
        q = a.p;
        print(string(a.num[1], "α^{$q}"));
        for i=2:SIZE
            q -= 1;
            if a[i] > 0 
                print(string(" + ", a[i], "α^{$q}"));
            elseif a[i] < 0
                print(string(" - ", -a[i], "α^{$q}"));
            end
        end
    end
    println("");
end

function print_latex(a::Ban)
    if a == 0
        print("0");
    else
        deg = degree(a);
        vect = to_vector(a)
        print("$(vect[1]) \\alpha^{$deg}");
        for n in vect[2:end]
            deg -= 1;
            if n > 0
                print(" + $n \\alpha^{$deg}");
            elseif n < 0
                print(" - $(-n) \\alpha^{$deg}");
            end
        end
    end
end

function print_latex(a::Array{Ban,1})

    num_elem = length(a);

    print("\\left[");
    print_latex(a[1]);
    for i = 2:num_elem
        print(",\\, ")
        print_latex(a[i]);
    end
    print("\\right]");
end

function to_vector(a::Ban)

    return copy(a.num);
end

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
    
    return c;
end

# Division of two Bans (Assumed SIZE >= 1)
function _div(a::Ban, b::Ban)
    
    # Check validity of operation
    a == 0 && b == 0 && return NaN
    b == 0 && return ifelse(a<0, -Inf, Inf)
    
    c = Ban(a);
    c.p -= b.p;
    
    # Notice _b not in normal form to avoid overflow
    _b, normalizer = _generate_eps_(b);
    
    eps = Ban(0, (_b*a).num);
    
    c.num += eps.num; 
    for i = 2:SIZE
        eps *= _b;
        c.num += eps.num
    end
    
    return c/normalizer # if the scalar division is deleted this must be changed into c.num /= normalizer; return c; (otherwise loop happens)
end

function _isless(a::Ban, b::Ban)

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
    a.p % 2 != 0 && error("Sqrt of BAN with odd reference power")
    (a == 0 || a == 1) && return copy(a)
    
    _a = one(Ban)<<convert(Int64, floor(a.p/2));
    
    # Notice: eps and _eps are not in normal form to avoid overflow and to speed up the computation
    eps, normalizer = _generate_eps_(a);
    eps.num *= -1;
    _eps = Ban(eps);

    _a.num += 0.5.*eps.num;
    
    fact_i = 1; # factorial(i), kept for speeding up the computation
    
    for i=2:SIZE-1
        fact_i *= i;
        coef = (-1)^i*factorial(i<<1)/((1-(i<<1))*(fact_i)^2<<(i<<1));
        eps *= _eps;
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

######## UTILITY FUNCTIONS #########

# Compute the eps needed for division or sqrt
function _generate_eps_(a::Ban)

    eps = Ban(a);
    eps.p = 0; # for overflow avoidance
    normalizer = eps[1];
    eps.num = -(eps.num/normalizer);
    
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

###################################

principal(a::Ban) = (tmp = zeros(SIZE); tmp[1] = a.num[1]; Ban(a.p, tmp, false))
principal(a::Real) = one(Ban)*a
magnitude(a::Ban) = (tmp = zeros(SIZE); tmp[1] = 1; Ban(a.p, tmp, false))
magnitude(a::Real) = one(Ban)
degree(a::Ban) = a.p
degree(a::Real) = 0

Base.show(io::IO, a::Ban) = _show(io, a)
Base.getindex(a::Ban, i::Int) = a.num[i]
Base.getindex(a::Ban, u::UnitRange{T}) where T<:Int = a.num[u]
Base.setindex!(a::Ban, v::T, i::Int) where T<:Real = (a.num[i] = v)
Base.setindex!(a::Ban, v::AbstractArray{T}, i::AbstractVector{Int}) where T<:Real = (a.num[i] = v)

Base.copy(a::Ban) = Ban(a.p, copy(a.num))
Base.deepcopy(a::Ban) = copy(a)
Base.convert(::Type{Ban}, a::T) where T <: Real = (tmp = zeros(SIZE); tmp[1] = a; Ban(0, tmp)) # No a*one(Ban) because undefined behaviour if a is Inf
Base.promote_rule(::Type{Ban}, ::Type{T}) where T <: Real = Ban
Base.float(a::Ban) = (a.p == 0) ? convert(Float64, a[1]) : ((a.p > 0) ? Inf : zero(Float64))
Base.real(a::Ban) = (a.p == 0) ? a[1] : ((a.p > 0) ? Inf : zero(a[1]))

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

Base.inv(a::Ban) = 1/a
Base.abs(a::Ban) = (a[1] >= 0) ? copy(a) : -copy(a)
Base.abs2(a::Ban) = a*a
Base.sqrt(a::Ban) = _sqrt(a)

Base.isless(a::Ban, b::Ban) = _isless(a, b)
Base.isless(a::Ban, b::T) where T <: Real = _isless(a, convert(Ban,b))
Base.isless(a::T, b::Ban) where T <: Real = _isless(convert(Ban,a),b)

Base.isnan(a::Ban) = ifelse(any(x->isnan(x), a.num), true, false)
Base.isinf(a::Ban) = ifelse(isinf(a.p) | any(x->isinf(x), a.num), true, false) # must be intended in a standard sense
Base.isinf(a::Ban) = ifelse(isfinite(a.p) | all(x->isfinite(x), a.num), true, false) # must be intended in a standard sense

Base.conj(a::Ban) = a
Base.sign(a::Ban) = (a[1] == 0) ? 0 : sign(a[1])

Base.:(+)(a::Ban, b::Ban) = _sum(a,b)
Base.:(-)(a::Ban) = a*-1
Base.:(-)(a::Ban, b::Ban) = _sum(a,-b)
Base.:(*)(a::Ban, b::Ban) = _mul(a,b)
Base.:(/)(a::Ban, b::Ban) = _div(a,b)

Base.:(<<)(a::Ban, b::Int) = (a == 0) ? Ban(a) : Ban(a.p+=b, a.num, false)
Base.:(>>)(a::Ban, b::Int) = (a == 0) ? Ban(a) : Ban(a.p-=b, a.num, false)
Base.:(==)(a::Ban, b::Ban) = (a.p == b.p && a.num == b.num)

# Maintained to speed up the computations
Base.:(*)(a::Ban, b::T) where T <: Real = Ban(a.p, a.num.*b, false)
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

function _generic_normInf(A::AbstractArray{T}) where T <: Ban
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

LinearAlgebra.normInf(A::AbstractArray{T}) where T <: Ban = _generic_normInf(A)
LinearAlgebra.norm(a::Ban) = abs(a)

end

# TODO
#
# Generate Packages for BanRandom and BanLinearAlgebra
#
# Check what happens doing Ban + Nan and Ban + Inf
#
# Speedup computations with @inbounds
#
# I-Big-M: back to original order of x
#
# Generalize NA-Simplex and I-Big-M to cases involving both Real and AbstractAlgNum
#
# Improved speed on vector computations using view()
#
# << -> *2 and introduce the constant \alpha
#
# Check why in simplex gives non-normal objective functions and solutions
# 
# Speed up isnan with a unique codific
#
# Let to give an input array smaller than SIZE and fill the remaining with zeros
#
# Remove non-normal form Ban allocation