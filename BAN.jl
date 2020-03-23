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
    Ban(p::Int64,num::Array{T,1}) where T <: Real = (length(num) == SIZE) ? new(p,copy(num)) : error(string("Wrong input array dimension. Supposed ", SIZE, ", ", length(num), " given."));
    Ban(a::Ban) = new(a.p,copy(a.num))
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

function _scalar_mul(a::Ban, b::T) where T <: Real

    c = Ban(a);
    c.num *= b;
    return c;
end

principal(a::Ban) = (tmp = zeros(length(a.num)); tmp[1] = a.num[1]; Ban(a.p, tmp))
magnitude(a::Ban) = (tmp = zeros(length(a.num)); tmp[1] = 1; Ban(a.p, tmp))
degree(a::Ban) = a.p

Base.getindex(a::Ban, i::Int64) = a.num[i]
Base.setindex!(a::Ban, v::T, i::Int64) where T<:Real = (a.num[i] = v)

Base.copy(a::Ban) = Ban(a.p, copy(a.num))
Base.convert(::Type{Ban}, a::T) where T <: Real = a*one(Ban)
Base.promote_rule(::Type{Ban}, ::Type{T}) where T <: Real = Ban

Base.zero(a::Ban) = Ban(0, zeros(length(a.num)))
Base.zero(::Type{Ban}) = Ban(0, zeros(SIZE))
Base.one(a::Ban) = (tmp = zeros(length(a.num)); tmp[1] = 1; Ban(0, tmp))
Base.one(::Type{Ban}) = (tmp = zeros(SIZE); tmp[1] = 1; Ban(0, tmp))

Base.:(+)(a::Ban, b::Ban) = _sum(a,b)
Base.:(-)(a::Ban) = _scalar_mul(a,-1)
Base.:(-)(a::Ban, b::Ban) = _sum(a,-b)
Base.:(*)(a::Ban, b::T) where T <: Real = _scalar_mul(a,b)
Base.:(*)(a::T, b::Ban) where T <: Real = _scalar_mul(b,a)

end

# TODO
#
# Mul
# Div
# Pow
# modification of the SIZE value