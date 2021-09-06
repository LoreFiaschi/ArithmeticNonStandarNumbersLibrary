include("./GrossonePkg/src/Grossone.jl")
include("./GrossonePkg/src/SuperDirection.jl")
include("./GrossonePkg/src/GrossGALib.jl")
include("./GrossonePkg/src/FileReader.jl")
include("./PL_DetermineDomination.jl")
include("./PL_Dominates.jl")
include("./Dominates.jl")

using Grossone, GrossGALib, SuperDirections

mutable struct ind
    
    Cost
    IsDominated
end

function cleaning(files, minimize)

    for i in eachindex(files)
        sd_array = superDirection_reader(files[i])
        length(sd_array) == 0 && continue;
        pop_array = Array{ind, 1}(length(sd_array))
        
        for j=1:length(pop_array)
            pop_array[j] = ind(sd_array[j], false)
        end
        
        PL_DetermineDomination!(pop_array, true, true)
        
        pop_array = pop_array[.~(x->x.IsDominated).(pop_array)]
        
        superDirection_writer(files[i], pop_array)
    end
end

function cleaning(minimize)

    files = Array{Any,1}(50)
    
    for j=3:4
        for i=1:50
            files[i] = string("../NSGAIII/outputs/MPL", j, "_", i, ".txt")
        end

        for i in eachindex(files)
            sd_array = superDirection_reader(files[i])
            length(sd_array) <= 1 && continue;
            pop_array = Array{ind, 1}(length(sd_array))
            
            for j=1:length(pop_array)
                pop_array[j] = ind(sd_array[j], false)
            end
            
            PL_DetermineDomination!(pop_array, true, true)
            
            pop_array = pop_array[.~(x->x.IsDominated).(pop_array)]
            
            superDirection_writer(files[i], pop_array)
        end
    end
end

function cleaning_GAA()

    files = Array{Any,1}(50)
    
   
    for i=1:50
        files[i] = string("../NSGAIII/outputs/MPL_GAA_", i, ".txt")
    end

    for i in eachindex(files)
        sd_array = superDirection_reader(files[i])
        length(sd_array) <= 1 && continue;
        pop_array = Array{ind, 1}(length(sd_array))
        
        for j=1:length(pop_array)
            pop_array[j] = ind(sd_array[j], false)
        end
        
        PL_DetermineDomination!(pop_array, true, true)
        
        pop_array = pop_array[.~(x->x.IsDominated).(pop_array)]
        
        superDirection_writer(files[i], pop_array)
    end

end

function cleaning_pre()

    files = Array{Any,1}(200)
    
   
    for i=1:50
        files[i] = string("../NSGAII/outputs/MPL3_pre_", i, ".txt")
    end
    
    for i=1:50
        files[i+50] = string("../NSGAII/outputs/MPL4_pre_", i, ".txt")
    end
    
    for i=1:50
        files[i+100] = string("../MOEAD/outputs/MPL3_pre_", i, ".txt")
    end
    
    for i=1:50
        files[i+150] = string("../MOEAD/outputs/MPL4_pre_", i, ".txt")
    end

    for i in eachindex(files)
        sd_array = superDirection_reader(files[i])
        length(sd_array) <= 1 && continue;
        pop_array = Array{ind, 1}(length(sd_array))
        
        for j=1:length(pop_array)
            pop_array[j] = ind(sd_array[j], false)
        end
        
        PL_DetermineDomination!(pop_array, true, true)
        
        pop_array = pop_array[.~(x->x.IsDominated).(pop_array)]
        
        superDirection_writer(files[i], pop_array)
    end

end

function cleaning_NSGAII()

    files = Array{Any,1}(100)
    
   
    for i=1:50
        files[i] = string("../NSGAII/outputs/MPL3_pre_", i, ".txt")
    end
    
    for i=1:50
        files[i+50] = string("../NSGAII/outputs/MPL3_post_", i, ".txt")
    end
    
    for i in eachindex(files)
        sd_array = superDirection_reader(files[i])
        #length(sd_array) <= 1 && continue;
        pop_array = Array{ind, 1}(length(sd_array))
        
        for j=1:length(pop_array)
            if any(x->x>1.1, sd_array[j][1]) && count(x->0<=x<=0.1, sd_array[j][1]) == 2
                pop_array[j] = ind(sd_array[j], true)
            else
                pop_array[j] = ind(sd_array[j], false)
            end
        end
        
        pop_array = pop_array[.~(x->x.IsDominated).(pop_array)]
        
        superDirection_writer(files[i], pop_array)
    end
end

function cleaning_DEB()

    files = Array{Any,1}(50)
    
   
    for i=1:50
        files[i] = string("./NSGAII-DEB/outputs/MPL3_", i, ".txt")
    end
    
    for i in eachindex(files)
        sd_array = superDirection_reader(files[i])
        #length(sd_array) <= 1 && continue;
        pop_array = Array{ind, 1}(length(sd_array))
        
        for j=1:length(pop_array)
            if any(x->x>1.1, sd_array[j][1]) && count(x->0<=x<=0.1, sd_array[j][1]) == 2
                pop_array[j] = ind(sd_array[j], true)
            else
                pop_array[j] = ind(sd_array[j], false)
            end
        end
        
        pop_array = pop_array[.~(x->x.IsDominated).(pop_array)]
        
        superDirection_writer(files[i], pop_array)
    end
end

function cleaning_special_GAA()

    files = Array{Any,1}(100)
    
   
    for i=1:50
        files[i] = string("../GAA_special/PL-NSGAII_outputs/MPL_GAA", i, ".txt")
    end
    
    for i=1:50
        files[i+50] = string("../GAA_special/SCHMIEDLE_outputs/MPL_GAA_", i, ".txt")
    end

    for i in eachindex(files)
        sd_array = superDirection_reader(files[i])
        pop_array = Array{ind, 1}(length(sd_array))
        for j=1:length(pop_array)
            sd_array[j][2][2] = 0
            pop_array[j] = ind(sd_array[j], true)
        end
        superDirection_writer(files[i], pop_array) 
    end
end