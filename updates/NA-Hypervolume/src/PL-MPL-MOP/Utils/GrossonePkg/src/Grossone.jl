# Grossone symbol: ①

__precompile__()
module Grossone

using Compat, OffsetArrays

export GrossScalar, GrossVector, init_GS!, init_GV!, zero_init_GS, init_GS, zero_init_GV, init_GV, set_to_Inf!

"Sergeyev's gross-scalar type"
struct GrossScalar{T <: Real} <: AbstractArray{T,1}
    data::OffsetArray{T,1}  #Array of gross-digits
    dim::Int                #Number of components of 'data'
end

function _GrossScalar(T::Type, n::Int, lp::Int=0)
    gs = GrossScalar(OffsetArray{T}(undef, lp:(lp+n-1)), n)
    for i in eachindex(gs)
        gs[i] = 0
    end
    gs
end

function _GrossScalar(x::Void)

    x==nothing && return GrossScalar(x, 0)
    error()
end

function _showGS(io::IO, GS::GrossScalar)
    all_zero::Bool = true   #display 0 if all components are null
    for i in reverse(eachindex(GS))
        if GS[i] != 0       #display only non-null components
            all_zero = false
            if i == 0       #gross-power 0 means finite number
                print(io, "$(GS[i]) ")
                continue
            end
            if GS[i] == 1       #implicit 1 coefficient
                print(io, "ⓛ^$i ")
            elseif GS[i] == -1  #implicit -1 coefficient
                print(io, "-ⓛ^$i ")
            else
                print(io, "$(GS[i])ⓛ^$i ")  #this is the general case
            end
        end
    end
    if all_zero
        print(io, 0)
    end
end

function verify_indices(a::GrossScalar{T}, b::GrossScalar{T}) where{T}
    if eachindex(a) != eachindex(b)   #gross-powers range mismatch
        error("Both gross-scalars must be in the same range of gross-powers")
    end
end

function _broadcastGS(f, a::GrossScalar, b::GrossScalar)
    verify_indices(a,b)
    res = GrossScalar(copy(a.data), a.dim)
    for i in eachindex(res)
        res[i] = f(res[i], b[i])
    end
    res
end

function _broadcastGS(f, a::GrossScalar, r::Real)
    res = GrossScalar(copy(a.data), a.dim)
    for i in eachindex(res)
        res[i] = f(res[i], r)
    end
    res
end

function _broadcastGS(f, r::Real, a::GrossScalar)
    res = GrossScalar(copy(a.data), a.dim)
    for i in eachindex(res)
        res[i] = f(r, res[i])
    end
    res
end

function _broadcastGS!(f, a::GrossScalar, b::GrossScalar)
    verify_indices(a,b)
    for i in eachindex(a)
        a[i] = f(a[i], b[i])
    end
    a
end

function _broadcastGS!(f, a::GrossScalar, b::Real)
    for i in eachindex(a)
        a[i] = f(a[i], b)
    end
    a
end

function _sumGS(a::GrossScalar{T}, b::GrossScalar{T}; sub::Bool=false) where{T}
    verify_indices(a,b)
    if (sub)
        GrossScalar(T, (a.data).-(b.data))
    else
        GrossScalar(T, (a.data).+(b.data))
    end
end

function _sumGS_number(a::GrossScalar{T}, b::T) where{T}
    if !(0 in eachindex(a))
        error("Can't add finite number to gross-scalar whose gross-powers range doesn't include finite numbers")
    end
    gs = GrossScalar(T, copy(a.data))
    gs[0] += b
    gs
end

# Notice: in order to avoid losses in terms of higher grosspowers generated
#           by the multiplication, the grossnumbers must be normalized
#           in order to set the magnitude of a to zero, compute the
#           multiplication and then denonormalize back
function _mulGS(a::GrossScalar{T}, b::GrossScalar{T}) where{T}
    verify_indices(a,b)
    lp = eachindex(a).start
    up = eachindex(a).stop
    res = GrossScalar(T, up-lp+1, lp)
    for i in lp:up
        for j in max(lp, (lp-i)):min(up, (up-i))
            res[i+j] += a[i]*b[j]
        end
    end
    res
