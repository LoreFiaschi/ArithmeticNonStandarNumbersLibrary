include("./GrossonePkg/src/Grossone.jl")
include("./GrossonePkg/src/SuperDirection.jl")
include("./Plot3D.jl")
include("./GrossonePkg/src/FileReader.jl")

function plot_frontier3D(filename, num=1, shift=0)
    EP = superDirection_reader(filename)
    Plot3D(EP,num,shift)
end