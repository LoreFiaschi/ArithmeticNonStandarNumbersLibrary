function preamble()
	println("\\begin{table}[!ht]");
	println("\t\\centering");
	println("\t\\caption{}");
	println("\t\\begin{tabular}{|c|c|}");
	println("\t\\hline");
end


function epilogue()
	println("\t\\end{tabular}");
	println("\\label{tab:}")
	println("\\end{table}");
end