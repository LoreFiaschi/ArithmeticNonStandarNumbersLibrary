include("../BAN.jl")

using .BAN
using LinearAlgebra

A = Matrix{Ban}(undef,2,2)

A[1,1] = Ban(0, [1,2.78911,0,0])
A[1,2] = Ban(-1, [-0.77306,0,0,0])
A[2,1] = Ban(0, [-1,0.72757,0,0])
A[2,2] = Ban(-1, [0.83663,0,0,0])

x = inv(A);

println(x);
println("");

println(A*x);