__precompile__()
module GrossGALib

using Grossone, SuperDirections

#include("../../Dominates.jl")
include("../../PL_Dominates.jl")
#include("../../DetermineDomination.jl")
include("../../PL_DetermineDomination.jl")


export GD_IGD_performances

mutable struct Individual

    cost            # ::Array{GrossScalar{T},1} where{T<:Real} or ::SuperDirection{T} where {T<:Real}
    dominated::Bool
    pop_idx::Int64
end

function preprocess(pop_array::Array{Array{GrossScalar{T},2},1}) where {T<:Real}
    newpop_array = Array{Array{Individual,1},1}(length(pop_array))
    for i in eachindex(pop_array)
        #deletion of duplicates
        pop_array[i] = unique(pop_array[i],1)
        pop_size = size(pop_array[i])[1]
        ind_pop = Array{Individual,1}(pop_size)
        for j=1:pop_size
            ind_pop[j] = Individual(pop_array[i][j,:], false, i)
        end
        newpop_array[i] = ind_pop
    end
    newpop_array
end

function compute_distance(z::Array{GrossScalar{T},1}, x::Array{GrossScalar{T},1}, ZERO::GrossScalar{T}, minimize::Bool, ishibuchi::Bool=false) where{T<:Real}
    if minimize
        d = x-z
    else
        d = z-x
    end
    if ishibuchi
        #Rather than put to zero the negative components directly compute the norm
        # of the array made up by the poistive ones only
        pos_comp = d[(y->y>ZERO).(d)]
        # if there is only one positive component and it is an infinitesimal number the norm would be computed as 0
        # due to approximation problems of the current architecture. We solve it by means of the following if statement
        if length(pos_comp) == 0
            return deepcopy(ZERO)
        end
        
        if length(pos_comp) == 1
            pos_comp[1]
        else
            norm(pos_comp)
        end
    else
        norm(d)
    end
end

function compute_GD_performance(pop::Array{Individual,1}, true_pareto::Array{Individual,1}, ZERO::GrossScalar{T}, minimize::Bool) where{T}
    performance = deepcopy(ZERO)
    for ind in pop
        if ind.dominated
            min_dist = zero_init_GS(ZERO)
            set_to_Inf!(min_dist)
            for true_ind in true_pareto
                dist = compute_distance(true_ind.cost, ind.cost, ZERO, minimize)
                if dist < min_dist
                    min_dist = dist
                    if min_dist == ZERO
                        break
                    end
                end
            end
            performance += min_dist
        end
    end
    performance/length(pop)
end

function compute_IGD_performance(pop::Array{Individual,1}, true_pareto::Array{Individual,1}, pop_idx::Int64, ZERO::GrossScalar{T}, minimize::Bool) where{T}
    performance =  deepcopy(ZERO)
    for true_ind in true_pareto
        if pop_idx != true_ind.pop_idx
            min_dist = zero_init_GS(ZERO)
            set_to_Inf!(min_dist)
            for ind in pop
                dist = compute_distance(true_ind.cost, ind.cost, ZERO, minimize)
                if dist < min_dist
                    min_dist = dist
                    if min_dist == ZERO
                        break
                    end
                end
            end
            performance += min_dist
        end
    end
    performance/length(true_pareto)
end

function _GD_IGD_performances(pop_array::Array{Array{GrossScalar{T},2},1}, minimize::Bool) where{T<:Real}
    ZERO = zero_init_GS(pop_array[1][1,1])
    performance_vector = Array{GrossScalar{T}, 1}(length(pop_array))
    pop_array = preprocess(pop_array)
    whole_pop = convert(Array{Individual, 1}, []) #hcat(pop_array...) only when the populations have the same size
    for pop in pop_array
        whole_pop = [whole_pop ; pop]
    end
    DetermineDomination(whole_pop, minimize) #Notice: domination information is added also in pop_array
    true_pareto = whole_pop[.~(x->x.dominated).(whole_pop)]
    for i in eachindex(pop_array)
        performance_vector[i] = compute_GD_performance(pop_array[i], true_pareto, ZERO, minimize)
        igd_performance = compute_IGD_performance(pop_array[i], true_pareto, i, ZERO, minimize)
        performance_vector[i] = (igd_performance > performance_vector[i])? igd_performance : performance_vector[i]
    end
    performance_vector
