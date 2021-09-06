function PL_Dominates(p1,p2, minimization)

    if :CV in fieldnames(typeof(p1))
        p1.CV != p2.CV && return p1.CV < p2.CV
    end
    
    if :Cost in fieldnames(typeof(p1))
        minimization && return (p1.Cost<p2.Cost || p1.Cost==p2.Cost)
        p1.Cost>p2.Cost || p1.Cost==p2.Cost
    else
        minimization && return (p1.cost<p2.cost || p1.cost==p2.cost)
        p1.cost>p2.cost || p1.cost==p2.cost
    end
end