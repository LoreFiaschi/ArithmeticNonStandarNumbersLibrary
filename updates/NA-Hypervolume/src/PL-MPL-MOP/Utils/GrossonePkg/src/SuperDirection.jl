__precompile__()
module SuperDirections

using Grossone

export SuperDirection, pairwise, magnitude

struct SuperDirection{T <:Real}
    direction::Array{Array{T,1},1}
    numLevels::Int64
    levelsSize::Array{Int64,1}
end

function _SuperDirection(levelsSize::Array{Int64,1}, T::Type=Float64)

    numLevels=length(levelsSize)

    direction = Array{Array{T,1},1}(numLevels)
    for i=1:numLevels
        direction[i] = zeros(T, levelsSize[i])
    end
    SuperDirection(direction, numLevels, levelsSize)
end

function _SuperDirection(direction::Array{Array{T,1},1}) where{T<:Real}

    numLevels=length(direction)
    levelsSize=Array{Int64,1}(numLevels)
    for i=1:numLevels
        levelsSize[i]=length(direction[i])
    end
    SuperDirection(direction,numLevels,levelsSize)
end

function _SuperDirection(sd::SuperDirection{T}, copy::Bool=true) where{T<:Real}

    if copy
        new_sd=SuperDirection(deepcopy(sd.direction))
    else
        new_sd=SuperDirection(sd.levelsSize, T)
    end
    new_sd
end

function _show(io::IO, sd::SuperDirection)
    
    print(io, "$(sd[1])")
    
    for i=2:sd.numLevels
        
        j=i-1
        print(io, " + $(sd[i]) ⓛ^-$j")
    end
end

function _sharingSpace(s1::SuperDirection, s2::SuperDirection)

    s1.numLevels != s2.numLevels && return false
    s1.levelsSize != s2.levelsSize && return false
    return true
end

function _sharingSpace(s::SuperDirection, gs::GrossScalar)

    s.numLevels != gs.dim && return false
    return true
end

function _pairwise(arr1::Array{SuperDirection,1}, arr2::Array{SuperDirection,1})

    ## Consistency checking ##

    lenArr1 = length(arr1)
    lenArr2 = length(arr2)
    
    for i=2:lenArr1
        ~_sharingSpace(arr1[1], arr1[i]) && error("SuperDirections not sharing the space")
    end
    
    for i=1:lenArr2
        ~_sharingSpace(arr1[1], arr2[i]) && error("SuperDirections not sharing the space")
    end
    

    ## Code body ##
    
    distances = Array{GrossScalar{Float64},2}(lenArr1,lenArr2)
    
    for i=1:lenArr1
        for j=1:lenArr2
            distances[i,j] = arr1[i]*arr2[j]
        end
    end
    
    distances
    
end

function _mul(sd1::SuperDirection, sd2::SuperDirection)

    ## Consistency checking ##

    ~_sharingSpace(sd1, sd2) && error("SuperDirections not sharing the space")
    
    
    ## Code body ##
    
    n=sd1.numLevels
    lp=1-n
    gs = GrossScalar(Float64, n, lp)
    
    for i=0:-1:lp
        gs[i]=dot(sd1[1-i], sd2[1-i])
    end
    
    gs
end

function _mul(sd::SuperDirection, gs::GrossScalar)

    ## Consistency checking ##

    ~_sharingSpace(sd, gs) && error("SuperDirection and GrossScalar not sharing the space")
    
    
    ## Code body ##
    
    lp=1-sd.numLevels
    s = SuperDirection(sd)
    
    for i=0:-1:lp
        s[1-i]= sd[1-i]*gs[i]
    end
    
    s
end

function _broadcast(f,sd1::SuperDirection{T},sd2::SuperDirection{T}) where{T<:Real}

    ## Consistency checking ##

    ~_sharingSpace(sd1, sd2) && error("SuperDirections not sharing the space")
    
    
    ## Code body ##
    
    res = SuperDirection(sd1.levelsSize)
    for i=1:sd1.numLevels
        res[i] = f.(sd1[i], sd2[i])
    end
    res
end

function _broadcast(f,sd::SuperDirection{T}) where{T<:Real}
    
    ## Code body ##
    
    res = SuperDirection(sd.levelsSize)
    for i=1:sd.numLevels
        res[i] = f.(sd[i])
    end
    res
end

function _setindex!(sd::SuperDirection, value, index::Int)

    sd.levelsSize[index] != length(value) && error("SuperDirections not sharing the space")
    for i=1:sd.levelsSize[index]
        sd[index][i] = value[i]
    end
end

function _maximum(sd::SuperDirection)

    n=sd.numLevels
    lp=1-n
    gs = GrossScalar(Float64, n, lp)
    for i=0:-1:lp
        gs[i]=maximum(sd[1-i])
    end
    gs
end

function _minimum(sd::SuperDirection)

    n=sd.numLevels
    lp=1-n
    gs = GrossScalar(Float64, n, lp)
    for i=0:-1:lp
        gs[i]=minimum(sd[1-i])
    end
    gs
end

function _isless(sd1::SuperDirection{T}, sd2::SuperDirection{T}) where{T<:Real}

    ## Consistency checking ##

    ~_sharingSpace(sd1, sd2) && error("SuperDirections not sharing the space")
    
    
    ## Code body ##
    
    for (a1, a2) in zip(sd1.direction, sd2.direction)
        a=a1-a2
        if all(x->x<=0, a)
            any(x->x<0, a) && return true
        else
            return false
        end
    end
    return false