end

#---------------------------------------------------------------------------------------------------------------------------------

## PL-MPL-MOP

function preprocess(pop_array::Array{Array{SuperDirection{T},1},1}) where {T<:Real}
    newpop_array = Array{Array{Individual,1},1}(length(pop_array))
    for i in eachindex(pop_array)
        #deletion of duplicates
        pop_array[i] = unique(x->x.direction, pop_array[i])
        pop_size = length(pop_array[i])
        ind_pop = Array{Individual,1}(pop_size)
        for j=1:pop_size
            ind_pop[j] = Individual(pop_array[i][j], false, i)
        end
        newpop_array[i] = ind_pop
    end
	whole_pop = convert(Array{Individual, 1}, [])
    for i in eachindex(newpop_array)
        whole_pop = [whole_pop ; newpop_array[i]]
    end
	# Normaliztion
	for i=1:whole_pop[1].cost.numLevels
		for j=1:whole_pop[1].cost.levelsSize[i]
			M = maximum(map(x->x.cost.direction[i][j], whole_pop))
			m = minimum(map(x->x.cost.direction[i][j], whole_pop))
			width = M-m;
			for h in eachindex(whole_pop)
				whole_pop[h].cost[i][j] /= width;
			end
		end
	end
    return newpop_array, whole_pop
end

function compute_distance(z::SuperDirection{T}, x::SuperDirection{T}, ZERO::GrossScalar{T}, minimize::Bool) where{T<:Real}
    if minimize
        d = x-z
    else
        d = z-x
    end
    norm(d)
end

function _GD_IGD_performances(pop_array::Array{Array{SuperDirection{T},1},1}, minimize::Bool, separated::Bool=false) where{T<:Real}
    ZERO = GrossScalar(T, pop_array[1][1].numLevels, 1-pop_array[1][1].numLevels)
    pop_array, whole_pop = preprocess(pop_array)
    PL_DetermineDomination!(whole_pop, minimize) #Notice: domination information is added also in pop_array
    true_pareto = whole_pop[.~(x->x.dominated).(whole_pop)]
	if separated
	    performance_vector_Delta = Array{GrossScalar{T}, 1}(length(pop_array))
	    performance_vector_GD = Array{GrossScalar{T}, 1}(length(pop_array))
	    performance_vector_IGD = Array{GrossScalar{T}, 1}(length(pop_array))
		for i in eachindex(pop_array)
			performance_vector_GD[i] = compute_GD_performance(pop_array[i], true_pareto, ZERO, minimize)
			performance_vector_IGD[i] = compute_IGD_performance(pop_array[i], true_pareto, i, ZERO, minimize)
			performance_vector_Delta[i] = max(performance_vector_GD[i], performance_vector_IGD[i])
		end
		return performance_vector_Delta, performance_vector_GD, performance_vector_IGD
	end

	# if not separated
    performance_vector = Array{GrossScalar{T}, 1}(length(pop_array))
	for i in eachindex(pop_array)
	    performance_vector[i] = compute_GD_performance(pop_array[i], true_pareto, ZERO, minimize)
	    igd_performance = compute_IGD_performance(pop_array[i], true_pareto, i, ZERO, minimize)
	    performance_vector[i] = (igd_performance > performance_vector[i])? igd_performance : performance_vector[i]
	end
	return performance_vector
end


GD_IGD_performances(pop_array::Array{Array{GrossScalar{T},2},1}, minimize::Bool, separated::Bool=false) where{T<:Real} = _GD_IGD_performances(pop_array, minimize, separated)
GD_IGD_performances(pop_array::Array{Array{SuperDirection{T},1},1}, minimize::Bool, separated::Bool=false) where{T<:Real} = _GD_IGD_performances(pop_array, minimize, separated)
end #module
