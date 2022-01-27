include("../src/BAN.jl")
using .BAN

open("data.txt", "r") do ff
open("out_jl.txt", "w") do out

    SAMPLES =  parse(Int32, readuntil(ff," ")) #read(ff, Int32);
    SIZE = parse(Int32, readuntil(ff,"\n"))
    SAMPLES = 1;
    for i=1:SAMPLES
        p1 = parse(Int32, readuntil(ff," "))
        num1 = Vector{Float32}(undef, SIZE)
        for j=1:SIZE
            num1[j] = parse(Float32, readuntil(ff," "))
        end
        
        b1 = Ban(p1, num1)

        open("data.txt") do ff2
           
            for ii=1:SAMPLES
                p2 = parse(Int32, readuntil(ff," "))
                num2 = Vector{Float32}(undef, SIZE)
                for j=1:SIZE
                    num2[j] = parse(Float32, readuntil(ff," "))
                end
                
                b2 = Ban(p2, num2)

                println(b1)
                println(b2)
            end 
        end
    end
end
end