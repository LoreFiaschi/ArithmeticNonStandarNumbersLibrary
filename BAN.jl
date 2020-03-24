__precompile__()
module BAN

export Ban
export degree, magnitude, principal

# α^p P(η) , P(0) != 0 except for the zero

# Number dimension
SIZE = 4;

# Number declaration
mutable struct Ban <: Number

    # Members
    p::Int64
    num::Array{Float64,1}
    
    # Constructor
    Ban(p::Int64,num::Array{T,1}) where T <: Real = (_constraints_satisfaction(p,num) && new(p,copy(num)))
    Ban(a::Ban) = new(a.p,copy(a.num))
    Ban(x::Bool) = one(Ban)
end

# Check if the Ban is in a correct form (which guarantees uniqueness of the representation)
# The constraints are:  1) lenght of SIZE; 
#                       2) the first entry of the array must be non-zero except for the "0"
#                       3) the "0" is represented with a vector of zero of degree zero
function _constraints_satisfaction(p::Int64,num::Array{T,1}) where T <: Real
    
    length(num) != SIZE && error(string("Wrong input array dimension. Supposed ", SIZE, ", ", length(num), " given."))
    num[1] == 0 && p != 0 && any(x->x!=0, num[2:SIZE]) && error("The first entry of the input array can be 0 only if all the other entries and the degree are nil too.")
    return true
end

function _show(io::IO, a::Ban)

    print(string("α^",a.p,"(",a.num[1]))
    for i=2:SIZE
        if a[i] >= 0 
            print(string(" + ", a[i], "η^", i-1))
        else
            print(string(" - ", -a[i], "η^", i-1))
        end
    end
    print(")")
end

# Sum of two Bans
function _sum(a::Ban, b::Ban)

    diff_p = a.p - b.p;
    
    # Assume a.p >= b.p, if not call again the function with the arguments reverted
    diff_p < 0 && return _sum(b, a);
    
    # If the numbers are too different the precision is not enough to compute the sum
    diff_p >= SIZE && return Ban(a);
    
    c = Ban(b);
    c.p = a.p;
    
    # Shift right the components
    for i = SIZE:-1:diff_p+1
        c[i] = c[i-diff_p];
    end
    
    # Set to zero the highest components
    for i = diff_p:-1:1
        c[i] = 0;
    end
    
    # Compute the sum
    c.num += a.num;
    
    return c;
end

# Multiplication of two Bans
function _mul(a::Ban, b::Ban)

    c = zero(a);
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
    a == 0 && b == 0 && error("Undef behavior: 0/0")
    b == 0 && error("Division by zero")
    
    c = Ban(a);
    c.p -= b.p;
    
    _b = Ban(b);
    _b.p = 0; # for overflow avoidance
    normalizer = _b[1];
    _b.num = -(_b.num/normalizer);
    _b += 1;
    
    eps = Ban(_b);
    
    c.num += (eps*a).num; 
    for i = 2:SIZE
        eps *= _b;
        c.num += (eps*a).num
    end
    
    return c/normalizer # if the scalar division is deleted this must be changed into c.num /= normalizer; return c; (otherwise loop happens)
end

function _scalar_mul(a::Ban, b::T) where T <: Real

    c = Ban(a);
    c.num *= b;
    return c;
end

function _isless(a::Ban, b::Ban)

    a.p < b.p && (b[1] > 0 || b[1] == 0 && a[1] < 0) && return true
    a.p > b.p && (a[1] < 0 || a[1] == 0 && b[1] > 0) && return true
    
    for i=1:SIZE
        a[i] < b[i] && return true
        a[i] > b[i] && return false
    end
    
    return false
end

principal(a::Ban) = (tmp = zeros(length(a.num)); tmp[1] = a.num[1]; Ban(a.p, tmp))
magnitude(a::Ban) = (tmp = zeros(length(a.num)); tmp[1] = 1; Ban(a.p, tmp))
degree(a::Ban) = a.p

Base.show(io::IO, a::Ban) = _show(io, a)
Base.getindex(a::Ban, i::Int64) = a.num[i]
Base.setindex!(a::Ban, v::T, i::Int64) where T<:Real = (a.num[i] = v)

Base.copy(a::Ban) = Ban(a.p, copy(a.num))
Base.deepcopy(a::Ban) = copy(a)
Base.convert(::Type{Ban}, a::T) where T <: Real = a*one(Ban)
Base.promote_rule(::Type{Ban}, ::Type{T}) where T <: Real = Ban

Base.zero(a::Ban) = Ban(0, zeros(length(a.num)))
Base.zero(::Type{Ban}) = Ban(0, zeros(SIZE))
Base.one(a::Ban) = (tmp = zeros(length(a.num)); tmp[1] = 1; Ban(0, tmp))
Base.one(::Type{Ban}) = (tmp = zeros(SIZE); tmp[1] = 1; Ban(0, tmp))

Base.inv(a::Ban) = 1/a
Base.abs(a::Ban) = (a[1] >= 0) ? copy(a) : -copy(a)
Base.isless(a::Ban, b::Ban) = _isless(a, b)

Base.conj(a::Ban) = a
Base.sign(a::Ban) = (a[1] == 0) ? 0 : sign(a[1])

Base.:(+)(a::Ban, b::Ban) = _sum(a,b)
Base.:(-)(a::Ban) = _scalar_mul(a,-1)
Base.:(-)(a::Ban, b::Ban) = _sum(a,-b)
Base.:(*)(a::Ban, b::Ban) = _mul(a,b)
Base.:(/)(a::Ban, b::Ban) = _div(a,b)

Base.:(<<)(a::Ban, b::Int64) = Ban(a.p+=b, a.num)
Base.:(>>)(a::Ban, b::Int64) = Ban(a.p-=b, a.num)
Base.:(==)(a::Ban, b::Ban) = (a.p == b.p && a.num == b.num)

# Maintained to speed up the computations
Base.:(*)(a::Ban, b::T) where T <: Real = _scalar_mul(a,b)
Base.:(*)(a::T, b::Ban) where T <: Real = _scalar_mul(b,a)
Base.:(/)(a::Ban, b::T) where T <: Real = _scalar_mul(a,1/b)

end

# TODO
#
# 
#
#
# Let to give an input array smaller than SIZE and fill the remaining with zeros
