include("../src/Grossone.jl")
include("../src/SuperDirection.jl")
using SuperDirections

s1=SuperDirection([[1, 2, 3], [5, 4], [3, 3, 3, 3]])
s2=SuperDirection(s1)
s3=SuperDirection(s1, false)
println(s2)
println(s3)
s2==s1