using LinearAlgebra: Matrix, norm2
using LinearAlgebra
using Distributions
using Plots
include("../src/BAN.jl")
include("../../InteriorPointMethod/src/ipqp.jl")
using .BAN


D1=[ 0.4952    6.8088
    2.6505    8.9590
    3.4403    5.3366
    3.4010    6.1624
    5.2153    8.2529
    7.6393    9.4764
    1.5041    3.3370
    3.9855    8.3138
    1.8500    5.0079
    1.2631    8.6463
    3.8957    4.9014
    1.9751    8.6199
    1.2565    6.4558
    4.3732    6.1261
    0.4297    8.3551
    3.6931    6.6134
    7.8164    9.8767
    4.8561    8.7376
    6.7750    7.9386
    2.3734    4.7740
    0.8746    3.0892
    2.3088    9.0919
    2.5520    9.0469
    3.3773    6.1886
    0.8690    3.7550
    1.8738    8.1053
    0.9469    5.1476
    0.9718    5.5951
    0.4309    7.5763
    2.2699    7.1371];

D2=[7.2450    3.4422
    7.7030    5.0965
    5.7670    2.8791
    3.6610    1.5002
    9.4633    6.5084
    9.8221    1.9383
    8.2874    4.9380
    5.9078    0.4489
    4.9810    0.5962
    5.1516    0.5319
    8.4363    5.9467
    8.4240    4.9696
    7.6240    1.7988
    3.4473    0.2725
    9.0528    4.7106
    9.1046    3.2798
    6.9110    0.1745
    5.1235    3.3181
    7.5051    3.3392
    6.3283    4.1555
    6.1585    1.5058
    8.3827    7.2617
    5.2841    2.7510
    5.1412    1.9314
    6.0290    1.9818
    5.8863    1.0087
    9.5110    1.3298
    9.3170    1.0890
    6.5170    1.4606
    9.8621    4.3674  ];

function sample_generator(N::Int, features::Int, μ1::Float64=3.0, μ2::Float64=5.0, 
    σ1::Float64=1.0, σ2::Float64=1.0)

    c1 = rand(Normal(μ1,σ1), (N,features))
    c2 = rand(Normal(μ2,σ2), (N,features))
    c1, c2
end

