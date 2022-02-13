__precompile__()
module BAN

# Library for HPC fixing SIZE = 3
# Next step: use only Float32
# Next Next step: use non-mutable struct

using Printf, Format
using Random, LinearAlgebra

export Ban, AbstractAlgNum
export α, η
#export SIZE
export print_ext, println_ext, print_latex
#export standard_part
#export degree, min_degree, magnitude, principal
#export nextban, prevban
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
mutable struct Ban <: AbstractAlgNum

    # Members
    p::Int
    num::Array{T,1} where T<:Real
    
    # Constructor
    Ban(p::Int,num::Array{T,1}, check::Bool) where T <: Real = new(p,copy(num))
    Ban(p::Int,num::Array{T,1}) where T <: Real = (_constraints_satisfaction(p,num) && new(p,copy(num)))
    Ban(a::Ban) = new(a.p,copy(a.num))
    Ban(x::Bool) = one(Ban)
    Ban(x::T) where T<:Real = ifelse(isinf(x), Ban(0, ones(SIZE).*x, false), Ban(0, [x, 0, 0], false))
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
function _sum_body(a::Ban, b::Ban, diff_p)
	
	res = Ban(a);
	
	if diff_p == 0
		res.num[1] += b.num[1];
		res.num[2] += b.num[2];
		res.num[3] += b.num[3];
		to_normal_form!(res);
	
	elseif diff_p == 1
		res.num[2] += b.num[1];
		res.num[3] += b.num[2];
	
	else # diff_p ==2
		res.num[3] += b.num[1];
	end
	
	return res;
	
end

function _sum(a::Ban, b::Ban)
	# Sum with zero (in order to avoid precision loss)
    a == 0 && return Ban(b);
    b == 0 && return Ban(a);
	
	diff_p = a.p - b.p;
	
	diff_p >= SIZE  && return Ban(a);
	diff_p <= -SIZE && return Ban(b);
	
	diff_p < 0 && return _sum_body(b, a, -diff_p);
	
	return _sum_body(a, b, diff_p);
	
end

# Multiplication of two Bans
function _mul_body!(num_a::Vector{T}, num_b::Vector{T}, num_res::Vector{T}) where T<:Real
	num_res[1] = num_a[1] * num_b[1];
	num_res[2] = num_a[2] * num_b[1] + num_a[1] * num_b[2];
	num_res[3] = num_a[3] * num_b[1] + num_a[1] * num_b[3] + num_a[2] * num_b[2];
end

function _mul(a::Ban, b::Ban)
	num = Vector{Float64}(undef, SIZE);
	_mul_body!(a.num, b.num, num);
	res = Ban(a.p+b.p, num, false);
	to_normal_form!(res);
	
	return res;
end

# Division of two Bans
function _div_body!(num_num::Vector{T}, num_den::Vector{T}, num_res::Vector{T}) where T<:Real
	normalizer = num_den[1];
	den_norm = Vector{T}(undef, SIZE);
	eps1 = Vector{T}(undef, SIZE);
	eps2 = Vector{T}(undef, SIZE);
	den_norm[1] = 0;
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
function _sum(a::Ban, b::T) where T<:Real
	# Sum with zero (in order to avoid precision loss)
    a == 0 && return Ban(b);
    b == 0 && return a;
	
	if a.p >= 0
		res = Ban(a);
		if a.p-SIZE >= 0
			return res
		end
		
		res.num[p+1] += n;
		to_normal_form!(res);
		return res;
	end
	
	num_res = Vector{Float64}(undef, SIZE);
	num_res[1] = b;
	
	if a.p == -1
		num_res[3] = num[2];
		num_res[2] = num[1];
	else
		num_res[2] = 0;
		
		if a.p == -2
			num_res[3] = num[1];
		else
			num_res[3] = 0;
		end
	
	end
	
	return Ban(0, num_res, false);
	
end

function _mul(a::Ban, b::T) where T<:Real
	res = Ban(a.p, [a.num[1]*n, a.num[2]*n, a.num[3]*n], false);
	to_normal_form!(res);
	return res;
end

