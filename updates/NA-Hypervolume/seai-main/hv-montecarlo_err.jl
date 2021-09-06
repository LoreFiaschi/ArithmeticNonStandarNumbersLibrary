include("./src/ArithmeticNonStandarNumbersLibrary/src/BAN.jl")
using .BAN
using Distributions

# is point dominated by other?
function weaklyDominates(point::AbstractArray, other::AbstractArray)
    for i in 1:length(point)
        if point[i] > other[i]
            return false
        end
    end
    return true
end

function indicator(point, front)
    for p in front
        if weaklyDominates(p, point)
            return true
        end
    end
    return false
end

function cleanFront(relevantPoints)
    tmp = []
    for i in 1:length(relevantPoints)
        for j in 1:length(relevantPoints)
            if i == j # serve per non far eliminare gli stessi punti, weakly dominates va lanciato in tutti e 2 i versi
                continue
            end
            if weaklyDominates(relevantPoints[i], relevantPoints[j])
                if j ∉ tmp
                    append!(tmp, j)
                end
            end
        end
    end
    res = []
    for i in 1:length(relevantPoints)
        if i ∉ tmp
            append!(res, [relevantPoints[i]])
        end
    end
    return res
end

function shiftPointToZero(relevantPoints, referencePoint)
    min = []
    max = []
    for i in 1:length(referencePoint)
        Base.append!(min, [Inf])
    end
    for i in 1:length(referencePoint)
        Base.append!(max, [-Inf])
    end
        # shift points so that referencePoint == [0, ..., 0]
        # this way the reference point doesn't have to be explicitly used
        # in the HV computation
    for j in 1:length(relevantPoints)
        if any(a -> a != 0, referencePoint)
            relevantPoints[j] .= relevantPoints[j] - referencePoint
        end
        for i in 1:length(referencePoint) 
            if relevantPoints[j][i] < min[i]
                min[i] = relevantPoints[j][i]
            end
            if relevantPoints[j][i] > max[i]
                max[i] = relevantPoints[j][i]
            end
        end
    end
    return relevantPoints, min, max
end

function compute_mc(referencePoint, front::AbstractArray, iteration = 1000) # where T<:BAN
    relevantPoints = []
    for point in front
        # only consider points that dominate the reference point, parecchie librerie danno errore qua
        if weaklyDominates(point, referencePoint)
            Base.append!(relevantPoints, [point])
        end
    end


    relevantPoints, min, max = shiftPointToZero(relevantPoints, referencePoint)
    relevantPoints = cleanFront(relevantPoints)
    hv = 0
    hit = 0
    # questo è per calcolarlo della componente principale (leading term), per gli altri bisogna ragionare in modo diverso
    for i in 1:iteration
        tmp = [rand()*i for i in min]
        if indicator(tmp, relevantPoints)
            hit += 1
        end
    end
    volume = 1
    for i in min
        volume *= (i * -1)
    end
    hv += principal(volume) * hit / iteration
   
    while true
        # scalo di una componente
        referencePoint[1] = referencePoint[1] * η
        newMagnitude = magnitude(referencePoint[1]) # assumo che referencePoint è di 2 punti di stessa Alpha
        for i in 1:length(relevantPoints)
            for j in 1:length(relevantPoints[i])
                while magnitude(relevantPoints[i][j]) > newMagnitude
                    relevantPoints[i][j] -= principal(relevantPoints[i][j])
                    if relevantPoints[i][j] == 0 # qui c'è qualcosa con i ban che non va, perchè mi giudica 0 qualcosa che non lo è, e la principal non lavora bene
                        break
                    end
                end
            end
        end

        # se sono tutti zero i relevantPoints abbiamo finito
        stop = true
        for i in 1:length(relevantPoints)
            for j in 1:length(relevantPoints[i])
                if relevantPoints[i][j] != 0
                    stop = false
                end
            end
        end
        if stop
            break
        end

        relevantPoints, min, max = shiftPointToZero(relevantPoints, [0 for i in referencePoint])
        relevantPoints = cleanFront(relevantPoints)
        hit = 0
        for i in 1:iteration
            tmp = [rand()*(max[i] - min[i]) + min[i] for i in 1:length(min)]
            if !indicator(tmp, relevantPoints)
                hit += 1
            end
        end

        volume = 1
        for i in 1:length(min)
            volume *= (principal(max[i]) - principal(min[i]))
        end
        
        hv += (volume * hit / iteration)
        for i in min
            hv += i 
        end
    end
    return hv
end



# referencePoint = [2η, 2η]
# res = compute_mc(referencePoint, [[0.5η + 1η^2, 0η], [1η, 0.5η], [0η, 1η], [1.5η, 0.75η]])
# mi serve un ban in input
referencePoint = [Ban(2), Ban(2)]
res = compute_mc(referencePoint, [[0.5η, 0.75η], [1η, 0.5η], [0η, 1η], [1.5η, 0.75η]])
println(res)
# println(magnitude(2+ 2η))