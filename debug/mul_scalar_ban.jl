include("../BAN.jl")

using .BAN

x = [1, 2, 3, 4];
a = Ban(4, x);
c = -a;
println(c);