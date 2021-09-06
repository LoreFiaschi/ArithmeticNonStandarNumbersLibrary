include("../src/Grossone.jl")
include("../src/SuperDirection.jl")
using Grossone, SuperDirections

s1=SuperDirection([[1.0, 2, 3], [5, 4], [3, 3, 2, 3]])
gs = GrossScalar(Int64, 3, -2)
init_GS!(gs, [2, 4, 2])
s1/gs