include("../src/BAN.jl")
using .BAN
using LinearAlgebra

A = rand(Ban, 3,3);
AA = A*A';

for i in eachindex(AA)
   AA[i].num .= [floor(AA[i][j]*100)/100 for j in eachindex(AA[i].num)]
end

f = cholesky(AA);

println(f.L*f.L'-AA)