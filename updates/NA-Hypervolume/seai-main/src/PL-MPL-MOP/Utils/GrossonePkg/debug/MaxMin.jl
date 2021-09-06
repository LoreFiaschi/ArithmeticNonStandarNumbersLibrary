include("../src/Grossone.jl")
include("../src/SuperDirection.jl")
using SuperDirections

s1=SuperDirection([[1, 2, 4], [4, 6]])
s2=SuperDirection([[12, -2, 1], [0, -6]])
s3=SuperDirection([[10, 5, -3], [-4, 9]])
s=[s1, s2, s3]
println(maximum(s))
println(minimum(s))