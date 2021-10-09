include("../../InteriorPointMethod/src/ipqp.jl")
include("../src/BAN.jl")


import Random
import Distributions
#import Pkg



#Pkg.add("Distributions")

using LinearAlgebra
using .BAN
using Distributions

#COSTRUZIONE DELLA SOLUZIONE OTTIMA W

dim_q = 4
dim_m = 4

#m = rand(Ban,dim_m)
#q = rand(Ban,dim_q)
m = 0.4+0.7η
q = 0.3-0.1η

w = [m;q]

dim_w = size(w)[1]
println("DIMENSIONE W \t", dim_w);
println("VECTOR W \n",w);
println("TIPO W \n ", typeof(w))


#COSTRUZIONE DEI VINCOLI A,b
k = ones(dim_w)';
dim_k = size(k)[2]
#b = b';
#print("B",b)
#A = ones(dim_w);
A = ones(dim_w,dim_w);
println("TYPE A \t",typeof(A))
b = 10*k';
println("TYPE B \t",typeof(b))






#dim_w = size(w)[1]


#k = ones(dim_w,1)'*w;
#k = ones(dim_w,1)';
#HO COMMENTATO PERCHè COSTRUIAMO A E b SOPRA 
#k = ones(dim_w)';





#TO DO:mettere variabili randomiche colonna a x
#x1 = rand(Float64,4)
#COSTRUZIONE DEL DATASET X
x = [2.0;3.0;4.0;5.0];
dim_x = size(x)[1]
#map X->[x,1]
X = [x ones(dim_x)]
println("X",X);
#x = [2.0;3.0;4.0;5.0;6.0;7.0;8.0;9.0];




#COSTRUZIONE RETTA REGRESSIONE y
#eps = rand(Uniform(0,0.5),dim_x);
#y = X*w + eps;
y = X*w;

#print("y \n",y)






#COSTRUZIONE DELLA MATRICE Q E DEL VETTORE c 
function createParameters(X,y)

	Q = zeros(Float64,(dim_w,dim_w))

	 for j = 1:dim_w
		for h = j:dim_w
			Q[j,h] = 2*X[:,j]'*X[:,h] # inner product of columns (sum over rows)
	 		if j != h
				Q[h,j] = Q[j,h]
	 		end
		end
	 end

	c = -2*X'*y;

	return Q,c[:,1]
end

Q,c = createParameters(X,y);

#print("Q",Q);

# b = 10*k';
# #b = b';
# #print("B",b)
# print("TYPE B",typeof(b))

# A = ones(dim_w,dim_w);

#ESECUZIONE IPQP
A = [A I];
A = convert(Matrix{Ban}, A)

#print("MATRICE A PROVA LS",A);

println("DIMENSIONE RIGA \t",size(A,1));
println("DIMENSIONE COLONNA \t",size(A,2));

c = vcat(c, zeros(size(A,1)));
Q = [Q zeros(size(Q,1), size(A,1)); zeros(size(A,1), size(Q,1)+size(A,1))]


println("DIMENSIONE NUOVA MATRICE Q \t",size(Q,1));
println("DIMENSIONE NUOVO VETTORE c \t",size(c,1));


tol=1e-8;
#genLatex = true;
#verbose = false;
#PROVA PER PROBLEMI CONVERGENZA, METTIAMO VERBOSE = TRUE, GENLATEX= FALSE
genLatex = true;
verbose = false;
sol = ipqp(copy(A),copy(b),copy(c),copy(Q), tol; maxit=20, verbose=verbose, genLatex=genLatex,slack_var=3:4);


nothing


#MATRICE [A I] CON A VETTORE
# [1.0 1.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0; 
# 1.0 0.0 1.0 0.0 0.0 0.0 0.0 0.0 0.0; 
# 1.0 0.0 0.0 1.0 0.0 0.0 0.0 0.0 0.0; 
# 1.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 0.0; 
# 1.0 0.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0; 
# 1.0 0.0 0.0 0.0 0.0 0.0 1.0 0.0 0.0; 
# 1.0 0.0 0.0 0.0 0.0 0.0 0.0 1.0 0.0; 
# 1.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 1.0]


#MATRICE [A  I] CON A MATRICE
# [1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0; 
# 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0.0 1.0 0.0 0.0 0.0 0.0 0.0 0.0; 
# 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0.0 0.0 1.0 0.0 0.0 0.0 0.0 0.0; 
# 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 0.0; 
# 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0; 
# 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0.0 0.0 0.0 0.0 0.0 1.0 0.0 0.0; 
# 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0.0 0.0 0.0 0.0 0.0 0.0 1.0 0.0; 
# 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 1.0]




