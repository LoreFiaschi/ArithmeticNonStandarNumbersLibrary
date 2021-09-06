#include("../src/Grossone.jl")
#using Grossone

z1 = GrossScalar(Float64, 2, -1)
z2 = GrossScalar(Float64, 2, -1)

init_GS!(z1, [1.0, 0.0])
init_GS!(z2, [-1.0, 2.0])

z = Array{GrossScalar{Float64},1}(2)
z[1] = z1
z[2] = z2


x1 = GrossScalar(Float64, 2, -1)
x2 = GrossScalar(Float64, 2, -1)

init_GS!(x1, [-2.0, 3.0])
init_GS!(x2, [1.0, 1.0])

x = Array{GrossScalar{Float64},1}(2)
x[1] = x1
x[2] = x2

min.(z,x)