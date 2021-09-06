include("../BAN.jl")
using .BAN
using LinearAlgebra

x = Vector{Ban}(undef, 3);
x[1] = Ban(0, [0.25, -0.25, 0.25]);
x[2] = Ban(0, [3/8, -1/8, 1/8]);
x[3] = Ban(0, [3/8, 3/8, -3/8]);

y = Vector{Ban}(undef, 3);
y[1] = Ban(0, [1, 0, 0]);
y[2] = Ban(1, [1, 0, 0]);
y[3] = Ban(1, [1, 0, 0]);

println(dot(x,y))
println("")
println(x[1] + x[2]<<1 + x[3]<<1)