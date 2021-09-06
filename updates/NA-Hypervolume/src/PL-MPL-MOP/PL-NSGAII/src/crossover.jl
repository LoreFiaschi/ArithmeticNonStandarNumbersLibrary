function crossover!(ind_a, ind_b, fcross, child_a, child_b, binarycoding::BinaryCoding)
    fcross(ind_a.x, ind_b.x, child_a.x, child_b.x, binarycoding)
end

function SBX_crossover!(bits_parent_a, bits_parent_b, bits_child_a, bits_child_b, bc::BinaryCoding; mu::Int=1)
    nbvar = bc.nbvar
    lb = bc.lb
    ub = bc.ub
    parent_a_vars = decode(bits_parent_a ,bc)
    parent_b_vars = decode(bits_parent_b ,bc)
    child_a_vars = copy(parent_a_vars)
    child_b_vars = copy(parent_b_vars)

    u = rand(nbvar)     #random numbers (for probability distribution)
    beta = rand(nbvar)
    for i in 1:nbvar    #for each variable
        if u[i] <= 0.5  #calculate beta_i using the random number u
            beta[i] = (2*u[i])^(1/(mu+1))
        else
            beta[i] = (1/(2*(1 - u[i])))^(1/(mu+1))
        end
        #generate the children
        child_a_vars[i] = 0.5*(((1 + beta[i])*parent_a_vars[i])
                              + (1 - beta[i])*parent_b_vars[i])
        child_b_vars[i] = 0.5*(((1 - beta[i])*parent_a_vars[i])
                              + (1 + beta[i])*parent_b_vars[i])
        #chech for lower/upper bound overflows
        if child_a_vars[i] > ub[i]
            child_a_vars[i] = ub[i]
        elseif child_a_vars[i] < lb[i]
            child_a_vars[i] = lb[i]
        end
        if child_b_vars[i] > ub[i]
            child_b_vars[i] = ub[i]
        elseif child_b_vars[i] < lb[i]
            child_b_vars[i] = lb[i]
        end
    end
    copyto!(bits_child_a, encode(child_a_vars, bc))
    copyto!(bits_child_b, encode(child_b_vars, bc))
    nothing
end

function two_point_crossover!(bits_a, bits_b, child1, child2, bc)
    cut_a = cut_b = rand(2:length(bits_a)-1)
    while(cut_b == cut_a)
        cut_b = rand(2:length(bits_a))
    end
    cut_a,cut_b = minmax(cut_b,cut_a)

    copyto!(child1, 1, bits_a, 1, cut_a-1)
    copyto!(child1, cut_a, bits_b, cut_a, cut_b-cut_a+1)
    copyto!(child1, cut_b+1, bits_a, cut_b+1, length(bits_a)-cut_b)

    copyto!(child2, 1, bits_b, 1, cut_a-1)
    copyto!(child2, cut_a, bits_a, cut_a, cut_b-cut_a+1)
    copyto!(child2, cut_b+1, bits_b, cut_b+1, length(bits_a)-cut_b)
end

(default_crossover!(pa::T, pb::T, ca, cb, bc::BinaryCoding)) where T<:AbstractVector{Bool} =
    SBX_crossover!(pa,pb,ca,cb,bc)
    #two_point_crossover!(pa, pb, ca, cb, bc)

function PMX_crossover!(pa, pb, ca, cb, bc)
    cut_a = cut_b = rand(1:length(pa))
    while(cut_b == cut_a)
        cut_b = rand(1:length(pa))
    end
    cut_a, cut_b = minmax(cut_a, cut_b)

    copyto!(ca, 1, pb, 1, cut_a-1)
    copyto!(ca, cut_a, pa, cut_a, cut_b-cut_a+1)
    copyto!(ca, cut_b+1, pb, cut_b+1, length(pa)-cut_b)

    copyto!(cb, 1, pa, 1, cut_a-1)
    copyto!(cb, cut_a, pb, cut_a, cut_b-cut_a+1)
    copyto!(cb, cut_b+1, pa, cut_b+1, length(pa)-cut_b)

    @inbounds for i = cut_a:cut_b
        if pa[i] ∉ view(pb, cut_a:cut_b)
            j = findfirst(equalto(pb[i]), pa)
            while j ∈ cut_a:cut_b
                j = findfirst(equalto(pb[j]), pa)
            end
            cb[j] = pa[i]
        end

        if pb[i] ∉ view(pa, cut_a:cut_b)
            j = findfirst(equalto(pa[i]), pb)
            while j ∈ cut_a:cut_b
                j = findfirst(equalto(pa[j]), pb)
            end
            ca[j] = pb[i]
        end
    end
end
(default_crossover!(pa::T, pb::T, ca, cb, bc)) where T<:AbstractVector{Int} = PMX_crossover!(pa, pb, ca, cb, bc)
