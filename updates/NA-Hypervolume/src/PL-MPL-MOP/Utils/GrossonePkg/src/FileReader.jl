#include("./SuperDirection.jl")

using Grossone, SuperDirections

function nonArchimedean_reader(filename)

    open(filename) do file
        num_ind = parse(Int64, readline(file))
        nObj = parse(Int64, readline(file))
        n = parse(Int64, readline(file))
        lp = parse(Int64, readline(file))
        v = readlines(file)
        z = Array{GrossScalar{Float64},2}(num_ind,nObj)
        for i=1:num_ind
            for j=1:nObj
                tmp = Array{Float64,1}(n)
                for h=1:n
                    tmp[n-h+1] = parse(Float64, v[(i-1)*nObj*n+(j-1)*n+h])
                end
                z[i,j] = GrossScalar(Float64, n, lp)
                init_GS!(z[i,j], tmp)
            end
        end
        return z
    end
end

function superDirection_reader(filename)

    open(filename) do file
        num_ind = parse(Int64, readline(file))
        n = parse(Int64, readline(file))
        v = readlines(file)
        z = Array{SuperDirection{Float64},1}(num_ind)
        for i=1:num_ind
            direction = Array{Array{Float64, 1}, 1}(n)
            for h=1:n
                vec = split(v[(i-1)*n+h], ";")
                direction[h] = parse.(Float64, vec)
            end
            z[i] = SuperDirection(direction)
        end
        return z
    end
end

function superDirection_writer(filename, array)

    open(filename, "w") do file
        println(file, length(array))
        println(file, array[1].Cost.numLevels)
        for h=1:length(array)
            for i=1:array[1].Cost.numLevels
                print(file, array[h].Cost[i][1])
                for j=2:array[1].Cost.levelsSize[i]
                    print(file, string(";", array[h].Cost[i][j]))
                end
                println(file, "")
            end
        end
    end
end
