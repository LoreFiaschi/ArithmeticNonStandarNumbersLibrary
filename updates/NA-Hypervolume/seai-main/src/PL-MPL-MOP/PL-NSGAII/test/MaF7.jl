include("../../Utils/GrossonePkg/src/Grossone.jl")
include("../..//Utils/GrossonePkg/src/SuperDirection.jl")
using PLNSGAII_LAI, Grossone, LaTeXStrings
using PyPlot

const bc = BinaryCoding(5, [0.0, 0.0, 0.0], [1.0, 1.0, 20.0]);

m=3;
k=20;
g(x) = 1+9/k*x[3];
h(x) = m*(1+g(x))-x[1]*(1+sinpi(3*x[1]))-x[2]*(1+sinpi(3*x[2]));

# Single petal
f1_1(x) = x[1];
f2_1(x) = x[2];
f3_1(x) = h(x);
f1_2(x) = -e^(-0.5*((x[1]-0.6)^2+(x[2]-0.6)^2));
f2_2(x) = abs((x[1]-0.8)^2+(x[2]-0.8)^2-0.2^2) # 
f3_2(x) = f3_1(x);

#=
# Multi-modal
f1_1(x) = x[1];
f2_1(x) = (h(x)+x[2])/2;
f1_2(x) = x[2];
f2_2(x) = h(x);
=#


function CostFunction(x)

    gs1 = GrossScalar(Float64, 2, -1)
    gs2 = GrossScalar(Float64, 2, -1)
    
    gs1[0]  =    f1_1(x)
    gs1[-1] =    f1_2(x)
    gs2[0]  =    f2_1(x)
    gs2[-1] =    f2_2(x)
    
	gs3 = GrossScalar(Float64, 2, -1)
	gs3[0]  =    f3_1(x)
    gs3[-1] =    f3_2(x)

    return gs1, gs2, gs3
end

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

function MaF7(filename)
    
    n = 2

    MaxIt = 600;  # Maximum Number of Iterations
    nPop = 200;    # Population Size [Number of Sub-Problems]

    nObj = 3;
    #nObj = 2;

    EP = nsga(nPop, MaxIt, CostFunction, bc, fplot=print_iter, plotevery=1000, showprogress = false, lexico = true);
    
	#=
    X=[]
    Y=[]
    Z=[]
    
    for i=1:length(EP)
		
        push!(X, EP[i].y[1][0])
        push!(Y, EP[i].y[2][0])
        push!(Z, EP[i].y[3][0])
		#=
		push!(X, EP[i].y[1][0])
        push!(Y, EP[i].y[1][-1])
        push!(Z, EP[i].y[2][-1])
		=#
    end
    
    scatter3D(X, Y, Z, marker=:x);
	=#

    open(filename, "w") do  file
        println(file, length(EP))
        println(file, n)
        for x in EP
            println(file, string(x.y[1][0], ';', x.y[2][0], ';', x.y[3][0]))
            println(file, string(x.y[1][-1], ';', x.y[2][-1], ';', x.y[3][-1]))
        end
    end
end
