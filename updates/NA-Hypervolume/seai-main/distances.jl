using LinearAlgebra
include("./src/ArithmeticNonStandarNumbersLibrary/src/BAN.jl")

include("./hv.jl")

function _min(l::NTuple{N, Ban} where N)
    tmp = Inf
    for i in l
        if tmp > i
            tmp = i
        end
    end
    return tmp
end

Base.min(l::Ban...) = _min(l)

function _max(l::NTuple{N, Ban} where N)
    tmp = -Inf
    for i in l
        if tmp < i
            tmp = i
        end
    end
    return tmp
end

Base.max(l::Ban...) = _max(l)

# ^ p not defined, si lavora con p = 1
function distance(ei, set, plus = false, p::Integer = 1, igd = false) # ei = element i , set = set in cui prendere la minima distanza
    tmp = []
    for v in set
        Base.append!(tmp, [ei - v])
    end
    if plus
        for i in 1:length(tmp)
            if igd
                tmp[i] = -tmp[i]
            end
            tmp[i][tmp[i] .< 0] .= 0
        end
    end
    distances = []
    for v in tmp
        Base.append!(distances, LinearAlgebra.norm(v))
    end
    
    return min(distances...) # ^p
end

function gd(solutions, reference_point_set, plus = false, p = 1, igd = false)
    sum = 0
    for s in solutions
        sum += distance(s, reference_point_set, plus, p, igd)
    end
    sum = sum # ^ (1/p)
    return sum / length(solutions)
end

function igd(solutions, reference_point_set, plus = false, p = 1)
    return gd(reference_point_set, solutions, plus, p, true)
end

function delta(solutions, reference_point_set, plus = false)
    return max(gd(solutions, reference_point_set, plus), igd(solutions, reference_point_set, plus))
end

# Fig 1
# A = [[2 + 4η , 5 + 5η]]
# B = [[3 + 4η, 9 + 5η]]
# Z = [[0, 10], [1, 0]]
# Zhv = [10, 10]

# Fig 2 (Fig 4)
# A = [[1 + 2η, 1 + 4η], [1 + 3η, 1 + 3η], [1 + 4η, 1+ 2η]]
# B = [[1 + 2η, 1 + 8η], [1 + 4η, 1+ 4η], [1 + 8η, 1 + 2η]]
# Z = [[1, 1 + 10η], [1 + η, 1 + 6η], [1 + 2η, 1 + 2η], [1 + 6η, 1 + η], [1 + 10η, 1]]
# Zhv = [10, 10]

# Fig 3 (idea from Fig 6)
# A = [[1+ 5η, 5 + η]]
# B = [[5 + 10η, 6 + 9η]]
# Z = [[4, 4]]
# Zhv = [10, 10]

# Fig 4 (idea from Fig 9)
A = [[1 + 10η, 8 + 3η], [8 + 4η, 1 - 3η], [2 - 1η, 2 - 1η]]
B = [[2 - 1η, 2 - 1η]]
Z = [[0, 0]]
Zhv = [10, 10]

println(" ")
print("gd = ")
print(gd(A, Z))
print(" ")
println(gd(B, Z))
print("gd+ = ")
print(gd(A, Z, true))
print(" ")
println(gd(B, Z, true))
print("igd = ")
print(igd(A, Z))
print(" ")
println(igd(B, Z))
print("igd+ = ")
print(igd(A, Z, true))
print(" ")
println(igd(B, Z, true))
println("")
println("")
print("delta = ")
print(delta(A, Z))
print(" ")
println(delta(B, Z))
print("delta+ = ")
print(delta(A, Z, true))
print(" ")
println(delta(B, Z, true))
println(" ")

print("HV = ")
hv = HyperVolume(Zhv)
print(compute(hv, A))
print(" ")
println(compute(hv, B))
println(" ")