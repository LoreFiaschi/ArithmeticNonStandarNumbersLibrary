using Grossone, GrossGALib

include("./GrossonePkg/src/FileReader.jl")

function compute_performances(files, minimize=true, separated=false)

    pop_array = Array{Array{SuperDirection{Float64},1},1}(length(files))

    for i in eachindex(files)
        pop_array[i] = superDirection_reader(files[i])
    end

    GD_IGD_performances(pop_array, minimize, separated)
end