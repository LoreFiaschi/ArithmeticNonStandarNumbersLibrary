#include <limits>
#include <cstdlib>
#include <cmath>
#include "../src/ban.h"
using namespace std;
typedef float T;

int main(){

    
    T v1[] = {1.0,-2,4};
    Ban b1(0, v1);

    T v2[] = {-3,-5,14.5};
    Ban b2(0, v2);

    b1==0;

    
    
    b1+b2;

    b1-b2;

    b1*b2;

    b1/b2;
    

    /*T v3[] = {-1.0,-2,4};
    Ban b3(0, v3);
    b1+b3;
    T v4[] = {-1.0,2,4};
    Ban b4 = Ban(0, v4);
    b1+b4;
    T v5[] = {-1.0,2,-4};
    Ban b5 = Ban(0, v5);
    b1+b5;
    T v0[] = {-1.0,-2,-4};
    Ban b0 = Ban(0, v0);
    b1+b0;

    T v6[] = {1e-30, 0, 0};
    Ban b6(1, v6);
    b6*b6;

    // still to check normal form for division

    (b1<b2);
    (b1>b2);
    Ban b7 = b2*ALPHA;
    (b1<b7);
    (b1>b7);
    (b1<-b7);
    (b1>-b7);

    (b1<2);
    (2<b1);
    (b1<0.5);
    (0.5<b1);
    (b2<-2);
    (-2<b2);
    (b2<-4);
    (-4<b2);
    (b3<-1);
    (-1<b3);
    (b4<-1);
    (-1<b4);
    (ONE==1);  
    (1==ONE); 

    T v8[] = {-1.0,2,-4};
    Ban b8 = Ban(2, v8);
    Ban b9 = Ban(-2, v8);

    b1-3;
    -1+b1;
    b8+3;
    b9+3;
    b9*3;
    -2*b8;
    b8/3;
    Ban z = 2/b9;
    z;
    z*b9;

    T v10[] = {3.0, -2, 4};
    Ban b10(0, v10);
    
    Ban s = sqrt(b10);
    s;
    s*s;

/*
    pow(b2,2);
    pow(b2,-2);
    pow(b6,5);
    pow(b9,-3);
*/

	return 0;
}
