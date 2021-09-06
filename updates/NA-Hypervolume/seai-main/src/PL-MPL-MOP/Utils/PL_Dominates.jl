function PL_Dominates(p1,p2, minimization)

    p1 == p2 && return true

    if minimization
        PL_Dominates_minimization(p1, p2)
    else
        PL_Dominates_maximization(p1, p2)
    end
end

function PL_Dominates_minimization(p1,p2)

    y = p1-p2
    
    b=all(x->x<=0,y) && any(x->x<0,y)

    return b
end

function PL_Dominates_maximization(p1,p2)
    
    y = p1-p2
    
    b=all(x->x>=0,y) && any(x->x>0,y)

    return b
end