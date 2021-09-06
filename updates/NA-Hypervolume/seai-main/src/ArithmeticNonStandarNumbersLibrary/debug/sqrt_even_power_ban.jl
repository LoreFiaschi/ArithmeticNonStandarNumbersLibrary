include("../BAN.jl")

using .BAN

x = [1, 2, 3, 4];
a = Ban(4, x);

_a = sqrt(a);
println(_a);
println(_a*_a);

y = [3, 4, 5, 6];
b = Ban(-2, y);
_b = sqrt(b);
println(_b);
println(_b*_b);