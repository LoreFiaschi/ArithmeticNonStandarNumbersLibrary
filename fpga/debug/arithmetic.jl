include("../../src/BAN.jl")
using .BAN

    b1 = Ban(0, [1.0,-2,4]);
#    println(b1)
    
    b2 = Ban(0, [-3,-5,14.5]);
#    println(b2)

#    println((pow(b1,4)))

#=
    println(b1/b2)
    b1 /= b2;
    println(b1)

    println(b1/b1)
    b1/= b1;
    println(b1)
=#

    println("")
    println("Equality with real")
    println(b1==0)

    
    println("")
    println("Sum")
    println(b1+b2)


    println("")
    println("Subtraction")
    println(b1-b2);

    
    println("")
    println("Product")
    println(b1*b2)
    
    println("")
    println("Division")
    println(b1/b2)
    

    println("")
    println("Check normal form for sum")
    
    b3 = Ban(0, [-1.0,-2,4]);
    println(b1+b3)
    
    b4 = Ban(0, [-1.0,2,4]);
    println(b1+b4)

    b5 = Ban(0, [-1.0,2,-4]);
    println(b1+b5)

    b0 = Ban(0, [-1.0,-2,-4]);
    println(b1+b0)

    println("")
    println("Check normal form for product")
    b6 = Ban(1, [1e-30, 0, 0]);
    println(b6*b6)

    # still to check normal form for division

    println("")
    println("Ordering")
    println((b1<b2))
    println((b1>b2))
    b7 = b2*α;
    println((b1<b7))
    println((b1>b7))
    println((b1<-b7))
    println((b1>-b7))

    println("")
    println("Ordering with a real")
    println((b1<2))
    println((2<b1))
    println((b1<0.5))
    println((0.5<b1))
    println((b2<-2))
    println((-2<b2))
    println((b2<-4))
    println((-4<b2))
    println((b3<-1))
    println((-1<b3))
    println((b4<-1))
    println((-1<b4))
    println((one(Ban)==1))  
    println((1==one(Ban))) 

    b8 = Ban(2, [-1.0,2,-4]);
    b9 = Ban(-2, [-1.0,2,-4]);

    println(b8/b8)


    println(b8+3)
    b8+=3;
    println(b8)
    println("");
    println(b9+3)
    b9+=3;
    println(b9)

    println(b8*3)
    b8*=3;
    println(b8)
    println("");
    println(b9*3)
    b9*=3;
    println(b9)

    println(b8/3)
    b8/=3;
    println(b8)
    println("");
    println(b9/3)
    b9/=3;
    println(b9)


    println("")
    println("Algebraic operations with reals")
    println(b1-3)
    println(-1+b1)
    println(b8+3)
    println(b9+3)
    println(b9*3)
    println(-2*b8)
    println(b8/3)
    z = 2/b9;
    println(z)
    println(z*b9)

    b10 = Ban(0, [3.0, -2, 4]);
    
    println("")
    println("Test sqrt")
    s = sqrt(b10);
    println(s)
    println(s*s)
#=
    println("")println("Test pow")
    println(pow(b2,2))
    println(pow(b2,-2))
    println(pow(b6,5))
    println(pow(b9,-3))
=#
#=
    println("")println("Test scrittura Ban")
    ofstream ff;
    ff.open("prova.txt");
    ff<<b9;
    ff.close();

    println("")println("Sizeof int")
    println(sizeof(int))
 =#
#=
   T max_value = numeric_limits<T>::max();
   T low_value = -numeric_limits<T>::max();
   println(max_value)
   println(low_value)
   println(max_value-low_value)
=#
    #srand(1);
    #println("")<<rand()<<endl<<rand()<<endl<<rand())
    #println(RAND_MAX)
#=
    for(unsigned i=0; i<20; ++i)
        println(static_cast <T> (rand()) / static_cast <T> (RAND_MAX)println(" ";

    println("");
=#
nothing