include("../BAN.jl")

using .BAN

x = [1, 2, 3, 4];
a = Ban(0,x);

b = 4;

println(a+b);