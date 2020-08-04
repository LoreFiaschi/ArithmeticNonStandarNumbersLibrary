include("../src/BAN.jl")
using .BAN
using LinearAlgebra
include("../../Utils/src/matrix2latex.jl")

A = rand(Ban, 5,5);
AA = A*A';

A = round(A, digits=3);
AA = round(AA, digits=7);
f = cholesky(AA);

print("G = "); matrix2latex(A);
println("");

print("A = "); matrix2latex(round(AA, digits=3));
println("");

print("L = "); matrix2latex(round(f.L, digits=3));
println("");

