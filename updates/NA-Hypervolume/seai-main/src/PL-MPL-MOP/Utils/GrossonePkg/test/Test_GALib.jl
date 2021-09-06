include("../src/Grossone.jl")
include("../src/GrossGALib.jl")
using Grossone, GrossGALib

popA = Array{GrossScalar{Float64},2}(5,2)
popB = Array{GrossScalar{Float64},2}(5,2)

ind = GrossScalar(Float64, 2, -1)
# [0,5]
init_GS!(ind, [0.0,0.0])
popA[1,1] = init_GS(ind)
init_GS!(ind, [5.0,5.0])
popA[1,2] = init_GS(ind)
# [1,4]
init_GS!(ind, [0.0,1.0])
popB[1,1] = init_GS(ind)
init_GS!(ind, [5.0,4.0])
popB[1,2] = init_GS(ind)
# [2,3]
init_GS!(ind, [1.0,2.0])
popA[2,1] = init_GS(ind)
init_GS!(ind, [4.0,3.0])
popA[2,2] = init_GS(ind)
# [3,2]
init_GS!(ind, [1.0,3.0])
popB[2,1] = init_GS(ind)
init_GS!(ind, [4.0,2.0])
popB[2,2] = init_GS(ind)
# [4,1]
init_GS!(ind, [2.0,4.0])
popA[3,1] = init_GS(ind)
init_GS!(ind, [3.0,1.0])
popA[3,2] = init_GS(ind)
# [5,0]
init_GS!(ind, [2.0,5.0])
popB[3,1] = init_GS(ind)
init_GS!(ind, [3.0,0.0])
popB[3,2] = init_GS(ind)

# [5, 0.5]
init_GS!(ind, [2.0,5.5])
popA[4,1] = init_GS(ind)
init_GS!(ind, [3.0,0.5])
popA[4,2] = init_GS(ind)
# [0.5, 6]
init_GS!(ind, [2.0,5.0])
popB[4,1] = init_GS(ind)
init_GS!(ind, [3.0,2.0])
popB[4,2] = init_GS(ind)
# [1.5,4.5]
init_GS!(ind, [1.0,1.5])
popA[5,1] = init_GS(ind)
init_GS!(ind, [4.0,4.5])
popA[5,2] = init_GS(ind)
# [4.5, 1.75]
init_GS!(ind, [1.0,2.5])
popB[5,1] = init_GS(ind)
init_GS!(ind, [4.0,4.0])
popB[5,2] = init_GS(ind)

performances = GD_IGD_performances([popA, popB])

println(performances)