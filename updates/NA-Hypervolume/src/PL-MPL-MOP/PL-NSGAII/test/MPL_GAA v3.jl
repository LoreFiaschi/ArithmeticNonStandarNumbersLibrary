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
    gen < 4400 && return
    P = filter(indiv -> indiv.rank <= 1, P)    
    figure(1)
    clf();
    
    scatter3D(map(x -> x.y[1][-1], P), map(x -> x.y[2][-1], P), map(x -> x.y[3][-1], P), marker=:x)
end

function CostFunction(ind)

    gs1 = GrossScalar(Float64, 4, -3)
    gs2 = GrossScalar(Float64, 4, -3)
    gs3 = GrossScalar(Float64, 4, -3)
    
    Cost, CV = GAA_CostFunction(ind)
    
    gs1[0]  = floor(Cost[10]*20) # intervalli discreti di 0.05
    gs1[-1] = Cost[3]
    gs1[-2] = Cost[1]
    gs1[-3] = Cost[4]
    gs2[0] = 0
    gs2[-1] = Cost[8]
    gs2[-2] = Cost[6]
    gs2[-3] = Cost[5]
    gs3[0] = 0
    gs3[-1] = Cost[7]
    gs3[-2] = Cost[2]
    gs3[-3] = Cost[9]
    
    return [gs1, gs2, gs3], CV
    

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

function RetrievePFPF(ind)

    Cost, CV = GAA_CostFunction(ind)
    return Cost[10]
end

######################################################
#
# COST STRUCTURE

#   LV1     LV2     LV3     LV4
#
#   
#   PFPF    DOC     NOISE   ROUGH
#           LDMAX   PURCH   WFUEL
#           RANGE   WEMP    VCMAX
#
#
#
# COST VECTOR
#
# NOISE WEMP DOC ROUGH WFUEL PURCH RANGE LDMAX VCMAX PFPF
#
######################################################

function MPL_GAA(filename)
    
    n = 4

    #MaxIt = 10000;  # Maximum Number of Iterations
    MaxIt = 3000;  # Maximum Number of Iterations
    nPop = 200;    # Population Size [Number of Sub-Problems]

    EP = nsga(nPop, MaxIt, CostFunction, bc, fplot=print_iter, plotevery=Inf, showprogress = false, lexico = true);
    
    EP = EP[(x->x.CV==0).(EP)]
    #=
    X=[]
    Y=[]
    Z=[]
    
    for i=1:length(EP)
        push!(X, EP[i].y[1][-1])
        push!(Y, EP[i].y[2][-1])
        push!(Z, EP[i].y[3][-1])
    end
    
    figure(4)
    clf();
    scatter3D(X, Y, Z, marker=:x);
    
    for i = 1:length(EP)
        EP[i].y[1][0] = RetrievePFPF(decode(EP[i].x, bc))
    end
    
    figure(5)
    clf();
    hist(map(x->x.y[1][0], EP), 0.0:0.05:1)
    
    figure(6)
    clf();
    hist(map(x->x.y[1][0], EP), 0.0:0.01:0.05)
    =#
    open(filename, "w") do  file
        println(file, length(EP))
        println(file, n)
        for x in EP
            println(file, x.y[1][0])
            println(file, string(x.y[1][-1], ';', x.y[2][-1], ';', x.y[3][-1]))
            println(file, string(x.y[1][-2], ';', x.y[2][-2], ';', x.y[3][-2]))
            println(file, string(x.y[1][-3], ';', x.y[2][-3], ';', x.y[3][-3]))
        end
    end
end
