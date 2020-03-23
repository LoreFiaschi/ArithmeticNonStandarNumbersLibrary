include("../BAN.jl")

using .BAN

x = [1, 2, 3, 4];
y = [3, 4, 5, 6];

a = Ban(4, x);
b = Ban(2, y);
c = a+b;
println(c);

println(b+a);

b = Ban(0, y);
println(a+b);

a.p = 3;
a.num = zeros(4);
b.p = 1;
b.num = zeros(4);
println(c);