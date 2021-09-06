include("../src/BAN.jl")
using .BAN
using LinearAlgebra

#=
A = [1/3 1/2 1/6 0   0;
     0   0   0   1-η η;
	 0   1/3 0   2/3 0;
	 1/4 0   3/4 0   0;
	 0   0   1   0   0]';
 
A = [1/3 1/2 1/6 0   0;
     0   0   0   1   0;
	 0   0   0   2/3 1/3;
	 1/4 0   3/4 0   0;
	 0   η   0   0   1-η]';
=#

A = [1/3 1/2 1/6 0   0;
     0   0   0   1-η η;
	 0   1/3 0   2/3 0;
	 1/4 0   3/4 0   0;
	 0   0   η  0    1-η]';

#=
A = [0   0   0   1-η η^2;
     1-η 0   0   0   η^2;
	 0   1-η 0   0   η^2;
	 0   0   1-η 0   η^2;
	 η   η   η   η   1-4η^2];

C = inv(A);


print("A*C: "); println(denoise(A*C, 10e-12));
println("");

print("C: "); println(denoise(C, 10e-12));
println("");
=#

P = A-I;
P = [P[1:end-1,:]; ones(Ban,1,size(P,2))];
b = zeros(Ban,size(A,1),1);
b[end] = 1;

v = P \ b;

print("v: "); println(denoise(v, 10e-12));