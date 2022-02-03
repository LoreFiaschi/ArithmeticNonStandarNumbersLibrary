using .BAN
using PyPlot;

function plot(x::Vector{Ban}, y::Vector{Ban}; kwargs...)

    degx = [degree(x[i]) for i in eachindex(x)];
    degy = [degree(y[i]) for i in eachindex(y)];

    max_degree_x = maximum(degx);
    min_degree_x = minimum(degx);
    max_degree_y = maximum(degy);
    min_degree_y = minimum(degy);

    num_subplot_x = max_degree_x-min_degree_x+1;
    num_subplot_y = max_degree_y-min_degree_y+1;
    
    start_idx = 1;
    
    figtitle, figsize, title, rlplot = retrieve_args(kwargs);

    if rlplot
        #We are interested in the objectives plot only
        num_subplot_y = BAN.SIZE;
    end
    
    fig = figure(figtitle,figsize=figsize)
    subplots_adjust(hspace=0.0)
    PyPlot.title(title)

    for i=1:num_subplot_x
        # generate the subplots for the current magnitude of x from top to bottom
        axs = [];
        push!(axs, subplot(num_subplot_y, num_subplot_x, i, ylabel="\$α^{$(max_degree_y)}\$"));
        for j = 2:num_subplot_y
            push!(axs, subplot(num_subplot_y, num_subplot_x, i+(j-1)*num_subplot_x, sharex = axs[j-1], ylabel="\$α^{$(max_degree_y-j+1)}\$"));
        end
        xlabel("\$α^{$(min_degree_x+i-1)}\$");
        
        # supposing to plot a function, i.e., x increasing in value monotonically
        idx = findfirst(z->z>i+min_degree_x-1, degx);
        if idx == nothing 
            idx = length(degx);
        else
            idx -= 1;
        end

        ref_deg_y = degy[start_idx];
        intervals_y = [];  

        for j=start_idx:idx #since they are consecutive indexes
            degy[j] != ref_deg_y && (push!(intervals_y, (start_idx, j-1)); start_idx=j; ref_deg_y=degy[j]; true)
        end
        push!(intervals_y, (start_idx, idx));

        if rlplot #if reinforcement learning reward plot flag is active
            for j in intervals_y
                #if first objective value is non-zero, simply plot each reward
                if degy[j[1]]==max_degree_y
                    for n=1:BAN.SIZE
                        if j[1]==j[2]
                            axs[n].scatter([z.num[1] for z in x[j[1]:j[2]]], [z.num[n] for z in y[j[1]:j[2]]], s=10,c = :steelblue);
                        else   
                            axs[n].plot([z.num[1] for z in x[j[1]:j[2]]], [z.num[n] for z in y[j[1]:j[2]]], c=:steelblue);
                        end
                    end
                #if first objective value is zero, plot zero(es) for the interval in all objectives prior the first degree of Ban's normal form
                else
                    for n=1:max_degree_y-degy[j[1]]
                        if j[1]==j[2]
                            axs[n].scatter([z.num[1] for z in x[j[1]:j[2]]], 0, s=10,c = :steelblue);
                        else   
                            axs[n].plot([z.num[1] for z in x[j[1]:j[2]]], zeros(j[2]-j[1]+1), c=:steelblue);
                        end
                    end
                    ind=0
                    for n=max_degree_y-degy[j[1]]+1:BAN.SIZE
                        ind+=1
                        if j[1]==j[2]
                            axs[n].scatter([z.num[1] for z in x[j[1]:j[2]]], [z.num[ind] for z in y[j[1]:j[2]]], s=10,c = :steelblue);
                        else   
                            axs[n].plot([z.num[1] for z in x[j[1]:j[2]]], [z.num[ind] for z in y[j[1]:j[2]]], c=:steelblue);
                        end
                    end
                end
            end
        else
            for j in intervals_y
                if j[1]==j[2]
                    axs[max_degree_y-degy[j[1]]+1].scatter([z.num[1] for z in x[j[1]:j[2]]], [z.num[1] for z in y[j[1]:j[2]]], s=10,c = :steelblue);
                else   
                    axs[max_degree_y-degy[j[1]]+1].plot([z.num[1] for z in x[j[1]:j[2]]], [z.num[1] for z in y[j[1]:j[2]]], c=:steelblue);
                end
            end
        end

        start_idx=idx+1;
    end
end

function retrieve_args(args)

    figtitle = (haskey(args, :figtitle)) ? args[:figtitle] : "";
    figsize = (haskey(args, :figsize) ? args[:figsize] : (10,10));
    title = (haskey(args, :title) ? args[:title] : "");
    rlplot = (haskey(args, :rlplot) ? args[:rlplot] : false);

    return figtitle, figsize, title, rlplot;
end