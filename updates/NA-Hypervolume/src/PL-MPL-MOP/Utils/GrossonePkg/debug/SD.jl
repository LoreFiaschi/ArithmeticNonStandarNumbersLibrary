include("../src/Grossone.jl")
include("../src/SuperDirection.jl")
using SuperDirections

s1=SuperDirection([[1, 2, 3], [5, 4], [3, 3, 3, 3]])
s2=SuperDirection([[1, -2, 3], [5, -4], [3, -3, 3, 3]])
s = s1.*s2
println(typeof(s))
abs.(s)
#maximum(s1.*s2)