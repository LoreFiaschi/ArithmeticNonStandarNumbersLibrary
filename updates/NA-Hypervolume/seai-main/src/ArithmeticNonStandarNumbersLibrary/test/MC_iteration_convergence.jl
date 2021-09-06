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

A = [1/3 1/2 1/6 0   0;
     0   0   0   1-η η;
	 0   1/3 0   2/3 0;
	 1/4 0   3/4 0   0;
	 0   0   η  0    1-η]';
=#

A = [0   0   0   1-η η^2;
     1-η 0   0   0   η^2;
	 0   1-η 0   0   η^2;
	 0   0   1-η 0   η^2;
	 η   η   η   η   1-4η^2];

it = 50;

B = copy(A);

for i=1:it global B = A*B; end

p = rand(Ban, size(A,1));

print("p: "); println(denoise(p, 10e-12));

print("B*p: "); println(denoise(B*p, 10e-12));