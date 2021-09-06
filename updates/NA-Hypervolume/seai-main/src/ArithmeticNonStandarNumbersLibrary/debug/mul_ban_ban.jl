include("../BAN.jl")

using .BAN

x = [1, 2, 3, 4];
y = [3, 4, 5, 6];

a = Ban(4, x);
b = Ban(2, y);

println(a*b);