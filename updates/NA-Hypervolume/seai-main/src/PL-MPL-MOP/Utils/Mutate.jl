function Mutate!(ind, mutation_type, args="")
    
    if mutation_type=="shrink"
        Shrink!(ind)
    elseif mutation_type=="rand"
        Rand!(ind, args)
    else
        Swap!(ind)
    end
end

function Swap!(ind)
    
    dim = length(ind)
    
    index1 = rand(1:dim)
    index2 = rand(1:dim-1)
    if index1 == index2
        index2 = dim
    end

    tmp = ind[index1]
    ind[index1] = ind[index2]
    ind[index2] = tmp
end

function Shrink!(ind)

    dim = length(ind)
    target = rand(1:dim)
    if rand() < 0.5
        ind[target]*=rand()
    else
        ind[target]*=(1+rand())
    end
end

function Rand!(ind, args)

    VarMin = args[:,1]
    VarMax = args[:,2]

    newVal = rand(length(VarMin)).*(VarMax-VarMin)+VarMin
    decision = rand(length(VarMin))

    ind[(x->x<0.15).(decision)] = newVal[(x->x<0.15).(decision)]

end
