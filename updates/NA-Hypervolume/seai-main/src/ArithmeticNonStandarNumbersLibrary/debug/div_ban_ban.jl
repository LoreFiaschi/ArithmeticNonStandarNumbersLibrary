include("../BAN.jl")

using .BAN

x = [2, 3, -2, 0];

a = Ban(5, x);

println(1/a);