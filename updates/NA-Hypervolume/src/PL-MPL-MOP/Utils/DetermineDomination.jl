function DetermineDomination(population, minimization)

    num_individuals=length(population)

    for i=1:num_individuals
        population[i].IsDominated=false
    end
    
    for i=1:num_individuals
        for j=i+1:num_individuals
            if Dominates(population[i],population[j], minimization)
                population[j].IsDominated=true
                
            elseif Dominates(population[j],population[i], minimization)
                population[i].IsDominated=true
                
            end
        end
    end
    
    return population
end