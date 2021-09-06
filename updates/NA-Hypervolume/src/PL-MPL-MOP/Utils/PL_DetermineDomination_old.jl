function PL_DetermineDomination!(pop, minimization, fronts::Bool=true)

    nPop=length(pop)
    
    if :IsDominated in fieldnames(typeof(pop[1]))

        for i=1:nPop
            pop[i].IsDominated=false
        end
        
        for i=1:nPop
            for j=(i+1):nPop
                if PL_Dominates(pop[i],pop[j], minimization)
                    pop[j].IsDominated=true
                    
                elseif PL_Dominates(pop[j],pop[i], minimization)
                    pop[i].IsDominated=true   
                end
            end
        end
    else
    
        for i=1:nPop
            pop[i].dominated=false
        end
        
        for i=1:nPop
            for j=(i+1):nPop
                if PL_Dominates(pop[i],pop[j], minimization)
                    pop[j].dominated=true
                    
                elseif PL_Dominates(pop[j],pop[i], minimization)
                    pop[i].dominated=true   
                end
            end
        end
    end
    
    if fronts
        if minimization
            PL_DetermineDomination_minimization!(pop)
        else
            PL_DetermineDomination_maximization!(pop)
        end
    end
end

function PL_DetermineDomination_minimization!(pop)
    
    nPop=length(pop)
    
    if :IsDominated in fieldnames(typeof(pop[1]))
        for l=2:pop[1].Cost.numLevels
            for i=1:nPop
                if !pop[i].IsDominated
                    for j=i+1:nPop
                        if !pop[j].IsDominated
                            if Dominates_minimization(pop[i].Cost[l], pop[j].Cost[l])
                                pop[j].IsDominated=true
                            elseif Dominates_minimization(pop[j].Cost[l], pop[i].Cost[l])
                                pop[i].IsDominated=true
                            end
                        end
                    end
                end
            end
        end
    else
        for l=2:pop[1].cost.numLevels
            for i=1:nPop
                if !pop[i].dominated
                    for j=i+1:nPop
                        if !pop[j].dominated
                            if Dominates_minimization(pop[i].cost[l], pop[j].cost[l])
                                pop[j].dominated=true
                            elseif Dominates_minimization(pop[j].cost[l], pop[i].cost[l])
                                pop[i].dominated=true
                            end
                        end
                    end
                end
            end
        end
    end
end

function PL_DetermineDomination_maximization!(pop)
    
    nPop=length(pop)
    
    if :IsDominated in fieldnames(typeof(pop[1]))
        for l=2:pop[1].Cost.numLevels
            for i=1:nPop
                if !pop[i].IsDominated
                    for j=i+1:nPop
                        if !pop[j].IsDominated
                            if Dominates_maximization(pop[i].Cost[l], pop[j].Cost[l])
                                pop[j].IsDominated=true
                            elseif Dominates_maximization(pop[j].Cost[l], pop[i].Cost[l])
                                pop[i].IsDominated=true
                            end
                        end
                    end
                end
            end
        end
    else
        for l=2:pop[1].cost.numLevels
            for i=1:nPop
                if !pop[i].dominated
                    for j=i+1:nPop
                        if !pop[j].dominated
                            if Dominates_maximization(pop[i].cost[l], pop[j].cost[l])
                                pop[j].dominated=true
                            elseif Dominates_maximization(pop[j].cost[l], pop[i].cost[l])
                                pop[i].dominated=true
                            end
                        end
                    end
                end
            end
        end
    end
end