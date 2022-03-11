include("../src/BAN.jl")

using .BAN
using LinearAlgebra

function rnd_ban()
	return Ban(rand([-1,0,1]), [rand(), rand(), rand()])
end

function my_generic_lufact!(A)
   # Extract values
   m, n = size(A)
   minmn = min(m,n)

   # Initialize variables
   info = 0
   ipiv = Vector{Int64}(undef, minmn)
   @inbounds begin
       for k = 1:minmn
           # find index max
           kp = k
           if k < m
               amax = abs(A[k, k].num[1])
               for i = k+1:m
                   absi = abs(A[i,k].num[1])
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
               end
           elseif info == 0
               info = k
           end
           # Update the rest
           for j = k+1:n
               for i = k+1:m
                   A[i,j] -= A[i,k]*A[k,j]
               end
           end
       end
   end
   return LinearAlgebra.LU{Ban,typeof(A)}(A, ipiv, convert(LinearAlgebra.BlasInt, info))
end

A = Matrix{Ban}(undef, 4, 4)

for i in eachindex(A)
   A[i] = rnd_ban()
end

A[[1;4;6;8;12;15]] ./= 100000

f = lu(A)

println("")
@show f.L;
println("")
@show f.U;
println("")

ff = my_generic_lufact!(copy(A))

@show ff.L;
println("")
@show ff.U;
nothing

