function _nsga(::indiv{G,Ph,Y,C}, sense, lexico, popSize, nbGen, init, z, fdecode, fdecode!,
    fCV , pmut, fmut, fcross, seed, fplot, plotevery, refreshtime;
    binarycoding::BinaryCoding=nothing)::Vector{indiv{G,Ph,Y,C}} where {G,Ph,Y,C}

    popSize = max(popSize, length(seed))
    isodd(popSize) && (popSize += 1)
    P = Vector{indiv{G,Ph,Y,C}}(undef, 2*popSize)
    P[1:popSize-length(seed)] .= [create_indiv(init(), fdecode, z, fCV) for _=1:popSize-length(seed)]
    for i = 1:length(seed)
        P[popSize-length(seed)+i] = create_indiv(convert(G, seed[i]), fdecode, z, fCV)
    end
    for i=1:popSize
        P[popSize+i] = deepcopy(P[i])
    end

    if lexico && isa(P[1].y[1], AbstractArray)
        println("Lexico dominance, gross objects")
        const highestgp = 0     #highest power in the lexico order
        const lowestpower = first(eachindex(P[1].y[1])) #lowest power
        const ignoregp = false  #don't consider the power (used by dominates())
    elseif !lexico && isa(P[1].y[1], AbstractArray)
        println("Standard dominance, gross objects")
        const highestgp = 0
        const lowestpower = 0
        const ignoregp = true
    else
        println("Standard dominance, scalar objects")
        const highestgp = 1
        const lowestpower = 1
        const ignoregp = false
        lexico = false  #lexico and nonlexico approaches are the same in this case
    end

    #this call to fast_non_dominated_sort is necessary for tournament selection
    if lexico
        lexico_fast_non_dominated_sort!(view(P, 1:popSize), sense, lowestpower)
    else
        fast_non_dominated_sort!(view(P, 1:popSize), sense, highestgp, 1, ignoregp)
    end

    @showprogress refreshtime for gen = 1:nbGen

        for i = 1:2:popSize

            pa = tournament_selection(P)
            pb = tournament_selection(P)

            crossover!(pa, pb, fcross, P[popSize+i], P[popSize+i+1], binarycoding)

            rand() < pmut && mutate!(P[popSize+i], binarycoding, fmut)
            rand() < pmut && mutate!(P[popSize+i+1], binarycoding, fmut)

            eval!(P[popSize+i], fdecode!, z, fCV)
            eval!(P[popSize+i+1], fdecode!, z, fCV)
        end

        if lexico
            lexico_fast_non_dominated_sort!(P, sense, lowestpower)
			
			#println(map(x->x.rank, P))
			#error()
			
			current_front = 1;
			ind_start = 1;
			ind_end = 1;
			while true
				if ind_end < 2*popSize && P[ind_end].rank == P[ind_end+1].rank									# if the consecutive individuals belong to the same front
					ind_end += 1;
				else 																	# the front is ended
					crowding_distance_assignment!(view(P, ind_start:ind_end), lexico)
					for i=ind_start:ind_end 											# update the rank information
						P[i].rank = current_front; 
					end
					current_front +=1;
					if ind_end > popSize                      							# need to choose part of the first front which does not fit
						shuffle!(view(P, ind_start:ind_end))    						# prevents asymmetries in the choice
						sort!(view(P, ind_start:ind_end), by = x -> x.crowding, rev=true, alg=PartialQuickSort(popSize-ind_start+1))
						break 															# stop filling next population
					end
					ind_end == popSize && break											# stop filling next population
					ind_end += 1;
					ind_start = ind_end;
				end
			end
			
        else
            fast_non_dominated_sort!(P, sense, highestgp, 1, ignoregp)
        
			let f::Int = 1
				ind = 0
				indnext = findlast(x->x.rank==f, P)
				while 0 < indnext <= popSize
					crowding_distance_assignment!(view(P, ind+1:indnext), lexico)
					ind = indnext
					f += 1
					indnext = findlast(x->x.rank==f, P)
				end
				indnext == 0 && (indnext = length(P))
				crowding_distance_assignment!(view(P, ind+1:indnext), lexico)
				shuffle!(view(P, ind+1:indnext))    #prevents asymmetries in the choice
				sort!(view(P, ind+1:indnext), by = x -> x.crowding, rev=true, alg=PartialQuickSort(popSize-ind))
			end
		end

        #gen == plotevery && println("Loading plot...")
        #gen % plotevery == 0 && fplot(P, gen)
    end

    #fplot(P, nbGen)
    view(P, 1:popSize)  #returns the first half of array (dominated and not)
   
end

