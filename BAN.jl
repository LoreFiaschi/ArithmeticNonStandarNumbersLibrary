__precompile__()
module BAN

export Ban

# α^p P(η) , P(0) != 0 except for the zero

# Number dimension
SIZE = 4;

# Number declaration
mutable struct Ban

    # Members
    p::Int64
    num::Array{T,1} where T <: Real
    
    # Constructor
    Ban(p::Int64,num::Array{T,1}) where T <: Real = (length(num) == SIZE) ? new(p,num) : error(string("Wrong input array dimension. Supposed ", SIZE, ", ", length(num), " given."));
end

end