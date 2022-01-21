#include <iostream>
#include "../src/ban.h"
using namespace std;

int main(){

    T v1[] = {1.0,-2,4};
    Ban b1(0, v1);
    cout<<b1<<endl;

    T v2[] = {-3,-5,14.5};
    Ban b2(0, v2);
    cout<<b2<<endl;

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
    b3 = Ban(0, v4);
    cout<<b1+b3<<endl;
    T v5[] = {-1.0,2,-4};
    b3 = Ban(0, v5);
    cout<<b1+b3<<endl;

    cout<<endl<<"Check normal form for product"<<endl;
    T v6[] = {1e-30, 0, 0};
    Ban b6(1, v6);
    cout<<b6*b6<<endl;

    cout<<endl<<"Ordering"<<endl;
    cout<<(b1<b2)<<endl;
    cout<<(b1>b2)<<endl;
    Ban b7 = b2*ALPHA;
    cout<<(b1<b7)<<endl;
    cout<<(b1>b7)<<endl;
    cout<<(b1<-b7)<<endl;
    cout<<(b1>-b7)<<endl;

    return 0;
}