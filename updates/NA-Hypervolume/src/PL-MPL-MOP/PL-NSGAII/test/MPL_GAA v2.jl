using PLNSGAII_LAI_GAA, Grossone, LaTeXStrings
using PyPlot

include("../../Utils/GAA_CostFunction.jl")

const bc = BinaryCoding(5, [0.24, 7.0, 0.0, 5.5, 19.0, 85.0, 14.0, 3.0, 0.46, 0.24, 7.0, 0.0, 5.5, 19.0, 85.0, 14.0, 3.0, 0.46, 0.24, 7.0, 0.0, 5.5, 19.0, 85.0, 14.0, 3.0, 0.46], [0.48, 11.0, 6.0, 5.968, 25.0, 110.0, 20.0, 3.75, 1, 0.48, 11.0, 6.0, 5.968, 25.0, 110.0, 20.0, 3.75, 1, 0.48, 11.0, 6.0, 5.968, 25.0, 110.0, 20.0, 3.75, 1]);

function plot_pop(P, gen::Int=0)
    P = filter(indiv -> indiv.rank <= 1, P)
    p1 = plot(map(x -> x.y[1][0], P), map(x -> x.y[2][0], P), seriestype=:scatter, color="red",
                title="MPL1 objectives (gen $(gen))", xlabel = "f1", ylabel="f2", xlims=(-0.3, 10), ylims=(-0.3,10))
    p2 = plot(map(x -> x.pheno[1], P), map(x -> x.pheno[2], P), seriestype=:scatter, color="red",
                title="MPL1 variables", xlabel = "x1", ylabel="x2", xlims=(-2.25,0.5), ylims=(-2.25,0.5))
    opt_0_4 = filter(x -> x.y[1][0]==0.0 && x.y[2][0]==4.0, P)
    p3 = plot(map(x -> x.y[1][-1], opt_0_4), map(x -> x.y[2][-1], opt_0_4), seriestype=:scatter, color="green",
                title="Secondary objectives in (0,4)", xlabel = "f1_1", ylabel="f2_2", xlims=(-0.2,4.5), ylims=(-0.2,4.5))
    opt_1_2 = filter(x -> x.y[1][0]==1.0 && x.y[2][0]==2.0, P)
    p4 = plot(map(x -> x.y[1][-1], opt_1_2), map(x -> x.y[2][-1], opt_1_2), seriestype=:scatter, color="orange",
            title="Secondary objectives in (1,2)", xlabel = "f1_1", ylabel="f2_2", xlims=(-0.2,4.5), ylims=(-0.2,4.5))
    opt_2_1 = filter(x -> x.y[1][0]==2.0 && x.y[2][0]==1.0, P)
    p5 = plot(map(x -> x.y[1][-1], opt_2_1), map(x -> x.y[2][-1], opt_2_1), seriestype=:scatter, color="blue",
                title="Secondary objectives in (2,1)", xlabel = "f1_1", ylabel="f2_2", xlims=(-0.2,4.5), ylims=(-0.2,4.5))
    opt_4_0 = filter(x -> x.y[1][0]==4.0 && x.y[2][0]==0.0, P)
    p6 = plot(map(x -> x.y[1][-1], opt_4_0), map(x -> x.y[2][-1], opt_4_0), seriestype=:scatter, color="purple",
                title="Secondary objectives in (4,0)", xlabel = "f1_1", ylabel="f2_2", xlims=(-0.2,4.5), ylims=(-0.2,4.5))
    Plots.display(plot(p1,p2,p3,p4,p5,p6,layout=(2,3),legend=false))
end

function print_iter(P, gen::Int=0)
    println("[Iteration $gen: Number of solutions = $(length(P))]")
end

function plot_level(P, gen::Int=0)
    P = filter(indiv -> indiv.rank <= 1, P)    
    figure(1)
    clf();
    
    scatter3D(map(x -> x.y[1][0], P), map(x -> x.y[2][0], P), map(x -> x.y[3][0], P), marker=:x)
end

function CostFunction(ind)

    gs1 = GrossScalar(Float64, 3, -2)
    gs2 = GrossScalar(Float64, 3, -2)
    gs3 = GrossScalar(Float64, 3, -2)
    gs4 = GrossScalar(Float64, 3, -2)
    
    Cost, CV = GAA_CostFunction(ind)
    
    gs1[0]  = Cost[10]
    gs1[-1] = Cost[7]
    gs1[-2] = Cost[2]
    gs2[0]  = Cost[3]
    gs2[-1] = Cost[1]
    gs2[-2] = Cost[4]
    gs3[0]  = Cost[8]
    gs3[-1] = Cost[6]
    gs3[-2] = Cost[5]
    gs4[0]  = 0
    gs4[-1] = 0
    gs4[-2] = Cost[9]
    
    return [gs1, gs2, gs3, gs4], CV
    

#=
    if superdirection == false # must be an array of array of Int
        arr=[]
        for dir in superdirection
            push!(arr, Cost[dir])
        end
        Cost = SuperDirection(arr)
    end
=#
end


######################################################
#
# COST STRUCTURE

#   LV1     LV2     LV3
#
#   PFPF    RANGE   WEMP
#   DOC     NOISE   ROUGH
#   LDMAX   PURCH   WFUEL
#                   VCMAX
#
#
#
# COST VECTOR
#
# NOISE WEMP DOC ROUGH WFUEL PURCH RANGE LDMAX VCMAX PFPF
#
######################################################

function MPL_GAA(filename)
    
    n = 3

    MaxIt = 5000;  # Maximum Number of Iterations
    nPop = 100;    # Population Size [Number of Sub-Problems]

    EP = nsga(nPop, MaxIt, CostFunction, bc, fplot=plot_level, plotevery=50, showprogress = true, lexico = true);
    
    EP = EP[(x->x.CV==0).(EP)]
    
    X=[]
    Y=[]
    Z=[]
    
    for i=1:length(EP)
        push!(X, EP[i].y[1][0])
        push!(Y, EP[i].y[2][0])
        push!(Z, EP[i].y[3][0])
    end
    
    figure(4)
    clf();
    scatter3D(X, Y, Z, marker=:x);
    
    figure(5)
    clf();
    hist(map(x->x.y[1][0], EP), 0.0:0.05:1)
    #scatter(1:length(EP), X, marker=:x);

    open(filename, "w") do  file
        println(file, length(EP))
        println(file, n)
        for x in EP
            println(file, string(x.y[1][0], ';', x.y[2][0], ';', x.y[3][0]))
            println(file, string(x.y[1][-1], ';', x.y[2][-1], ';', x.y[3][-1]))
            println(file, string(x.y[1][-2], ';', x.y[2][-2], ';', x.y[3][-2], ';', x.y[4][-2]))
        end
    end
end