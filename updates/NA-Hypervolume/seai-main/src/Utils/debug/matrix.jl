include("../../ArithmeticNonStandarNumbersLibrary/src/BAN.jl")
using .BAN
include("../src/matrix2latex.jl")

A = rand(3,3);
matrix2latex(A);

println("");
println("");

A = rand(Ban, 3,3);
matrix2latex(A);