include("./Grossone.jl")
include("./FileReader.jl")

using Grossone

function num2latex(num)
    up = eachindex(num).stop
    lp = eachindex(num).start
    #n = round(num[up]*100)/100
	n = num[up]
	#=
    while n == 0 && up != lp
        up -=1
        n = round(num[up]*100)/100
    end
	=#
    if up == lp && n == 0
        return 0
    end
    if up == 0
        res = string(n)
    else
        res = string(n, "\\G1^{", up, "}")
    end
    for i=up-1:-1:lp
        # the zeros are not displayed
        #n = round(num[i]*100)/100
		n = num[i]
        if n > 0
            res = string(res, " + ", n, "\\G1^{", i, "}")
        elseif n < 0
            res = string(res, " - ", -1*n, "\\G1^{", i, "}")
        end
    end
    res
end

function createTable(filename_in, filename_out, alg_names, first_bold=false)
    #read means and stds
    values = nonArchimedean_reader(filename_in)
    num_algs = length(alg_names)
    
    if num_algs != length(values)/2
        error("Different number of means/std and algorithms")
    end
    
    values = reshape(values, 2, :)
    
    open(filename_out, "w") do file
        println(file, "\\begin{table}[!htp]")
        println(file, "\\centering")
        println(file, "\t\\begin{tabulary}{\\linewidth}{|C|C|C|}")
        println(file, "\t\t\\hline")
        println(file, "\t\tAlgorithm & Mean & Std \\\\")
        println(file, "\t\t\\hline")
        if first_bold
            println(file, string("\t\t\\textbf{", alg_names[1], 
                        "} & \$\\medmath{\\mathbf{", num2latex(values[1,1]), 
                        "}}\$ & \$\\medmath{\\mathbf{", num2latex(values[2,1]), "}}\$ \\\\"))
        else
            println(file, string("\t\t", alg_names[1], " & \$\\medmath{", num2latex(values[1,1]), "}\$ & \$\\medmath{", num2latex(values[2,1]), "}\$ \\\\"))
        end
        println(file, "\t\t\\hline")
        for (alg_name, m, s) in zip(alg_names[2:end], values[1,2:end], values[2,2:end])
            println(file, string("\t\t", alg_name, " & \$\\medmath{", num2latex(m), "}\$ & \$\\medmath{", num2latex(s), "}\$ \\\\"))
            println(file, "\t\t\\hline")
        end
        println(file, "\t\\end{tabulary}")
        println(file, "\\end{table}")
    end
end