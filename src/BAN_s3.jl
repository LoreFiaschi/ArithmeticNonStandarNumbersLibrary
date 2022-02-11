__precompile__()
module BAN

# Library for HPC fixing SIZE = 3
# Next step: use only Float32
# Next Next step: use non-mutable struct

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
    num[1] == 0 && (p != 0 || num[1]!=0 || num[2] != 0) && throw(ArgumentError("The first entry of the input array can be 0 only if all the other entries and the degree are nil too."))
    return true
end

###################
#    BEGIN I/O    #
###################

function _show(io::IO, a::Ban)

    print(io, string("α^",a.p,"(",a[1]))

    if a[2] >= 0 
        print(io, string(" + ", a[2], "η^1"))
    else
        print(io, string(" - ", -a[2], "η^1"))
    end

    if a[3] >= 0 
        print(io, string(" + ", a[3], "η^2"))
    else
        print(io, string(" - ", -a[3], "η^2"))
    end

    print(io, ")")
end


function _write(io::IO, a::Ban)
	# SIZE is supposed known and equal to the current one
	byte = write(io, a.p);
	b = convert(Vector{Float64}, a.num);
	byte += write(io, b[1]);
    byte += write(io, b[2]);
    byte += write(io, b[3]);

	return byte
end

function _read(io::IO, a::Type{Ban})
	#SIZE is supposed known and equal to the current one
	p = read(io, Int64)
	vec = Vector{Float64}(undef, SIZE);
    vec[1] = read(io, Float64);
    vec[2] = read(io, Float64);
    vec[3] = read(io, Float64);

	return Ban(p, vec)
end

## the following I/O functions left unaltered
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
## end unaltered functions

#########################
#   BEGIN ARITHMETICS   #
#########################


# Sum of two Bans
function _sum(a::Ban, b::Ban)

end

end