include("../src/Grossone.jl")
include("../src/SuperDirection.jl")
include("../../PL_DetermineDomination.jl")
include("../../PL_Dominates.jl")
include("../../Dominates.jl")
include("../src/FileReader.jl")

using SuperDirections

minimization=true

mutable struct ind

    Cost
    IsDominated
end

sd_array = superDirection_reader("../../../NSGAIII/outputs/MPL3_5.txt")
pop_array = Array{ind, 1}(length(sd_array))

for j=1:length(pop_array)
    pop_array[j] = ind(sd_array[j], false)
end

PL_DetermineDomination!(pop_array, minimization)

for si in pop_array
    println(si)
end