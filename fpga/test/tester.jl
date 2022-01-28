include("../src/BAN.jl")
using .BAN
using Printf, Format

open("data.txt", "r") do ff
open("out_jl.txt", "w") do out

    SAMPLES =  parse(Int32, readuntil(ff," ")); #read(ff, Int32);
    SIZE = parse(Int32, readuntil(ff,"\n"));

    for i=1:SAMPLES
        p1 = parse(Int32, readuntil(ff," "));
        num1 = Vector{Float32}(undef, SIZE);
        for j=1:SIZE
            num1[j] = parse(Float32, readuntil(ff," "));
        end
        
        b1 = Ban(p1, num1);

        open("data.txt") do ff2
           
			for ii=1:(i+1)
				readline(ff2);
			end
		   
            for ii=(i+1):SAMPLES
                p2 = parse(Int32, readuntil(ff2," "));
                num2 = Vector{Float32}(undef, SIZE);
                for j=1:SIZE
                    num2[j] = parse(Float32, readuntil(ff2," "));
                end
                
                b2 = Ban(p2, num2);

                write(out, b1+b2);
				write(out, b1-b2);
				write(out, b1*b2);
				write(out, b1/b2);
				write(out, b2/b1);
				@printf(out, "%d\n", b1==b2);
				@printf(out, "%d\n", b1<b2);
				write(out, b1^2);
				write(out, b1^(-2));
				write(out, b1^5);
				write(out, b1^(-5));
				write(out, abs(b1));
				if b1>=0 && degree(b1)%2 == 0
					write(out, sqrt(b1));
				end
            end 
        end
    end
end
end