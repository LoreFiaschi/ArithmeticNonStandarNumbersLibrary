#mutate!(ind::indiv, fmut!) = fmut!(ind.x)
mutate!(ind::indiv, bc::BinaryCoding, fmut!) = fmut!(ind.x, bc)
function rand_flip!(bits)
    nb = length(bits)
    for i = 1:nb
        if rand() < 1/nb
            @inbounds bits[i] = 1 - bits[i]
        end
    end
end
default_mutation!(b::T) where T<:AbstractVector{Bool} = rand_flip!(b)

function rand_swap!(perm::Vector{Int})
    i = j = rand(1:length(perm))
    while j == i
        j = rand(1:length(perm))
    end
    @inbounds perm[i], perm[j] = perm[j], perm[i]
end
default_mutation!(p::Vector{Int}) = rand_swap!(p)

function rand_sample!(b::T, bc::BinaryCoding) where T<:AbstractVector{Bool}

	p = decode(b, bc)
	nbvar = bc.nbvar
    lb = bc.lb
    ub = bc.ub
	newVal = rand(nbvar).*(ub-lb)+lb
	decision = rand(nbvar)
	p[(x->x<0.15).(decision)] = newVal[(x->x<0.15).(decision)]
	b = encode(p, bc)
end
default_mutation!(b::T, bc::BinaryCoding) where T<:AbstractVector{Bool} = rand_sample!(b, bc)
