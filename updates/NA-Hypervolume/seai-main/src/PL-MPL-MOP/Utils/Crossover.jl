function Crossover(ind1, ind2, params, integer)
    
    gamma=params.gamma
    VarMin=params.VarMin
    VarMax=params.VarMax
    mutation_prob=params.Mutation_probability
    mutation_type=params.Mutation_type
    
    alpha=rand(Float64, size(ind1))*(1+2*gamma)-gamma
    
    y=alpha.*ind1+(1-alpha).*ind2
    
    y=min.(max.(y,VarMin),VarMax)
    
    if rand() < mutation_prob
        Mutate!(y, mutation_type, [VarMin VarMax])
    end
    
    if integer  
        y=round.(y)
    end
    
    return y
end
