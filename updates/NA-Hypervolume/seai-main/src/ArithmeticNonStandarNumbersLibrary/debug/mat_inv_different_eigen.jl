include("../src/BAN.jl")
using .BAN
using LinearAlgebra

e = [α,η];
f = [η,α];

T = randn(2,2);
Q = Matrix(qr(T).Q);

A = Q'*diagm(e)*Q;
B = Q'*diagm(f)*Q;
C = inv(A);

print("B-C: "); println(denoise(B-C, 10e-12));
println("");
print("A*B: "); println(denoise(A*B, 10e-12));
println("");
print("A*C: "); println(denoise(A*C, 10e-12));
println("");