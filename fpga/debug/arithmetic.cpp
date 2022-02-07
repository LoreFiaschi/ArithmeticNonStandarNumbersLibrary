#include <iostream>
#include <fstream>
#include <limits>
#include <cstdlib>
#include <cmath>
#include "../src/ban.h"
//#include "../src/ban_basic.h"
using namespace std;

int main(){

    
    T v1[] = {1.0,-2,4};
    Ban b1(0, v1);
//    cout<<b1<<endl;

    T v2[] = {-3,-5,14.5};
    Ban b2(0, v2);
//    cout<<b2<<endl;

    cout<<b1/b2<<endl;
    b1 /= b2;
    cout<<b1<<endl;

    cout<<b1/b1<<endl;
    b1/= b1;
    cout<<b1<<endl;
/*
/*
    cout<<endl<<"Equality with real"<<endl;
    cout<<(b1==0)<<endl;

    
    cout<<endl<<"Sum"<<endl;
    cout<<b1+b2<<endl;


    cout<<endl<<"Subtraction"<<endl;
    cout<<b1-b2<<endl;

    
    cout<<endl<<"Product"<<endl;
    cout<<b1*b2<<endl;
    
    cout<<endl<<"Division"<<endl;
    cout<<b1/b2<<endl;
    

    cout<<endl<<"Check normal form for sum"<<endl;
    T v3[] = {-1.0,-2,4};
    Ban b3(0, v3);
    cout<<b1+b3<<endl;
    T v4[] = {-1.0,2,4};
    Ban b4 = Ban(0, v4);
    cout<<b1+b4<<endl;
    T v5[] = {-1.0,2,-4};
    Ban b5 = Ban(0, v5);
    cout<<b1+b5<<endl;
    T v0[] = {-1.0,-2,-4};
    Ban b0 = Ban(0, v0);
    cout<<b1+b0<<endl;

    cout<<endl<<"Check normal form for product"<<endl;
    T v6[] = {1e-30, 0, 0};
    Ban b6(1, v6);
    cout<<b6*b6<<endl;

    // still to check normal form for division

    cout<<endl<<"Ordering"<<endl;
    cout<<(b1<b2)<<endl;
    cout<<(b1>b2)<<endl;
    Ban b7 = b2*ALPHA;
    cout<<(b1<b7)<<endl;
    cout<<(b1>b7)<<endl;
    cout<<(b1<-b7)<<endl;
    cout<<(b1>-b7)<<endl;

    cout<<endl<<"Ordering with a real"<<endl;
    cout<<(b1<2)<<endl;
    cout<<(2<b1)<<endl;
    cout<<(b1<0.5)<<endl;
    cout<<(0.5<b1)<<endl;
    cout<<(b2<-2)<<endl;
    cout<<(-2<b2)<<endl;
    cout<<(b2<-4)<<endl;
    cout<<(-4<b2)<<endl;
    cout<<(b3<-1)<<endl;
    cout<<(-1<b3)<<endl;
    cout<<(b4<-1)<<endl;
    cout<<(-1<b4)<<endl;
    cout<<(ONE==1)<<endl;  
    cout<<(1==ONE)<<endl; 


    T v8[] = {-1.0,2,-4};
    Ban b8 = Ban(2, v8);
    Ban b9 = Ban(-2, v8);

    cout<<b8/b8<<endl;

/*
    cout<<b8+3<<endl;
    b8+=3;
    cout<<b8<<endl;
    cout<<endl;
    cout<<b9+3<<endl;
    b9+=3;
    cout<<b9<<endl;

    cout<<b8*3<<endl;
    b8*=3;
    cout<<b8<<endl;
    cout<<endl;
    cout<<b9*3<<endl;
    b9*=3;
    cout<<b9<<endl;

    cout<<b8/3<<endl;
    b8/=3;
    cout<<b8<<endl;
    cout<<endl;
    cout<<b9/3<<endl;
    b9/=3;
    cout<<b9<<endl;

/*
    cout<<endl<<"Algebraic operations with reals"<<endl;
    cout<<b1-3<<endl;
    cout<<-1+b1<<endl;
    cout<<b8+3<<endl;
    cout<<b9+3<<endl;
    cout<<b9*3<<endl;
    cout<<-2*b8<<endl;
    cout<<b8/3<<endl;
    Ban z = 2/b9;
    cout<<z<<endl;
    cout<<z*b9<<endl;

    T v10[] = {3.0, -2, 4};
    Ban b10(0, v10);
    
    cout<<endl<<"Test sqrt"<<endl;
    Ban s = sqrt(b10);
    cout<<s<<endl;
    cout<<s*s<<endl;

    cout<<endl<<"Test pow"<<endl;
    cout<<pow(b2,2)<<endl;
    cout<<pow(b2,-2)<<endl;
    cout<<pow(b6,5)<<endl;
    cout<<pow(b9,-3)<<endl;

	/*
    cout<<endl<<"Test scrittura Ban"<<endl;
    ofstream ff;
    ff.open("prova.txt");
    ff<<b9;
    ff.close();

    cout<<endl<<"Sizeof int"<<endl;
    cout<<sizeof(int)<<endl;
    */
   /*
   T max_value = numeric_limits<T>::max();
   T low_value = -numeric_limits<T>::max();
   cout<<max_value<<endl;
   cout<<low_value<<endl;
   cout<<max_value-low_value<<endl;
    */
    //srand(1);
    //cout<<endl<<rand()<<endl<<rand()<<endl<<rand()<<endl;
    //cout<<RAND_MAX<<endl;
    /*
    for(unsigned i=0; i<20; ++i)
        cout<<static_cast <T> (rand()) / static_cast <T> (RAND_MAX)<<" ";

    cout<<endl;
    */
    return 0;
}
