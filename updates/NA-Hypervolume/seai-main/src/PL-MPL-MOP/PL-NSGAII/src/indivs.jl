mutable struct indiv{G, P, Y, C}
    x::G
    pheno::P
    y::Y
    CV::Float64
    rank::UInt16
    crowding::C
    dom_count::UInt16
    dom_list::Vector{UInt16}
    indiv(x::G, pheno::P, y::Y, cv, crowding::C) where {G,P,Y,C} =
        new{G, P, Y, C}(x, pheno, y, cv, zero(UInt16), crowding, zero(UInt16), UInt16[])
end
function create_indiv(x, fdecode, z, fCV)
    pheno = fdecode(x)
    y = z(pheno)
    crowd_type = typeof(y[1])  #determine if the crowding distance is number or array-like
    crowd_length = length(y[1])
    if crowd_length == 1
        crowding = zero(crowd_type)
    else
        crowding = deepcopy(y[1])
        for i in eachindex(crowding)
            crowding[i] = 0.
        end
    end
    indiv(x, pheno, y, fCV(pheno), crowding)
end

struct Max end
struct Min end

function dominates(::Min, a::indiv, b::indiv, gp::Int, ignoregp::Bool)
    a.CV != b.CV && return a.CV < b.CV
    res = false
    for i in eachindex(a.y)
        if ignoregp
            @inbounds a.y[i] > b.y[i] && return false
            @inbounds a.y[i] < b.y[i] && (res=true)
        else
            @inbounds a.y[i][gp] > b.y[i][gp] && return false
            @inbounds a.y[i][gp] < b.y[i][gp] && (res=true)
        end
    end
    res
end

function dominates(::Max, a::indiv, b::indiv, gp::Int, ignoregp::Bool)
    a.CV != b.CV && return a.CV < b.CV
    res = false
    for i in eachindex(a.y)
        if ignoregp
            @inbounds a.y[i] < b.y[i] && return false
            @inbounds a.y[i] > b.y[i] && (res=true)
        else
            @inbounds a.y[i][gp] < b.y[i][gp] && return false
            @inbounds a.y[i][gp] > b.y[i][gp] && (res=true)
        end
    end
    res
end

Base.:(==)(a::indiv, b::indiv) = a.x == b.x
Base.hash(a::indiv) = hash(a.x)
Base.isless(a::indiv, b::indiv) = a.rank < b.rank || (a.rank == b.rank && a.crowding >= b.crowding) #Comparison operator for tournament selection
Base.show(io::IO, ind::indiv) = print(io, "indiv($(repr_pheno(ind.pheno)) : $(ind.y) | rank : $(ind.rank))")
repr_pheno(x) = repr(x)
function repr_pheno(x::Union{BitVector, Vector{Bool}})
    res = map(x->x ? '1' : '0', x)
    if length(res) <= 40
        return "["*String(res)*"]"
    else
        return "["*String(res[1:15])*"..."*String(res[end-14:end])*"]"
    end
end

function eval!(indiv::indiv, fdecode!::Function, z::Function, fCV::Function)
    fdecode!(indiv.x, indiv.pheno)
    indiv.CV = fCV(indiv.pheno)
    indiv.CV ≈ 0 && (indiv.y = z(indiv.pheno))
    indiv
end