end

function _sum(sd1::SuperDirection, sd2::SuperDirection)

    ## Consistency checking ##

    ~_sharingSpace(sd1, sd2) && error("SuperDirections not sharing the space")
    
    
    ## Code body ##
    res = SuperDirection(sd1)
    for i=1:res.numLevels
        res[i]+=sd2[i]
    end
    res
end

function _sub(sd1::SuperDirection, sd2::SuperDirection)

    ## Consistency checking ##

    ~_sharingSpace(sd1, sd2) && error("SuperDirections not sharing the space")
    
    
    ## Code body ##
    res = SuperDirection(sd1)
     for i=1:res.numLevels
        res[i]-=sd2[i]
    end
    res
end

function _magnitude(sd::SuperDirection)

    for i=1:sd.numLevels
        ~(sd[i] ≈ zero(sd[i])) && return 1-i
    end
    return -Inf
end

function _maximum(a::Array{SuperDirection{T},1}) where{T<:Real}

    max=SuperDirection(a[1])
    for sd in a[2:end]
        for i=1:sd.numLevels
            for j=1:sd.levelsSize[i]
                (max[i][j] < sd[i][j]) && (max[i][j] = sd[i][j])
            end
        end
    end
    max
end

function _minimum(a::Array{SuperDirection{T},1}) where{T<:Real}

    min=SuperDirection(a[1])
    for sd in a[2:end]
        for i=1:sd.numLevels
            for j=1:sd.levelsSize[i]
                (min[i][j] > sd[i][j]) && (min[i][j] = sd[i][j])
            end
        end
    end
    min
end

function _div(sd::SuperDirection, gs::GrossScalar)

    ## Consistency checking ##
    
    (sd.numLevels != gs.dim) && eachindex(gs).stop!=0 && error("SuperDirections not sharing the space")
    
    
    ## Code body ##
    
    res = SuperDirection(sd)
    for i=1:sd.numLevels
    
        res[i]/=gs[1-i]
    end
    res
end

function _mean(sd::SuperDirection)

    n=sd.numLevels
    lp=1-n
    gs = GrossScalar(Float64, n, lp)
    for i=0:-1:lp
        gs[i]=mean(sd[1-i])
    end
    gs
end


SuperDirection{T}(levelsSize::Array{Int64,1}, ::Type{T}=Float64) = _SuperDirection(levelsSize, T)
SuperDirection(direction::Array{Array{T,1},1}) where{T<:Real} = _SuperDirection(direction)
SuperDirection(sd::SuperDirection{T}, copy::Bool=true) where{T<:Real} = _SuperDirection(sd, copy)
pairwise(arr1::Array{SuperDirection,1}, arr2::Array{SuperDirection,1}) = _pairwise(arr1, arr2)
magnitude(sd::SuperDirection) = _magnitude(sd)
Base.:(*)(sd1::SuperDirection, sd2::SuperDirection) = _mul(sd1, sd2)
Base.:(*)(sd::SuperDirection, gs::GrossScalar) = _mul(sd, gs)
Base.:(/)(sd::SuperDirection, gs::GrossScalar) = _div(sd, gs)
Base.:(+)(sd1::SuperDirection, sd2::SuperDirection) = _sum(sd1, sd2)
Base.:(-)(sd1::SuperDirection, sd2::SuperDirection) = _sub(sd1, sd2)
Base.:(==)(sd1::SuperDirection, sd2::SuperDirection) = sd1.direction == sd2.direction
Base.isless(sd1::SuperDirection{T}, sd2::SuperDirection{T}) where{T<:Real} = _isless(sd1, sd2)
Base.Broadcast._containertype(::Type{<:SuperDirection}) = SuperDirection
Base.Broadcast.promote_containertype(::Type{SuperDirection}, _) = SuperDirection
Base.Broadcast.promote_containertype(_, ::Type{SuperDirection}) = SuperDirection
Base.Broadcast.promote_containertype(::Type{SuperDirection}, ::Type{SuperDirection}) = SuperDirection
Base.Broadcast.broadcast_c(f, ::Type{SuperDirection}, sd1::SuperDirection{T}, sd2::SuperDirection{T}) where{T<:Real} = _broadcast(f,sd1,sd2)
Base.Broadcast.broadcast_c(f, ::Type{SuperDirection}, sd::SuperDirection{T}) where{T<:Real} = _broadcast(f,sd)
Base.show(io::IO, sd::SuperDirection) = _show(io, sd)
Base.indices(sd::SuperDirection) = indices(sd.direction)
Base.getindex(sd::SuperDirection, i::Int) = sd.direction[i]
Base.setindex!(sd::SuperDirection, value, index::Int) = _setindex!(sd, value, index)
Base.maximum(sd::SuperDirection) = _maximum(sd)
Base.minimum(sd::SuperDirection) = _minimum(sd)
Base.maximum(a::Array{SuperDirection{T},1}) where{T<:Real} = _maximum(a)
Base.minimum(a::Array{SuperDirection{T},1}) where{T<:Real} = _minimum(a)
Base.norm(sd::SuperDirection) = sd*sd
Base.mean(sd::SuperDirection) =_mean(sd)

end