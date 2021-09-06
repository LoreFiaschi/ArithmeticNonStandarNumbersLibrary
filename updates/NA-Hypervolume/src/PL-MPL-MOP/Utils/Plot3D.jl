using PyPlot

function Plot3D(population, fig=1, shift=0)
    
    X = []
    Y = []
    Z = []
    
    
    if :Cost in fieldnames(typeof(population[1]))
        if  typeof(population[1].Cost)==Array{Int64,1} ||  typeof(population[1].Cost)==Array{Float64,1}
            for i=1:length(population)
                X = push!(X, population[i].Cost[1])
                Y = push!(Y, population[i].Cost[2])
                Z = push!(Z, population[i].Cost[3])
            end
        else
            for i=1:length(population)
                X = push!(X, population[i].Cost[1+shift][1])
                Y = push!(Y, population[i].Cost[1+shift][2])
                Z = push!(Z, population[i].Cost[1+shift][3])
            end
        end
    elseif :cost in fieldnames(typeof(population[1]))
        for i=1:length(population)
            X = push!(X, population[i].cost[1])
            Y = push!(Y, population[i].cost[2])
            Z = push!(Z, population[i].cost[3])
        end
    elseif :y in fieldnames(typeof(population[1]))
        for i=1:length(population)
            X = push!(X, population[i].y[1])
            Y = push!(Y, population[i].y[2])
            Z = push!(Z, population[i].y[3])
        end
    else
        for i=1:length(population)
            X = push!(X, population[i][1+shift][1])
            Y = push!(Y, population[i][1+shift][2])
            Z = push!(Z, population[i][1+shift][3])
        end
    end
    
    figure(fig)
    #clf();
    scatter3D(X, Y, Z, marker=:x);
end