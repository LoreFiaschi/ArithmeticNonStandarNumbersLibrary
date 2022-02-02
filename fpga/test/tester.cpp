//#include <iostream>
#include <fstream>
//#include <chrono>
#include "../src/ban.h"
using namespace std;
//using namespace std::chrono;

// Missing checks with reals (but 0)

int main(){

    ifstream ff;
    
    ofstream out;

    ff.open("data.txt");
    out.open("out_cpp.txt");

    unsigned SAMPLES, SIZE;
    ff>>SAMPLES>>SIZE;
    
    int p;
    T c[SIZE];

    //auto start = high_resolution_clock::now();

    for(unsigned i=0; i<SAMPLES; ++i){
        ff>>p;

        for(unsigned j=0; j<SIZE; ++j)
            ff>>c[j];

        Ban b1(p, c);
        ifstream ff2;
        ff2.open("data.txt");
        for(unsigned ii=0; ii <= i+1; ++ii)
            ff2.ignore(100, '\n');

        for(unsigned ii=i+1; ii<SAMPLES; ++ii){           
            ff2>>p;

            for(unsigned j=0; j<SIZE; ++j)
                ff2>>c[j];

            Ban b2(p, c);

            out<<b1+b2<<endl;
            out<<b1-b2<<endl;
            out<<b1*b2<<endl;
            out<<b1/b2<<endl;
            out<<b2/b1<<endl;
            out<<(b1==b2)<<endl;
            out<<(b1<b2)<<endl;
            out<<pow(b1,2)<<endl;
            out<<pow(b1,-2)<<endl;
            out<<pow(b1,5)<<endl;
            out<<pow(b1,-5)<<endl;
            out<<abs(b1)<<endl;
            if(b1>=0 && !(degree(b1) & 1u))
                out<<sqrt(b1)<<endl;
        }

        ff2.close();
    }

    /*
    auto stop = high_resolution_clock::now();

    auto duration = duration_cast<microseconds>(stop - start);
    cout << duration.count() << endl;
    */

    ff.close();
    out.close();

    return 0;
}