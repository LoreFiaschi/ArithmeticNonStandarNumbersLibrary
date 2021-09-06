include("../src/Grossone.jl")
include("../src/SuperDirection.jl")
include("../../PL_DetermineDomination.jl")
include("../../PL_Dominates.jl")
include("../../Dominates.jl")

using SuperDirections

minimization=true

mutable struct ind

    Cost
    IsDominated
end

s1=SuperDirection([[1, 2, 3], [5, 4], [7, 9, 10]])
#s2=SuperDirection([[3, 2, 1], [5, 4], [7, 4, 3]])
s2=SuperDirection([[3, 2, 1], [4, 5], [21, 0, 3]])
s3=SuperDirection([[2, 2, 3], [7, 4], [3, 5, 3]])
s4=SuperDirection([[1, 2, 3], [6, 7], [3, 1, 2]])
s5=SuperDirection([[1, 2, 3], [5, 4], [9, 9, 9]])
s6=SuperDirection([[1, 2, 3], [5, 4], [11, 11, 1]])
s7=SuperDirection([[1, 2, 3], [5, 4], [3, 11, 0]])

s=[ind(s1, false), ind(s2, false), ind(s3, false), ind(s4, false), ind(s5, false), ind(s6, false), ind(s7, false)]

PL_DetermineDomination!(s, minimization)
for si in s
    println(si)
end