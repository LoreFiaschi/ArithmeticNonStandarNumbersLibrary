function write_matrix(io::IO, A::AbstractArray{T}) where T<:Number
	s = size(A);
	byte = 0;
	for i in eachindex(s)
		byte += write(io, s[i]);
	end
	byte += write(io, A);

	return byte
end

function read_matrix(io::IO, ::Type{T}, dim::Int=2) where T<:Number
	s = Vector{Int64}(undef, dim);
	for i=1:dim
		s[i] = read(io, Int64);
	end
	tot_num = prod(s);
	s = Tuple(s);
	A = Array{T}(undef, s);r
	for i=1:tot_num
		A[i] = read(io, T);
	end

	return A
end