function _div(a::Ban, b::T) where T<:Real
	b == 0 && throw(ArgumentError("Division by zero detected."));
	a == 0 && return zero(Ban);
	
	res = Ban(a.p, [a.num[1]/n, a.num[2]/n, a.num[3]/n], false);
	to_normal_form!(res);
	return res;
end

function _isless(a::Ban, b::Ban)
	pbp = a.p < b.p;
	bpp = b.p < a.p;
	deq_p = ( pbp && ( b.num[0] > 0 || (!b.num[0] && a.num[0] < 0) ) ) || ( !pbp && bpp && ( a.num[0] < 0 || (!a.num[0] && b.num[0] > 0) ) );

	#same leading power (i.e., magnitude)

	eq0 = a.num[0] == b.num[0];
	eq1 = a.num[1] == b.num[1];

	return ( deq_p || (!pbp && !bpp && ( (!eq0 && num[0] < b.num[0]) || (eq0 && ( (!eq1 && a.num[1] < b.num[1]) || (eq1 && a.num[2] < b.num[2]) ) ) ) ) );
end

function _isless(a::Ban, b::T) where T<:Real
	pg = a.p > 0;
	pl = a.p < 0;
	n0 = a.num[0] < 0;

	return ( ( pg &&  n0 ) || ( pl &&  ( b > 0 || ( !b && n0) ) ) || ( !a.p && ( a.num[0] < b || (a.num[0] == b && ( a.num[1] < 0 || ( !a.num[1] && a.num[2] < 0 ) ) ) ) ) ); 
end

function _isless(a::T, b::Ban) where T<:Real
	pg = b.p > 0;
	pl = b.p < 0;
	n0 = b.num[0] > 0;

	return ( ( pg &&  n0 ) || ( pl &&  ( a < 0 || ( !a && n0) ) ) || ( !b.p && ( b.num[0] < a || (b.num[0] == a && ( b.num[1] < 0 || ( !b.num[1] && b.num[2] < 0 ) ) ) ) ) ); 
end

function to_normal_form!(a::Ban)
	a.num[1] != 0 && return ;
	
	if a.num[2] != 0
		a.num[1] = a.num[2];
		a.num[2] = a.num[3];
		a.num[3] = 0;
		a.p -= 1;
		return ;
	end
	
	if a.num[3] != 0
		a.num[1] = a.num[3];
		a.num[3] = 0;
		a.p -= 2;
	end
	
	# all zero
	a.p = 0;
	return ;
end


Base.:(+)(a::Ban, b::Ban) = _sum(a,b);
Base.:(-)(a::Ban) = Ban(a.p, [-a.num[1], -a.num[2], -a.num[3]], false);
Base.:(-)(a::Ban, b::Ban) = _sum(a,-b);
Base.:(*)(a::Ban, b::Ban) = _mul(a,b);
Base.:(/)(a::Ban, b::Ban) = _div(a,b);

Base.:(+)(a::Ban, b::T) where T<:Real = _sum(a,b);
Base.:(-)(a::Ban, b::T) where T<:Real = _sum(a,-b);
Base.:(*)(a::Ban, b::T) where T<:Real = _mul(a,b);
Base.:(/)(a::Ban, b::T) where T<:Real = _div(a,b);

Base.:(+)(a::T, b::Ban) where T<:Real = _sum(b,a);
Base.:(-)(a::T, b::Ban) where T<:Real = _sum(-b, a);
Base.:(*)(a::T, b::Ban) where T<:Real = _mul(b,a);
Base.:(/)(a::T, b::Ban) where T<:Real = _div(Ban(a),b);
#Base.:(^)(a::Ban, p::Integer) = _pow(a, p);

Base.isless(a::Ban, b::Ban) = _isless(a, b);
Base.isless(a::Ban, b::T) where T<:Real = _isless(a, b);
Base.isless(a::T, b::Ban) where T<:Real = _isless(a, b);
Base.:(==)(a::Ban, b::Ban) = ((a.p == b.p) && (a.num[1] == b.num[1]) && (a.num[2] == b.num[2]) && (a.num[3] == b.num[3]));
Base.:(==)(a::Ban, b::T) where T<:Real = ((a.p == 0) && (a.num[1] == b) && (a.num[2] == 0) && (a.num[3] == 0));

end