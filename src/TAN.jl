__precompile__()
module TAN


export Tan

##########################
#    BEGIN DEFINITIONS   #
##########################

abstract type AbstractAlgNum <: Number end

# Tan dimension
const SIZE = 3;

# Tan-powers for finite numbers
const ref_powers = collect([0:-1:1-SIZE]);

# Tan declaration
mutable struct Tan <: AbstractAlgNum

    # Members
    num::Matrix{T} where T<:Real # 2xSIZE num[1,:] contains powers; num[2,:] contains coeffs # To improve memory performances, store the differences of coeffs
    
    # Constructor
    Tan(num::Matrix{T}, check::Bool) where T <: Real = new(copy(num))
    Tan(num::Matrix{T}) where T <: Real = (_constraints_satisfaction(num) && new(copy(num)))
    Tan(a::Tan) = new(copy(a.num))
    Tan(x::Bool) = one(Tan)
    Tan(x::T) where T<:Real = ifelse(isinf(x), Tan([ref_powers'; ones(1, SIZE).*x]), one(Tan)*x)
end


# Check if the Tan is in a correct form (which guarantees uniqueness of the representation)
# The constraints are:  1) lenght of SIZE; 
#                       2) the first coeff must be non-zero except for the "0"
#                       3) the "0" is represented with a Tan zero
#                       4) powers must be in increasing order
function _constraints_satisfaction(num::Matrix{T}) where T <: Real
    
    size(num, 2) != SIZE && throw(ArgumentError(string("Wrong input array dimension. Supposed ", SIZE, ", ", size(num, 2), " given.")))
    num[2,1] == 0 && num[1,:] != ref_powers && throw(ArgumentError("The first entry of the input array can be 0 only if all the other entries and the degree are nil too."))
    any(x->x>0, num[1,SIZE-1]-num[1,2:end]) && throw(ArgumentError("Tan powers must be given in increasing order"))
    return true
end

##################
#    BEGIN BASE  #
##################

function _show(io::IO, a::Tan)

    println("α^$(a.num[1,1])($(a.num[2,1])");
    @inbounds for i=2:SIZE
        if a.num[2,i] >= 0 
            print(" + $(a.num[2,i]) η^$(a.num[1,1]-a.num[1,i])");
        else
            print(" - $(-a.num[2,i]) η^$(a.num[1,1]-a.num[1,i])");
        end
    end
    print(")")
end

function print_ext(a::Tan)

    if a == 0
        print("0");
    else
        print("$(a.num[2,1]) α^{$(a.num[1,1])}");
        for i=2:SIZE
            if a.num[2,i] > 0 
                print(" + $(a.num[2,i]) α^{$(a.num[1,i])}");
            elseif a.num[2,i] < 0
                print(" - $(-a.num[2,i]) α^{$(a.num[1,i])}");
            end
        end
    end
    println("");
end

function print_latex(a::Tan)
    if a == 0
        print("0");
    else
        print("$(a.num[2,1]) \\alpha^{$(a.num[1,1])}");
        for i=2:SIZE
            if a.num[2,i] > 0
                print(" + $(a.num[2,i]) \\alpha^{$(a.num[1,1])}");
            elseif a.num[2,i] < 0
                print(" - $(-a.num[2,i]) \\alpha^{$(a.num[1,1])}");
            end
        end
    end
end

# Sum of two Tans
function _sum(a::Tan, b::Tan)

    # Sum with zero (in order to avoid precision loss)
    a == 0 && return Tan(b);
    b == 0 && return Tan(a);

    diff_p = a.num[1,1] - b.num[1,1];
    
    # Assume degree(a) >= degree(b), if not call again the function with the arguments reverted
    diff_p < 0 && return _sum(b, a);
    
    # If the numbers are too different the precision is not enough to compute the sum
    a.num[1,SIZE] > b.num[1,1] && return Tan(a);
    
    c = Tan(a);
    
    i = 1; # idx to update
    j = 1;
    # Compute the sum
    while j<=SIZE && i<= SIZE
        b.num[1,j] == c.num[1,i] && (c.num[2,i] += b.num[2,j]; continue;)
        b.num[1,j] > c.num[1,i] && (c.num[:,i+1:end] = c.num[:,i:SIZE-1]; c.num[:,i] = b.num[:,j]; j += 1;)
        i += 1;
    end
    
    if diff_p == 0 && c.num[2,1] == 0
        # the sum produced 0
        all(x->x==0, c.num[2,2:end]) && (c.num[1,:]==ref_powers; true;) && return c;
        
        _to_normal_form!(c);
    end
    
    return c;
end

# Multiplication of two Tans
function _mul(a::Tan, b::Tan)

    c = zero(a);
    
    # Introduced to guarantee the normal form Tans
    (a == 0 || b == 0) && return c;

    num = Matrix{Float64}(undef, 2, SIZE^2); # to improve with promote_type (tedious)
    
    # Compute the product in a non-normal form
    for i = 1:SIZE, j = 1:SIZE
            num[:,(i-1)*SIZE+j] = a.num[:,i].*b[:,j];
    end
    
    # reorder by powers the product
    num = num[:, sortperm(num[1,:], rev=true)]
    
    j = 1;
    for i=1:SIZE
        current_power = num[1,j];
        last_power = findlast(x->x==current_power, num[1,j:end]);
        c.num[1,i] = current_power;
        c.num[2,i] = sum(view(num, 2, j:last_power))
        j = last_power+1;
    end
    
    return c;
end

end