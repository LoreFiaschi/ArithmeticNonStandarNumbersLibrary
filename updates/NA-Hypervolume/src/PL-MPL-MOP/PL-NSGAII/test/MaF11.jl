include("../../Utils/GrossonePkg/src/Grossone.jl")
include("../../Utils/GrossonePkg/src/SuperDirection.jl")

using PLNSGAII_LAI, Grossone, LaTeXStrings
using PyPlot

const bc = BinaryCoding(5, zeros(12), [2*i for i=1:12]);

z(i,x) = x[i]/(2i)
t1(i,x) = (i<=2) ? z(i,x) : abs(z(i,x)-0.35)/(abs(0.35-z(i,x))+0.35)
t2(i,x) = (i<=2) ? t1(i,x) : t1(2+2*(i-2)-1,x) + t1(2+2*(i-2),x) + 2*abs(t1(2+2*(i-2)-1,x)-t1(2+2*(i-2),x))
t3(i,x) = (i<=2) ? t2(i,x) : sum([t2(j,x) for j=3:6])/5
y(i,x) = (i<=2) ? (t3(i,x)-0.5)*max(1,t3(3,x))+0.5 : t3(3,x)

function CostFunction(x)

    gs1 = GrossScalar(Float64, 2, -1)
    gs2 = GrossScalar(Float64, 2, -1)
    gs3 = GrossScalar(Float64, 2, -1)
	
	y1 = y(1,x)
	y2 = y(2,x)
	y3 = y(3,x)
	v = y3 + 2*(1-cospi(y1/2))*(1-cospi(y2/2))
	w = y3 + 4*(1-cospi(y1/2))*(1-sinpi(y2/2))
	
	# a = 4(w + (1/0.45 -2)v)
	# b = 4(-v+2w)
    
    gs1[0]  =    v
    gs1[-1] =    -(w-2v-2.75)^2-0.125 # -(w-2v+3)*(w-2v+2.5) 
	
    gs2[0]  =    w
    gs2[-1] =    -(w-2v+2.75)^2-0.125 # -(w-2v-2)*(w-2v-1.5) 
	
	gs3[0] =     y3 + 6*(1-y1*cospi(5*y1)^2)
	gs3[-1] =    0

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

function MaF11(filename)
    
    n = 2

    MaxIt = 2500;  # Maximum Number of Iterations
    nPop = 200;    # Population Size [Number of Sub-Problems]

    nObj = 3;

    EP = nsga(nPop, MaxIt, CostFunction, bc, fplot=print_iter, plotevery=1000, showprogress = false, lexico = true);
    
	#=
    X=[]
    Y=[]
	Z=[]
    
    for i=1:length(EP)
		
        push!(X, EP[i].y[1][0])
        push!(Y, EP[i].y[2][0])
		push!(Z, EP[i].y[3][0])
    end
    
    scatter3D(X, Y, Z, marker=:x);
	xlabel(L"f^{(1)}_1");
	ylabel(L"f^{(1)}_2");
	zlabel(L"f^{(1)}_3");
	
	xlim((0, 2))
	ylim((0, 4))
	zlim((0, 6))
	=#
	
    open(filename, "w") do  file
        println(file, length(EP))
        println(file, n)
        for x in EP
            println(file, string(x.y[1][0], ';', x.y[2][0], ';', x.y[3][0]))
            println(file, string(x.y[1][-1], ';', x.y[2][-1]))
        end
    end
end
