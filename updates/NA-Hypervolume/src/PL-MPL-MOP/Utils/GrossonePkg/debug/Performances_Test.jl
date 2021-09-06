include("../src/Grossone.jl")
include("../src/SuperDirection.jl")
include("../src/GrossGALib.jl")
include("../src/FileReader.jl")
include("../../PL_DetermineDomination.jl")
include("../../PL_Dominates.jl")
include("../../Dominates.jl")

using GrossGALib

#pop1 = superDirection_reader("../../../PL-MOEAD/outputs/MPL3_1.txt")
pop2 = superDirection_reader("../../../TAN/outputs/MPL3_1.txt")
pop3 = superDirection_reader("../../../MOEAD/outputs/MPL3_post_1.txt")
pop4 = superDirection_reader("../../../MOEAD/outputs/MPL3_pre_1.txt")
pop5 = superDirection_reader("../../../NSGAII/outputs/MPL3_post_1.txt")
pop6 = superDirection_reader("../../../NSGAII/outputs/MPL3_pre_1.txt")
pop7 = superDirection_reader("../../../SCHMIEDLE/outputs/MPL3_1.txt")
pop8 = superDirection_reader("../../../PL-NSGAII/outputs/MPL3_1.txt")
#pop=[pop1, pop2, pop3, pop4, pop5, pop6, pop7, pop8]
pop=[pop2, pop3, pop4, pop5, pop6, pop7, pop8]

performances = GD_IGD_performances(pop, true)

println("MPL3")
println("")
for p in performances
    println(p)
end
println("")
println("")

#pop1 = superDirection_reader("../../../PL-MOEAD/outputs/MPL4_1.txt")
pop2 = superDirection_reader("../../../TAN/outputs/MPL4_1.txt")
pop3 = superDirection_reader("../../../MOEAD/outputs/MPL4_post_1.txt")
pop4 = superDirection_reader("../../../MOEAD/outputs/MPL4_pre_1.txt")
pop5 = superDirection_reader("../../../NSGAII/outputs/MPL4_post_1.txt")
pop6 = superDirection_reader("../../../NSGAII/outputs/MPL4_pre_1.txt")
pop7 = superDirection_reader("../../../SCHMIEDLE/outputs/MPL4_1.txt")
pop8 = superDirection_reader("../../../PL-NSGAII/outputs/MPL4_1.txt")
#pop=[pop1, pop2, pop3, pop4, pop5, pop6, pop7, pop8]
pop=[pop2, pop3, pop4, pop5, pop6, pop7, pop8]

performances = GD_IGD_performances(pop, true)

println("MPL4")
println("")
for p in performances
    println(p)
end