function NA_SVM(c1, c2, a_index, C, tol, maxit, kernel; d::Float64=1.0, 
	γ::Float64=1.0, c::Float64=1.0, κ::Float64=1.0, σ::Float64=1.0, 
	verbose::Bool=false, genLatex::Bool=true)
	
	function f(x, y)
		if kernel == "l" #Lnear
			dot(x,y);
		elseif kernel == "p" #Polynomial
			(dot(x,y)+1)^d;
		elseif kernel == "g" #Gaussian
			exp(-(norm2(x-y)/2σ^2));
		elseif kernel == "rbf" #RBF
			exp(-γ*norm2(x-y));
		elseif kernel == "l" #Laplace
			exp(-(norm2(x-y)/σ));
		elseif kernel == "h" #Hyperbolic tangent   
			tanh(κ*dot(x,y) + c);
		end
	end

	nc1 = length(c1[:,1]);
	nc2 = length(c2[:,1]);
	#total number of samples
	n = nc1 + nc2; 

	m1 = [c1 ones(nc1)];
	m2 = [c2 ones(nc1)];

	dim = length(m1[1,:]);
	#
	T = [m1 ; m2];
	y = [ones(nc1) ; -ones(nc2)];
	#c = convert(Vector{Ban}, [-ones(n) ; zeros(n)]);
	c = vcat(-ones(n)*η, zeros(n))
	A = convert(Matrix{Ban}, [y' zeros(n)'; I(n) I(n)]);
	b = convert(Vector{Ban}, [0 ; C*ones(n)]);
	Q = convert(Matrix{Ban}, zeros(2n,2n));
	
	for i ∈ 1 : n
		for j ∈ i : n
			t1 = f(T[i,1:a_index],T[j,1:a_index]);
			t2 = f(T[i,a_index+1:dim],T[j,a_index+1:dim]);
			Q[i,j] = y[i]*y[j]*(t1+t2*η);
			if i!=j
				Q[i,j] /= 2
				Q[j,i] = Q[i,j]
			end
		end
	end

	sol = ipqp(A,b,c,Q, tol, maxit=maxit, verbose=verbose, genLatex=genLatex, slack_var=n+1:2n);
	# if genLatex
	# 	println("");
	# 	println("");
	# 	println("");
	# 	preamble();
	# 	println("\t\\textbf{iter} & \$\\bm{r_1}\$ & \$\\bm{r_2}\$ & \$\\bm{r_3}\$ \\\\");
	# 	println("\t\\hline");
	# 	iter = 0;
	# 	for (r1, r2, r3) in eachrow(sol.r)
	# 		iter+=1;
	# 		print("\t $(iter) & \$"); print_latex(r1, digits=5, precision=64); 
	# 		print("\$ & \$");
	# 		print_latex(r2, digits=10, precision=64); print("\$ & \$"); 
	# 		print_latex(r3, digits=10, precision=64); println("\$ \\\\"); 
	# 		println("\t\\hline");
	# 	end
	# 	epilogue();
	# end
	# w = convert(Vector{Ban}, zeros(dim));
	# for i ∈ 1:n
	# 	w = w + sol.x[i]*y[i]*T[i,:];
	# end
	# ind = findall(i -> tol*10 < i < 1/(2n*λ) - tol*10 , sol.x[1:n]);
	# ind = findall(i -> tol*10 < i < 1/(2n*λ) - tol*10 , sol.x[1:n]);
	# i = ind[1];
	# b = y[i] - w'*T[i,:];
	# w, b, sol, y, T
	w = sol.x[1]*y[1]*T[1,:]
	for i=2:n
		w += sol.x[i]*y[i]*T[i,:]
	end
	w[1:a_index] .*= α
	return w

end

function pllot(c1, c2, w, b)
	Plots.scatter(c1[:,1],c1[:,2], color="blue", label="class1")
	Plots.xlabel!("x");
	Plots.ylabel!("y");
	Plots.scatter!(c2[:,1],c2[:,2], color="red", label="class2")
	xx = 0:0.1:1;
	mD = standard_part(-w[1]/w[2]).*xx .- standard_part(b/w[2]);
	sv1 = standard_part(-w[1]/w[2]).*xx .+ standard_part((1-b)/w[2]);
	sv2 = standard_part(-w[1]/w[2]).*xx .+ standard_part((-1-b)/w[2]);
	Plots.plot!(mD ,lw=2, label="Margin")
	Plots.plot!(sv1,lw=2, label="SV1")
	Plots.plot!(sv2,lw=2, label="SV2")
end

sample_size = 10;
feature_size = 2;
# c1,c2 = sample_generator(sample_size, 5) #generating random samples
a_index = 1;
c1 = D1[1:sample_size,:];
c2 = D2[1:sample_size,:];
C = 5;
tol = 1e-8;
maxit = 30;
n = sample_size*2;

w = NA_SVM(c1,c2, a_index, C, tol, maxit, "l"; genLatex=false);

println("")
println("Optimal vector:")
println(w)
println("")

# ind = findall(i -> tol*10 < i < 1/(2n*λ) - tol*10 , sol.x[1:n]);
# ind = findall(i -> tol*10 < i < 1/(2*λ*n) - 10*tol , sol.x[1:n])
# i = ind[1];
# b = y[i] - w'*T[i,:];

# Plots.scatter(c1[1:sample_size,1],c1[:,2], color="blue", label="class1")
# Plots.xlabel!("x");
# Plots.ylabel!("y");
# Plots.scatter!(c2[1:sample_size,1],c2[:,2], color="red", label="class2")

nothing


