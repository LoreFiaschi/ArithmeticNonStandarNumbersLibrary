//#include <iostream>
#include <fstream>
#include <limits>
#include <cstdlib>
#include <iomanip>
#include <cmath>
using namespace std;
typedef float T;

const unsigned SAMPLES = 1500;
const T MAX_FAR = numeric_limits<T>::max();
const T MIN_FAR = -numeric_limits<T>::max();
const T MAX_CLOSE = 10;
const T MIN_CLOSE = 0;
const unsigned SIZE = 3;
const bool NO_DUPLICATE = false;
const T DUP_PROB = 0.7;
const T ID_PROB = 0.6;
const T DENOM_CLOSE = static_cast <T> (RAND_MAX/(MAX_CLOSE-MIN_CLOSE));

inline int rand_power(){
    return (rand() & 3u)-1;
}

inline T rand_01(){
    return static_cast <T> (rand()) / static_cast <T> (RAND_MAX);
}

// ignoring the possibility to generate 0
T rand_coef_far(){
    int p = round(rand_01());
    if(p == 0)
        p = -1;
    return p*static_cast <T> (rand()) / static_cast <T> (RAND_MAX)*MAX_FAR;
}

T rand_coef_close(){
    int p = round(rand_01());
    if(p == 0)
        p = -1;
    return p*static_cast <T> (rand()) / DENOM_CLOSE;
}

void generate_data_no_dup(ofstream &ff){
    for(unsigned i=0; i<SAMPLES; ++i){
        ff<<rand_power()<<" ";
        
        for(unsigned j=0; j<SIZE; ++j)
            ff<<rand_coef_close()<<" ";
        
        ff<<endl;
    }

    for(unsigned i=0; i<SAMPLES; ++i){
        ff<<rand_power()<<" ";
        
        for(unsigned j=0; j<SIZE; ++j)
            ff<<rand_coef_far()<<" ";
        
        ff<<endl;
    }
}

void generate_data_dup(ofstream &ff){
    int p;
    T c[SIZE];
    T dup;
    for(unsigned i=0; i<SAMPLES; ++i){
        p = rand_power();
        ff<<p<<" ";
        
        for(unsigned j=0; j<SIZE; ++j){
            c[j] = rand_coef_close();
            ff<<c[j]<<" ";
        }

        ff<<endl;

        dup = rand_01();
        if(dup>DUP_PROB){
            ff<<p<<" ";
            ff<<c[0]<<" ";
            for(unsigned j=1; j<SIZE; ++j)
                if(rand_01()>ID_PROB)
                    ff<<c[j]<<" ";
                else
                    ff<<rand_coef_close()<<" ";
            
            ff<<endl;
            ++i;
        }
    }

    for(unsigned i=0; i<SAMPLES; ++i){
        p = rand_power();
        ff<<p<<" ";
        
        for(unsigned j=0; j<SIZE; ++j){
            c[j] = rand_coef_far();
            ff<<c[j]<<" ";
        }
        
        ff<<endl;

        dup = rand_01();
        if(dup>DUP_PROB){
            ff<<p<<" ";
            ff<<c[0]<<" ";
            for(unsigned j=1; j<SIZE; ++j)
                if(rand_01()>ID_PROB)
                    ff<<c[j]<<" ";
                else
                    ff<<rand_coef_far()<<" ";
            
            ff<<endl;
            ++i;
        }
    }
}

int main(){
    
    srand(1);
    ofstream ff;
    ff.open("data.txt");
    ff<<2*SAMPLES<<" "<<SIZE<<endl;
    ff<<scientific<<setprecision(6);

    if constexpr (NO_DUPLICATE)
        generate_data_no_dup(ff);
    else
        generate_data_dup(ff);
    

    ff.close();


    return 0;
}
