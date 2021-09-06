include("../src/NSGAII.jl")
include("../../Utils/GrossonePkg/src/Grossone.jl")
include("../../Utils/GrossonePkg/src/SuperDirection.jl")

using PLNSGAII_LAI, Grossone, LaTeXStrings
using PyPlot
using DataFrames, CSV

const bc = BinaryCoding(5, [1.0, 1.0, 1.0, 1.0, 1.0], [3.0, 3.0, 3.0, 3.0, 3.0]);


f1_1(x) = 1640.2823 + 2.3573285*x[1] + 2.3220035*x[2] +
		  4.5688768*x[3] + 7.7213633*x[4] + 4.4559504*x[5];
f2_1(x) = 6.5856 + 1.15*x[1] - 1.0427*x[2] + 0.9738*x[3] + 
          0.8364*x[4] - 0.3695*x[1]*x[4] + 0.0861*x[1]*x[5] +
		  0.3628*x[2]*x[4] - 0.1106*x[1]*x[1] - 0.3437*x[3]*x[3] +
		  0.1764*x[4]*x[4];

f1_2(x) = f2_1(x)
f2_2(x) = -0.0551 + 0.0181*x[1] + 0.1024*x[2] + 0.0421*x[3] -
          0.0073*x[1]*x[2] + 0.024*x[2]*x[3] - 0.0118*x[2]*x[4] -
		  0.0204*x[3]*x[4] - 0.008*x[3]*x[5] - 0.0241*x[2]*x[2] +
		  0.0109*x[4]*x[4];


function CostFunction(x)

    gs1 = GrossScalar(Float64, 2, -1)
    gs2 = GrossScalar(Float64, 2, -1)
    
    gs1[0]  =    f1_1(x)
    gs1[-1] =    f1_2(x)
    gs2[0]  =    f2_1(x)
    gs2[-1] =    f2_2(x)

    return gs1, gs2
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

function Crash(filename)
    
    n = 2

    MaxIt = 600;  # Maximum Number of Iterations
    nPop = 200;    # Population Size [Number of Sub-Problems]

    nObj = 2;

    EP = nsga(nPop, MaxIt, CostFunction, bc, fplot=print_iter, plotevery=1000, showprogress = true, lexico = true);
    
	#=
    X=[]
    Y=[]
    Z=[]
    
    for i=1:length(EP)
		
        push!(X, EP[i].y[1][0])
        push!(Y, EP[i].y[2][0])
        push!(Z, EP[i].y[2][-1])
    end
    
    scatter3D(X, Y, Z, marker=:x);
	xlabel(L"f^{(1)}_1");
	ylabel(L"f^{(1)}_2");
	zlabel(L"f^{(1)}_3", rotation=-90);
	=#
	
	df = DataFrame([map(x->x.y[1][0], EP) map(x->x.y[2][0], EP) map(x->x.y[2][-1], EP)])
	CSV.write(filename, df)
	
	#=
    open(filename, "w") do  file
        println(file, length(EP))
        println(file, n)
        for x in EP
            println(file, string(x.y[1][0], ';', x.y[2][0]))
            println(file, string(x.y[1][-1], ';', x.y[2][-1]))
        end
    end
	=#
end
