__precompile__()
module PLNSGAII_LAI

export nsga, nsga_max, nsga_binary, BinaryCoding, dominates#, offspring, parents
using ProgressMeter, Compat, Compat.Random, Compat.LinearAlgebra

include("indivs.jl")
include("binarycoding.jl")
include("functions.jl")
include("crossover.jl")
include("mutation.jl")

function nsga(popSize::Integer, nbGen::Integer, z::Function, init::Function ;
    fdecode = identity, fdecode! = (g,p)-> (p.=g;nothing), fCV = x->0., pmut = 0.05, fmut = default_mutation!,
    fcross = default_crossover!, seed = typeof(init())[], fplot = x->nothing, plotevery = 1, showprogress = true,
    lexico = false)
	X = create_indiv(init(), fdecode, z, fCV)
    return _nsga(X, Min(), lexico, popSize, nbGen, init, z, fdecode, fdecode!,
        fCV , pmut, fmut, fcross, seed, fplot, plotevery, showprogress ? 0.5 : Inf)
end

function nsga(popSize::Integer, nbGen::Integer, z::Function, bc::BinaryCoding ;
    fCV = x->0., pmut = 0.05, fmut = default_mutation!, fcross = default_crossover!,
    seed = Vector{Float64}[], fplot = x->nothing, plotevery = 1, showprogress = true,
    lexico = false)
    init = ()->bitrand(bc.nbbitstotal)
    X = create_indiv(init(), x->decode(x, bc), z, fCV)
    return _nsga(X, Min(), lexico, popSize, nbGen, init, z, x->decode(x, bc), (g,f)->decode!(g, bc, f),
        fCV , pmut, fmut, fcross, encode.(seed, bc), fplot, plotevery, showprogress ? 0.5 : Inf, binarycoding = bc)
end

function nsga_max(popSize::Integer, nbGen::Integer, z::Function, init::Function ;
    fdecode = identity, fdecode! = (g,p)-> (p.=g;nothing), fCV = x->0., pmut = 0.05, fmut = default_mutation!,
    fcross = default_crossover!, seed = typeof(init())[], fplot = x->nothing, plotevery = 1, showprogress = true,
    lexico = false)
	X = create_indiv(init(), fdecode, z, fCV)
    return _nsga(X, Max(), lexico, popSize, nbGen, init, z, fdecode, fdecode!,
        fCV , pmut, fmut, fcross, seed, fplot, plotevery, showprogress ? 0.5 : Inf)
end

function nsga_max(popSize::Integer, nbGen::Integer, z::Function, bc::BinaryCoding ;
    fCV = x->0., pmut = 0.05, fmut = default_mutation!, fcross = default_crossover!,
    seed = Vector{Float64}[], fplot = x->nothing, plotevery = 1, showprogress = true,
    lexico = false)
    init = ()->bitrand(bc.nbbitstotal)
    X = create_indiv(init(), x->decode(x, bc), z, fCV)
    return _nsga(X, Max(), lexico, popSize, nbGen, init, z, x->decode(x, bc), (g,f)->decode!(g, bc, f),
        fCV , pmut, fmut, fcross, encode.(seed, bc), fplot, plotevery, showprogress ? 0.5 : Inf, binarycoding = bc)
end

end # module
