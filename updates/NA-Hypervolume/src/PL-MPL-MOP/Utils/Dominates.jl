function Dominates(p1,p2, minimization)

    p1.CV != p2.CV && return p1.CV < p2.CV

    p1.Cost == p2.Cost && return true

    if minimization
        Dominates_minimization(p1, p2)
    else
        Dominates_maximization(p1, p2)
    end
end

function Dominates_minimization(p1,p2)

    x1=p1
    x2=p2

    if :Cost in fieldnames(typeof(x1)) #isfield(x1,"Cost")
        x1=x1.Cost
    end

    if :Cost in fieldnames(typeof(x2)) #isfield(x2,"Cost")
        x2=x2.Cost
    end
    
    y = x1-x2
    
    b=all(x->x<=0,y) && any(x->x<0,y)

    return b
end

function Dominates_maximization(p1,p2)

    x1=p1
    x2=p2

    if :Cost in fieldnames(typeof(x1)) #isfield(x1,"Cost")
        x1=x1.Cost
    end

    if :Cost in fieldnames(typeof(x2)) #isfield(x2,"Cost")
        x2=x2.Cost
    end
    
    y = x1-x2
    
    b=all(x->x>=0,y) && any(x->x>0,y)

    return b
end