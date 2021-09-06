include("../src/Grossone.jl")
using Grossone


a = GrossScalar(Float64, 2, -1)
init_GS!(a, [2.0, 1.0])
b = zero_init_GS(a)
init_GS!(b, [3.0, 2.0])
c = Array{GrossScalar{Float64}, 1}(2)
c[1] = a
c[2] = b

println(norm(c))

a = GrossScalar(Float64, 3, -2)
init_GS!(a, [2.0, 1.0, 2.0])
b = zero_init_GS(a)
init_GS!(b, [3.0, 2.0, 3.0])
c = Array{GrossScalar{Float64}, 1}(2)
c[1] = a
c[2] = b

println(norm(c))

a = GrossScalar(Float64, 3, -2)
init_GS!(a, [0.0, 1.0, 2.0])
b = zero_init_GS(a)
init_GS!(b, [0.0, 2.0, 3.0])
c = Array{GrossScalar{Float64}, 1}(2)
c[1] = a
c[2] = b

println(norm(c))

a = GrossScalar(Float64, 3, -2)
init_GS!(a, [0.0, 0.0, 2.0])
b = zero_init_GS(a)
init_GS!(b, [0.0, 0.0, 3.0])
c = Array{GrossScalar{Float64}, 1}(2)
c[1] = a
c[2] = b

println(norm(c))

a = GrossScalar(Float64, 3, -2)
init_GS!(a, [0.0, 1.0, 0.0])
b = zero_init_GS(a)
init_GS!(b, [0.0, 2.0, 0.0])
c = Array{GrossScalar{Float64}, 1}(2)
c[1] = a
c[2] = b

println(norm(c))