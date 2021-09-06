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
    for i in 1:length(relevantPoints) - 1
        for j in i + 1:length(relevantPoints)
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

function compute_mc(referencePoint, front::AbstractArray, iteration = 100000) # where T<:BAN
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
    hv += volume * hit / iteration
    return hv
end



referencePoint = [5, 5]
res = compute_mc(referencePoint, [[1 - 0.5η, 4 + 0η], [2 - 0.5η - 0.5η, 3 - 0.5η], [3 - 0η, 2 - 1η], [4 - 1.5η, 1 - 0.75η]])
println(res)
# println(principal(2+ 2η))