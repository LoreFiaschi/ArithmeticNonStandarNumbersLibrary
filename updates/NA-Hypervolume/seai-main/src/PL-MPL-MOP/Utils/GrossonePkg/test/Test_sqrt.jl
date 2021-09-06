include("../src/Grossone.jl")
using Grossone

a = GrossScalar(Float64, 3, -2)
init_GS!(a, [0.0, 0.0, 1.0])

sqrt(a)