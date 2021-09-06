function matrix2latex(A::AbstractMatrix{T}) where T<:Real
	n,m = size(A);
	
	println("\\begin{equation}");
	println("\t\\begin{bmatrix}");
	
	for i=1:n
		print("\t");
		for j=1:m-1
			print("$(A[i,j]) & ");
		end
		if i == n
			println("$(A[i,m])");
		else
			println("$(A[i,m]) \\\\");
		end
	end
	
	println("\t\\end{bmatrix}")
	println("\\label{eq:}");
	println("\\end{equation}")
end

function matrix2latex(A::AbstractMatrix{T}) where T<:Number
	n,m = size(A);
	
	println("\\begin{equation}");
	println("\t\\begin{bmatrix}");
	
	for i=1:n
		print("\t");
		for j=1:m-1
			print_latex(A[i,j]); print(" & ");
		end
		if i == n
			print_latex(A[i,m]); println("");
		else
			print_latex(A[i,m]); println(" \\\\");
		end
	end
	
	println("\t\\end{bmatrix}")
	println("\\label{eq:}");
	println("\\end{equation}")
end