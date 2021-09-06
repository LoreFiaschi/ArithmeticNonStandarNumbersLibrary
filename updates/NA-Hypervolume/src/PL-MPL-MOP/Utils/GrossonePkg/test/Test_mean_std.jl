include("../src/Grossone.jl")
using Grossone

A = Array{GrossScalar{Float64}, 2}(2,2)
A[1,1] = GrossScalar(Float64, 2, -1)
A[1,2] = deepcopy(A[1,1])
A[2,2] = deepcopy(A[1,1])
A[2,1] = deepcopy(A[1,1])
init_GS!(A[1,1], [1.0,1.0])
init_GS!(A[2,1], [0.0,3.0])
init_GS!(A[2,2], [0.0,4.0])
init_GS!(A[1,2], [0.0,0.4])
m = mean(A,2)
stds = Array{GrossScalar{Float64},1}(length(m))
for i=1:length(m)
    stds[i] = stdm(A[:,i], m[i])
end
stds