function Choose_mating(population)

    population_size = length(population)
    parents = Array{Int64,1}(population_size)
    line = cumsum((x->x.shared_fitness).(population))
    sumf = sum((x->x.shared_fitness).(population))
    max = sumf/population_size
    
    seed = (rand(Float64, population_size)+(0:population_size-1)).*max    

    for i=1:population_size
        idx = find(x->x>seed[i], line)
        parents[i] = idx[1]
    end
    
    return parents
end