function fast_non_dominated_sort!(pop::AbstractVector{T}, sense, gp::Int, firstrank::Int, ignoregp::Bool=false) where {T}
    n = length(pop)

    for p in pop
        empty!(p.dom_list)
        p.dom_count = 0
        p.rank = firstrank - 1
    end

    @inbounds for i in 1:n
        for j in i+1:n
            if dominates(sense, pop[i], pop[j], gp, ignoregp)
                push!(pop[i].dom_list, j)
                pop[j].dom_count += 1
            elseif dominates(sense, pop[j], pop[i], gp, ignoregp)
                push!(pop[j].dom_list, i)
                pop[i].dom_count += 1
            end
        end
        if pop[i].dom_count == 0
            pop[i].rank = firstrank
        end
    end

    k = UInt16(firstrank + 1)
    @inbounds while any(==(k-one(UInt16)), (p.rank for p in pop)) #ugly workaround for #15276
        for p in pop
            if p.rank == k-one(UInt16)
                for q in p.dom_list
                    pop[q].dom_count -= one(UInt16)
                    if pop[q].dom_count == zero(UInt16)
                        pop[q].rank = k
                    end
                end
            end
        end
        k += one(UInt16)
    end
    sort!(pop, by = x->x.rank, alg=Base.Sort.QuickSort)
    return k-UInt16(2)    #last rank assigned
end

function lexico_fast_non_dominated_sort!(pop::AbstractVector{T}, sense, minpower::Int) where {T}
    n = length(pop)
    for ind in pop      #initialize all ranks to 1
        ind.rank = 1
    end
    glob_highest_rank = 1
    for gp in 0:-1:minpower
        ind = 1
        last_rank_used = 0
        for i in 1:glob_highest_rank
            nextind = findfirst(x->x.rank==i+1, view(pop, ind:n)) + ind - 1
            if nextind == 0
                nextind = n+1
            end
            last_rank_used = fast_non_dominated_sort!(view(pop, ind:nextind-1), sense, gp, last_rank_used+1, false)
            ind = nextind
        end
        glob_highest_rank = last_rank_used
    end
end

function crowding_distance_assignment!(pop::AbstractVector{indiv{X,G,Y,C}}, lexico::Bool) where {X, G, Y, C}
    @assert (C <: Number || C <: AbstractArray)
    if lexico && C <: AbstractArray
        lexico_crowding_distance!(pop)
    else
        nonlexico_crowding_distance!(pop)
    end
    nothing
end

function nonlexico_crowding_distance!(pop::AbstractVector{indiv{X,G,Y,C}}) where {X, G, Y, C}
    if length(first(pop).y) == 2
        sort!(pop, by=x->x.y[1])
        pop[1].y[1] == pop[end].y[1] && return
        if C <: Number
            pop[1].crowding = pop[end].crowding = Inf
        else
            pop[1].crowding[0] = pop[end].crowding[0] = Inf
        end
        @inbounds for i = 2:length(pop)-1
            pop[i].crowding = (pop[i+1].y[1]-pop[i-1].y[1]) / (pop[end].y[1]-pop[1].y[1])
            pop[i].crowding += (pop[i-1].y[2]-pop[i+1].y[2]) / (pop[1].y[2]-pop[end].y[2])
        end
    else
        for ind in pop      #zero out the crowding distance
            if C <: Number
                ind.crowding = 0.
            else
                for p in eachindex(ind.crowding)
                    ind.crowding[p] = 0.
                end
            end
        end
        @inbounds for j = 1:length(first(pop).y) # Foreach objective
            let j = j #https://github.com/JuliaLang/julia/issues/15276
                sort!(pop, by = x-> x.y[j]) #sort by the objective value
            end
            if C <: Number      #Assign infinite value to extremas
                pop[1].crowding = pop[end].crowding = Inf
            else
                pop[1].crowding[0] = pop[end].crowding[0] = Inf
            end
            if pop[1].y[j] != pop[end].y[j]
                for i = 2:length(pop)-1
                    pop[i].crowding += (pop[i+1].y[j]-pop[i-1].y[j]) / (pop[end].y[j]-pop[1].y[j])
                end
            end
        end
    end
end

function lexico_crowding_distance!(pop::AbstractVector{indiv{X,G,Y,C}}) where {X, G, Y, C <: AbstractArray}
    for ind in pop      #zero-out crowding distance
        for p in eachindex(ind.crowding)
            ind.crowding[p] = 0.
        end
    end

    for p in reverse(eachindex(first(pop).crowding))     # Foreach level of priority
        @inbounds for j = 1:length(first(pop).y)         # Foreach objective in this priority level
            let j = j #https://github.com/JuliaLang/julia/issues/15276
                sort!(pop, by = x-> x.y[j][p])      #sort by the objective value
            end
            pop[1].crowding[p] = pop[end].crowding[p] = Inf
            if pop[1].y[j][p] != pop[end].y[j][p]
                for i = 2:length(pop)-1
                    pop[i].crowding[p] += (pop[i+1].y[j][p]-pop[i-1].y[j][p]) / (pop[end].y[j][p]-pop[1].y[j][p])
                end
            end
        end
    end
end

function tournament_selection(P)
    a, b = rand(1:length(P)÷2), rand(1:length(P)÷2)
    if P[a] < P[b]      #return the best one (crowded comparison operator)
        return P[a]
    elseif P[b] < P[a]
        return P[b]
    else
        return rand(Bool) ? P[a] : P[b]    #choose randomly if they're equal
    end
end