end

"Division of the most significant component of two GrossScalars.
The return value is a number, never negative (absolute value)"
function _approxdivGS(a::GrossScalar{T}, b::GrossScalar{T}) where{T}
    verify_indices(a,b)
    for i in reverse(eachindex(a))
        if a[i] != 0
            if (b[i] == 0)
                return Inf
            else
                return abs(a[i]/b[i])
            end
        elseif b[i] != 0
            return abs(a[i]/b[i])
        end
    end
    return NaN  #if all components were 0
end

"Returns the highest gross-power with a non-zero gross-digit of a GrossScalar.
Returns NaN if the GrossScalar is zero."
function highest_grosspower(a::GrossScalar{T}) where{T}
    for i in reverse(eachindex(a))
        a[i] != 0 && return i
    end
    NaN
end

"Division of two GrossScalar. Both must be in the same range of gross-powers.
The result is a GrossScalar with the same shape (range).
If overflow occurs, Inf is returned in the most significant digit and a warning is thrown.
If underflow occurs, all digits are 0 and a warning is thrown.
"
function _exactdivGS(a::GrossScalar{T}, b::GrossScalar{T}) where{T}
    verify_indices(a,b)
    inds = eachindex(a)
    final_result = GrossScalar(T, length(a), first(eachindex(a)))
    partial_result = GrossScalar(T, length(a), first(eachindex(a)))
    b_HP = highest_grosspower(b)     #highest non-zero-digit gross-power of b

    remainder = deepcopy(a)
    first_iteration = true  #underflow is always detected in the first iteration
    #=track the remainder highest power of the previous generation, in order to
    detect when it get stucks due to limited machine precision, that is when
    oldremHP == rem_HP.
    oldremHP is initialized to a value that is never possible for rem_HP, which
    is one plus the highest power of the range.=#
    oldremHP = last(inds) + 1

    while (!iszero(remainder))
        rem_HP = highest_grosspower(remainder)
        #this happens when division is stuck due to limited machine precision
        if rem_HP == oldremHP
            remainder[rem_HP] = 0   #set the digit to 0 (it was something very small)
            oldremHP = rem_HP       #update old_rem
            continue                #restart the iteration
        end
        oldremHP = rem_HP
        res_kP = rem_HP - b_HP
        if !(res_kP in inds)
            if res_kP > last(inds)  #overflow
                warn("The division result exceeds the range of gross-powers (too big).
                    Returning 'Inf' in the most significant gross-digit.")
                final_result[last(inds)] = Inf
            elseif first_iteration  #underflow (can only happen during first iteration)
                warn("The division result exceeds the range of gross-powers (too small).
                    Returning 0 in all gross-digit.")
            end
            return final_result
        else    #if no overflow
            final_result[res_kP] = partial_result[res_kP] = remainder[rem_HP] / b[b_HP]
            remainder = remainder - (b * partial_result)
            first_iteration = false
            partial_result[res_kP] = 0
        end
    end
    return final_result
end

function _islessGS(a::GrossScalar{T}, b::GrossScalar{T}) where{T}
    verify_indices(a,b)
    for i in reverse(eachindex(a))
        if (a[i] < b[i])
            return true
        elseif (b[i] < a[i])
            return false
        end
    end
    return false
end

function init_GS!(a::GrossScalar{T}, b::Array{T,1}) where{T}
    if length(a) != length(b)
        error("The gross-scalar dimension does not match the length of the given init array")
    end
    hp = eachindex(a).stop
    for i in eachindex(b)
        a[hp-i+1] = b[i]
    end
end

# DONE BY LORENZO (So they may be wrong...)

function _GrossScalar(ref::Array{T,1}, lp::Int=0) where{T}
    gs = _GrossScalar(T, length(ref), lp)
    init_GS!(gs, ref)
    gs
end

function _zero_initGS(a::GrossScalar{T}) where{T}
    up = eachindex(a).stop
    lp = eachindex(a).start
    n = up-lp+1
    return _GrossScalar(typeof(first(a)), n, lp)
end

function _minGS(a::GrossScalar{T}, b::GrossScalar{T}) where{T}
    (a<b)? _initGS(a) : _initGS(b)
end

function _maxGS(a::GrossScalar{T}, b::GrossScalar{T}) where{T}
    (a>b)? _initGS(a) : _initGS(b)
end

function init_GS!(a::GrossScalar{T}, b::GrossScalar{T}) where{T}
    a = deepcopy(b)
end

function init_GS!(a::Array{GrossScalar{T},1}, b::GrossScalar{T}) where{T}
    for i in length(a)
        a[i] = deepcopy(b)
    end
end

function _initGS(a::GrossScalar{T}) where{T}
    gs = _zero_initGS(a)
    for i in eachindex(gs)
        gs[i] = a[i]
    end
    gs
end

function _absGS(a::GrossScalar{T}) where{T}
    if last(a) < 0
        return _initGS(-1*a)
    end
    return _initGS(a)
end

function _powGS(a::GrossScalar{T}, b::Int64) where{T}
    if b<0
        error("Negative power rising not yet implemented")
    end

    if b==1
        return _initGS(a)
    end
    
    if b>0
        if eachindex(a).stop !=0
            ### TMP
                error("Pow implemented only for finite magnitude AN")
            ###
            c, up = _shift_to_finite(a)
            tmp = _initGS(c)
            for i = 2:b
                tmp *= c
            end
            return _shift_from_finite(tmp, up*b)
        else
            tmp = _initGS(a)
            for i = 2:b
                tmp *= a
            end
            return tmp
        end
    end    
end

#Notice: we are assuming that a has up=0
function _sqrtGS(a::GrossScalar{T}) where{T}
    normalizer = a[0]
    
    # In this case the sqrt may be not computable in the actual architecture
    # Thus we approximate the sqrt with the double of the number
    # "Reasonable" approximation because the statistics will be computed on
    #   the finite parts of the metrics
    if a[0] == 0
        b, up = _shift_to_finite(a)
        if up%2 != 0
            return error("only even powers are allowed")
        end
        b = _sqrtGS(b)
        return _shift_from_finite(b, convert(Int64, up/2))
    end
    
    lp = eachindex(a).start
    
    # create a vector of zeros where the first digit is a one
    one = zeros(1-lp)
    one[1] = 1
    
    # create a GrossScalar having value one
    ONE = _zero_initGS(a)
    init_GS!(ONE, one)
    
    # compute the Taylor expansion
    epsilon = a/normalizer - ONE
    _epsilon = deepcopy(epsilon)
    
    ONE += 0.5*epsilon;
    fact_i = 1; # factorial(i), kept for speeding up the computation
    
    for i=2:-lp
        fact_i *= i;
        coef = (-1)^i*factorial(i<<1)/((1-(i<<1))*(fact_i)^2<<(i<<1))
        epsilon *= _epsilon;
        ONE += coef*epsilon
    end
    
    # now in ONE is stored the normalized result
    sqrt(normalizer)*ONE
    
end

function _shift_to_finite(a::GrossScalar{T}) where{T}
    up = eachindex(a).stop
    if up != 0
        error("_shift_to_finite not yet implemented for GrossScalar with up != 0")
    end

    if a[0] != 0
        return _initGS(a), up    
    end
    
    count = -1
    while a[count] == 0
            count -=1
    end

    b = _zero_initGS(a)
    lp = eachindex(a).start
    
    for i=lp:count
        b[i-count] = a[i]
    end
    
    return b, count
    
end

function _shift_from_finite(a::GrossScalar{T}, up::Int64) where{T}
    if up > 0
        error("_shift_from_finite not implemented yet for GrossScalar with up > 0")
    end
    
    lp = eachindex(a).start
    b =  _zero_initGS(a)
    for i=(lp-up):0
        b[up+i] = a[i]
    end
    return b
end

function _sqrt(a::GrossScalar{T}) where{T}
    if eachindex(a).stop != 0
        error("Sqrt implemented only for AN having finite magnitude")
    end
    return _sqrtGS(a)
end

function _normGS(a::Array{GrossScalar{T},1}) where{T}
    ### TMP
    if eachindex(a[1]).stop != 0
        error("Norm implemented only for AN having finite magnitude")
    end 
    ###
    #b, _ = _shift_to_finite(a[1])
    
    ########################################################
    
    # Operations needed for avoiding losses in precision
    
    up = eachindex(a[1]).stop
    lp = eachindex(a[1]).start
    n = (up-lp)*2+1
    squared_norm = GrossScalar(typeof(a[1][up]), n, lp*2)
    resized_norm = zero_init_GS(a[1])
    
    ########################################################
    
    for gs in a
        tmp_gs = GrossScalar(typeof(a[1][up]), n, lp*2)
        tmp_gs[lp:up] = gs[lp:up]
        squared_norm += tmp_gs*tmp_gs
    end
    # If the sqared norm is not zero compute the sqrt
    if squared_norm != zero_init_GS(squared_norm)
        extended_norm = _sqrtGS(squared_norm)
        init_GS!(resized_norm, reverse(parent(extended_norm[lp:up].data)))
    end
    resized_norm
end

function set_to_Inf!(a::GrossScalar{Float64})
    a[eachindex(a).stop] = Inf
end

function _one(::Type{GrossScalar{T}}) where{T}
    ONE = GrossScalar(T, 1, 0)
    init_GS!(ONE, [convert(T,1)])
    ONE
end

# END DONE BY LORENZO

"""
    GrossScalar([T,] n[, lp]])
Construct a gross-scalar with n gross-digits of type T.
The lowest gross-power is lp, or 0 if not specified.
If T is missing, the default type is Float64.
The GrossScalar is initialized to 0 (all powers) by default.

#Examples
```julia-repl
julia> gs = GrossScalar(10);
Grossone.GrossScalar{Float64} with indices 0:9:
...
```
"""
GrossScalar{T}(::Type{T}, n::Int, lp::Int = 0) = _GrossScalar(T, n, lp)
GrossScalar(n::Int) = GrossScalar(Float64, n)
GrossScalar{T}(::Type{T}, oa::OffsetArray{T}) = GrossScalar(oa, 1 + eachindex(oa).stop - eachindex(oa).start)
GrossScalar{T}(oa::OffsetArray{T}) = GrossScalar(oa, 1 + eachindex(oa).stop - eachindex(oa).start)
GrossScalar{T}(gs::GrossScalar{T}) = GrossScalar(T, gs.data)
GrossScalar{T}(ref::Array{T,1}, lp::Int = 0) where{T} = _GrossScalar(ref, lp)
#GrossScalar{T}(x::Void) = _GrossScalar(x)
zero_init_GS(a::GrossScalar{T}) where{T} = _zero_initGS(a)
init_GS(a::GrossScalar{T}) where{T} = _initGS(a)
Base.size(GS::GrossScalar) = (GS.dim,)
Base.IndexStyle(::Type{<:GrossScalar}) = IndexLinear()
Base.similar(GS::GrossScalar, ::Type{T}, d::Dims) where {T} = GrossScalar(T, d[1], 1)   #last 1 avoids index-shifting when doing [:]
Base.getindex(GS::GrossScalar, i::Int) = GS.data[i]
Base.setindex!(GS::GrossScalar, v, i::Int) = (GS.data[i] = v)
Base.show(io::IO, GS::GrossScalar) = _showGS(io, GS)
Base.indices(GS::GrossScalar) = indices(GS.data)
Base.sqrt(a::GrossScalar) = _sqrt(a)
Base.norm(a::Array{GrossScalar{T},1}) where{T} = _normGS(a)
Base.:(+)(a::GrossScalar{T}, b::GrossScalar{T}) where{T} = _sumGS(a,b)
Base.:(+)(a::GrossScalar{T}, b::T) where{T<:Real} = _sumGS_number(a,b)
Base.:(+)(a::T, b::GrossScalar{T}) where{T<:Real} = _sumGS_number(b,a)
Base.:(-)(a::GrossScalar{T}, b::GrossScalar{T}) where{T} = _sumGS(a,b,sub=true)
Base.:(-)(a::GrossScalar{T}, b::T) where{T<:Real} = _sumGS_number(a,-b)
Base.:(-)(a::T, b::GrossScalar{T}) where{T<:Real} = _sumGS_number(b,-a)
Base.:(*)(a::GrossScalar{T}, b::GrossScalar{T}) where{T} = _mulGS(a,b)
Base.:(/)(a::GrossScalar{T}, b::GrossScalar{T}) where{T<:Integer} = _approxdivGS(a,b)
Base.:(/)(a::GrossScalar{T}, b::GrossScalar{T}) where{T} = _exactdivGS(a,b)
Base.:(^)(a::GrossScalar{T}, b::Int64) where{T} = _powGS(a,b)
#Base.:(=)(a::GrossScalar{T}, b::GrossScalar{T}) where{T} = init_GS!(a,b)
#Base.:(=)(a::Array{GrossScalar{T},1}, b::GrossScalar{T}) where{T} = init_GS!(a,b)
Base.Broadcast._containertype(::Type{<:GrossScalar}) = GrossScalar
Base.Broadcast.promote_containertype(::Type{GrossScalar}, _) = GrossScalar
Base.Broadcast.promote_containertype(_, ::Type{GrossScalar}) = GrossScalar
Base.Broadcast.promote_containertype(::Type{GrossScalar}, ::Type{GrossScalar}) = GrossScalar
Base.Broadcast.promote_containertype(::Type{GrossScalar}, ::Type{Array}) = GrossScalar
Base.Broadcast.promote_containertype(::Type{Array}, ::Type{GrossScalar}) = GrossScalar
Base.Broadcast.broadcast_c(f, ::Type{GrossScalar}, a::GrossScalar, b::GrossScalar) = _broadcastGS(f,a,b)
Base.Broadcast.broadcast_c(f, ::Type{GrossScalar}, a::GrossScalar, b::Real) = _broadcastGS(f,a,b)
Base.Broadcast.broadcast_c(f, ::Type{GrossScalar}, a::Real, b::GrossScalar) = _broadcastGS(f,a,b)
Base.Broadcast.broadcast_c!(f, ::Type{GrossScalar}, ::Type{GrossScalar}, dest::GrossScalar, a::GrossScalar, b::GrossScalar) = _broadcastGS!(f,a,b)
Base.Broadcast.broadcast_c!(f, ::Type{GrossScalar}, ::Type{GrossScalar}, dest::GrossScalar, a::GrossScalar, b::Real) = _broadcastGS!(f,a,b)
Base.:(==)(a::GrossScalar{T}, b::GrossScalar{T}) where{T} = a.data == b.data
Base.:(abs)(a::GrossScalar{T}) where{T} = _absGS(a)
Base.isless(a::GrossScalar{T}, b::GrossScalar{T}) where{T} = _islessGS(a,b)
Base.min(a::GrossScalar{T}, b::GrossScalar{T}) where{T} = _minGS(a,b)
Base.max(a::GrossScalar{T}, b::GrossScalar{T}) where{T} = _maxGS(a,b)
## ADDED FOR PAIRWISE (DISTANCES PKG)
Base.one(::Type{GrossScalar{T}}) where{T} = _one(GrossScalar{T})
Base.abs2(a::GrossScalar{T}) where{T} = (a*a)

"Sergeyev's gross-vector type"
struct GrossVector{T} <: AbstractArray{GrossScalar{T},1}
    data::Array{GrossScalar{T},1}   #Array of gross-scalars
    dim::Int                        #Number of components of 'data'
end

function _showGV(io::IO, GV::GrossVector)
    for i in eachindex(GV)
        println(io, "$i) $(GV[i])")
    end
end

function _GrossVector(T::Type, m::Int, n::Int, lp::Int=0)
    gv = GrossVector(Array{GrossScalar{T},1}(m), m);
    for i in eachindex(gv)
        gv[i] = GrossScalar(T, n, lp);
    end
    gv
end

function init_GV!(a::GrossVector{T}, scalars::Array{T,1}...) where{T}
    if length(a) != length(scalars)     #check the number of arguments
        error("The gross-vector dimension does not match the number of init arguments")
    end
    for s in scalars
        if length(s) != length(a[1])    #check the dimension of all arguments
            error("The lengths of init arrays don't match the dimension of gross-scalars")
        end
    end
    for i in eachindex(a)
        init_GS!(a[i], scalars[i])
    end
end

# DONE BY LORENZO (So they may be wrong...)

function _zero_initGV(a::GrossVector{T}) where{T}
    l = length(a)
    up = eachindex(a[1]).stop
    lp = eachindex(a[1]).start
    n = up-lp+1
    return GrossVector(typeof(first(a[1])), l, n, lp)
end

function _initGV(a::GrossVector{T}) where{T}
    gv = _zero_initGV(a)
    for i in eachindex(gv)
        gv[i] = _initGS(a[i])
    end
    gv
end

function _initGV(a::Array{T,2}) where{T<:GrossScalar}
    up = eachindex(a[1]).stop
    lp = eachindex(a[1]).start
    n = up-lp+1
    gv = GrossVector(typeof(first(a[1])),length(a),n,lp)
    for i in eachindex(gv)
        gv[i] = _initGS(a[i])
    end
    gv
end

function _islessGV(a::GrossVector{T}, b::GrossVector{T}) where{T}
    _verifyGV(a,b)
    
    for i in eachindex(a)
        if a[i] >= b[i]
            return false
        end
    end
    
    return true
end

function _absGV(gv::GrossVector{T}) where{T}
    
    z = _zero_initGS(gv[1])
    out = _initGV(gv)
    for i in eachindex(gv)
        if out[i] < z
            out[i] = _initGS(-1*gs)
        end
    end
    out
end

function _verifyGV(a::GrossVector{T}, b::GrossVector{T}) where{T}
    if length(a) != length(b)
        error(string("GrossVectors must have the same length, given ", length(a), " and ", length(b), " instead"))
    end
end

function _sumGV(a::GrossVector{T}, b::GrossVector{T}, sub::Bool)  where{T}
    _verifyGV(a,b)
    gv = _zero_initGV(a)
    if (sub)
        for i in eachindex(a)
            gv[i] = a[i]-b[i]
        end
    else
        for i in eachindex(a)
            gv[i] = a[i]+b[i]
        end
    end
    gv
end

function broadcast_GV(f, r::Array{T,1}, gv::GrossVector{T}) where{T}
    if length(r) != length(gv)
        error(string("Vectors must have the same length, given ", length(a), " and ", length(b), " instead"))
    end
    
    res = GrossScalar(copy(a.data), a.dim)
    for i in eachindex(res)
        res[i] = f(r[i], a[i])
    end
    res
end

function _maximumGV(a::GrossVector{T}) where{T}
    max = a[1]
    for i=2:length(a)
        if a[i] > max
            max = a[i]
        end
    end
    return _initGS(max)
end

function _maximumGV(a::Array{GrossScalar{T},2}) where{T}
    s = size(a)
    max = zero_init_GS(a[1,1])
    for s1=1:s[1]
        for s2=1:s[2]
            if a[s1,s2] > max
                max = a[s1,s2]
            end
        end
    end
    return _initGS(max)
end

function _maximumGV(a::Array{GrossScalar{T},1}) where{T}
    max = zero_init_GS(a[1])
    for s1 in eachindex(a)
        if a[s1] > max
            max = a[s1]
        end
    end
    return _initGS(max)
end

function _minimumGV(a::Array{GrossScalar{T},2}) where{T}
    s = size(a)
    min = zero_init_GS(a[1,1])
    for s1=1:s[1]
        for s2=1:s[2]
            if a[s1,s2] < min
                min = a[s1,s2]
            end
        end
    end
    return _initGS(min)
end

function _minimumGV(a::Array{GrossScalar{T},1}) where{T}
    min = zero_init_GS(a[1])
    for s1 in eachindex(a)
        if a[s1] < min
            min = a[s1]
        end
    end
    return _initGS(min)
end


# Notice: we may think to compact the next two function in a single one, also above
function _maximumGV(a::Array{GrossScalar{T},2}, dim::Int64) where{T}
    if dim != 2 && dim != 1
        error("Dimension out of bounds")
    end
    
    other_dim = (dim==2)? 1 : 2
    s = size(a)[other_dim]
    max = Array{GrossScalar{T},1}(s)
    for j=1:s
        if dim == 2
            max[j] = _maximumGV(a[j,:])
        else
            max[j] = _maximumGV(a[:,j])
        end
    end
    max
end

function _minimumGV(a::Array{GrossScalar{T},2}, dim::Int64) where{T}
    if dim != 2 && dim != 1
        error("Dimension out of bounds")
    end
    
    other_dim = (dim==2)? 1 : 2
    s = size(a)[other_dim]
    min = Array{GrossScalar{T},1}(s)
    for j=1:s
        if dim == 2
            min[j] = _minimumGV(a[j,:])
        else
            min[j] = _minimumGV(a[:,j])
        end
    end
    min
end

function _stdmGV(a::Array{GrossScalar{T},1}, m::GrossScalar{T}) where{T}
    num_elem = length(a)
    
    ####################################################################
    
    # Operations needed for avoiding losses in precision
    
    up = eachindex(a[1]).stop
    lp = eachindex(a[1]).start
    n = (up-lp)*2+1
    squared_std = GrossScalar(typeof(a[1][up]), n, lp*2)
    resized_std = init_GS(a[1])
    
    #####################################################################
    
    b = deepcopy(a)
    for i=1:num_elem
        b[i]-=m
    end
    
    for gs in b
        tmp_gs = GrossScalar(typeof(a[1][up]), n, lp*2)
        tmp_gs[lp:up] = gs[lp:up]
        squared_std += tmp_gs*tmp_gs
    end
    
    squared_std /= num_elem
    all(x->x==0, squared_std)? extended_std = squared_std : extended_std = _sqrtGS(squared_std)
    init_GS!(resized_std, reverse(parent(extended_std[lp:up].data)))
    resized_std
end

function _meanGV(a::Array{GrossScalar{T},1}) where{T}
    num_elem = length(a)
    total = _zero_initGS(a[1])
    
    for gs in a
        total += gs
    end
    
    total/num_elem
end

function _meanGV(A::Array{GrossScalar{T},2}, dim::Int64=0) where{T}
    if dim == 0
        a = reshape(A, 1, :)
        return _meanGV(a)
    else
        if dim == 1
            num_elem = length(A[:,1])
            mean = Array{GrossScalar{typeof(A[1,1][eachindex(A[1,1]).start])}, 1}(num_elem)
            for i=1:num_elem
                mean[i] = _meanGV(A[i,:])
            end
        elseif dim == 2
            num_elem = length(A[1,:])
            mean = Array{GrossScalar{typeof(A[1,1][eachindex(A[1,1]).start])}, 1}(num_elem)
            for i=1:num_elem
                mean[i] = _meanGV(A[:,i])
            end
        else
            error("The dimension must be an integer smaller or equal to 2")
        end
        
        return mean
    end 
end

function _sumGV(A::Array{GrossScalar{T},N}, b::GrossScalar{T}, sub::Bool) where{T<:Real, N<:Integer}
    B = deepcopy(A)
    
    if sub
        for gs in B
            gs -= b
        end
    else
    for gs in B
            gs += b
        end
    end
    
    B
end

function _sumGV(A::Array{GrossScalar{T},1}, b::GrossScalar{T}, sub::Bool) where{T}
    B = deepcopy(A)
    
    if sub
        for gs in B
            gs -= b
        end
    else
    for gs in B
            gs += b
        end
    end
    
    B
end

# END DONE BY LORENZO

"""
    GrossVector([T,]m, n[, lp]])
Construct an uninitialized gross-vector with m gross-scalars of type T.
Each gross-scalar has n digits.
The lowest gross-power is lp, or 0 if not specified.
If T is missing, the default type is Float64.

#Examples
```julia-repl
julia> gv = GrossVector(Int64,4,3,-1)
4-element Grossone.GrossVector{Int64}:
...
```
"""
GrossVector(::Type{T}, m::Int, n::Int, lp::Int=0) where {T} = _GrossVector(T, m, n, lp);
GrossVector(m::Int, n::Int, lp::Int=0) = GrossVector(Float64, m, n, lp);
zero_initGV(a::GrossVector{T}) where{T} = _zero_initGV(a)
init_GV(a::GrossVector{T}) where{T} = _initGV(a)
init_GV(a::Array{T,2}) where{T<:GrossScalar} = _initGV(a)
Base.size(GV::GrossVector) = (GV.dim,)
Base.IndexStyle(::Type{<:GrossVector}) = IndexLinear()
Base.similar(GV::GrossVector, ::Type{T}, d::Dims) where {T} = GrossVector(typeof(first(GV[1])), d[1], length(GV[1]), start(GV[1])[2])
Base.indices(GV::GrossVector) = indices(GV.data)
Base.getindex(GV::GrossVector, i::Int) = GV.data[i]
Base.setindex!(GV::GrossVector, v, i::Int) = (GV.data[i] = v)
Base.show(io::IO, GV::GrossVector) = _showGV(io, GV)
Base.isless(a::GrossVector, b::GrossVector) = _islessGV(a,b)
Base.:(+)(a::GrossVector{T}, b::GrossVector{T}) where{T} = _sumGV(a,b,false)
Base.:(+)(a::Array{GrossScalar{T},N}, b::GrossScalar{T}) where{T<:Real, N<:Integer} = _sumGV(a,b,false)
Base.:(+)(a::Array{GrossScalar{T},2}, b::GrossScalar{T}) where{T} = _sumGV(a,b,false)
Base.:(-)(a::GrossVector{T}, b::GrossVector{T}) where{T} = _sumGV(a,b,true)
Base.:(-)(a::Array{GrossScalar{T},N}, b::GrossScalar{T}) where{T<:Real, N<:Integer} = _sumGV(a,b,true)
Base.:(-)(a::Array{GrossScalar{T},1}, b::GrossScalar{T}) where{T} = _sumGV(a,b,true)
Base.abs(a::GrossVector{T}) where{T} = _absGV(a)
Base.Broadcast.broadcast_c(f, ::Type{GrossVector}, a::Array{T,1}, b::GrossVector{T}) where{T} = _broadcastGV(f,a,b)
Base.:(maximum)(a::Array{GrossScalar{T},2}, dim::Int64) where{T} = _maximumGV(a, dim)
Base.:(minimum)(a::Array{GrossScalar{T},2}, dim::Int64) where{T} = _minimumGV(a, dim)
Base.:(maximum)(a::GrossVector{T}) where{T} = _maximumGV(a)
Base.:(maximum)(a::Array{GrossScalar{T},2}) where{T} = _maximumGV(a)
Base.:(maximum)(a::Array{GrossScalar{T},1}) where{T} = _maximumGV(a)
Base.:(minimum)(a::Array{GrossScalar{T},2}) where{T} = _minimumGV(a)
Base.:(minimum)(a::Array{GrossScalar{T},1}) where{T} = _minimumGV(a)
Base.:(mean)(a::Array{GrossScalar{T},1}) where{T} = _meanGS(a)
Base.:(mean)(a::Array{GrossScalar{T},2}, dim::Int64=0) where{T} = _meanGV(a,dim)
Base.:(stdm)(a::Array{GrossScalar{T},1}, m::GrossScalar{T}) where{T} = _stdmGV(a,m)

end
