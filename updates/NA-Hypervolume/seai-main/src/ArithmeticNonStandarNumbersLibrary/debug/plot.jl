include("../src/BAN.jl");
include("../src/BanPlots.jl")
using .BAN

x = convert(Vector{Ban}, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

#=
x = [x.*(α^-1);x];
y = x.^2;
=#


x = [x;x.+10];
y = [x[1:4];x[5:10].*α;(-x[11:15].+20).*α;-x[16:20].+20];

plot(x, y)