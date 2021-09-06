include("./LatexTableMaker.jl")

first_bold = true

alg_names = ["PL-NSGA-II", "Lex-NSGA-II", "NSGA-III","NSGA-II-post","MOEA/D-post","NSGA-II-pre","MOEA/D-pre","GRAPH","GOAL"]

createTable("../../../Performances/MPL3/statistics/statistics_Delta.txt", "../../../Performances/MPL3/statistics/latex_table_Delta.txt", alg_names, first_bold)
createTable("../../../Performances/MPL3/statistics/statistics_GD.txt",    "../../../Performances/MPL3/statistics/latex_table_GD.txt", alg_names, first_bold)
createTable("../../../Performances/MPL3/statistics/statistics_IGD.txt",   "../../../Performances/MPL3/statistics/latex_table_IGD.txt", alg_names, first_bold)
createTable("../../../Performances/MPL4/statistics/statistics_Delta.txt", "../../../Performances/MPL4/statistics/latex_table_Delta.txt", alg_names, first_bold)
createTable("../../../Performances/MPL4/statistics/statistics_GD.txt",    "../../../Performances/MPL4/statistics/latex_table_GD.txt", alg_names, first_bold)
createTable("../../../Performances/MPL4/statistics/statistics_IGD.txt",   "../../../Performances/MPL4/statistics/latex_table_IGD.txt", alg_names, first_bold)


alg_names = ["PL-NSGA-II", "Lex-NSGA-II","NSGA-III","NSGA-II-post","MOEA/D-post","GRAPH","GOAL"]

createTable("../../../Performances/GAA/statistics/statistics_Delta.txt", "../../../Performances/GAA/statistics/latex_table_Delta.txt", alg_names, first_bold)
createTable("../../../Performances/GAA/statistics/statistics_GD.txt", "../../../Performances/GAA/statistics/latex_table_GD.txt", alg_names, first_bold)
createTable("../../../Performances/GAA/statistics/statistics_IGD.txt", "../../../Performances/GAA/statistics/latex_table_IGD.txt", alg_names, first_bold)

#=
alg_names = ["PL-NSGA-II", "PR-NSGA-II","Schmiedle et al."]
createTable("../../../Performances/GAA_special/DEB/statistics/statistics.txt", "../../../Performances/GAA_special/DEB/statistics/latex_table.txt", alg_names, first_bold)
=#