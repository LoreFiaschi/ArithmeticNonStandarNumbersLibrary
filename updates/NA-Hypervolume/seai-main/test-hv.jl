include("./hv.jl")
import JSON

points = JSON.parsefile("test.json")

# print(points)

hv = HyperVolume([50, 50, 50, 50, 50])
res = compute(hv, points)
println(res)