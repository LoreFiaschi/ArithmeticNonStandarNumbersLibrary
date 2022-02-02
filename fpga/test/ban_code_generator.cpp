#include <fstream>
#include "../src/ban.h"
using namespace std;
const unsigned MAX_SAMPLES = 20;
const unsigned SAMPLES_PER_TRIAL = 1500;

int main(){

    ifstream ff;
    
    ofstream out;

    ff.open("data.txt");
    out.open("variables.txt");

    unsigned SAMPLES, SIZE;
    ff>>SAMPLES>>SIZE;
    SAMPLES = (MAX_SAMPLES < SAMPLES) ? MAX_SAMPLES : SAMPLES;

    int p;
    T c[SIZE];

    for(unsigned i=0; i<SAMPLES; ++i){
        ff>>p;

        for(unsigned j=0; j<SIZE; ++j)
            ff>>c[j];
        
        out<<"T v"<<i<<"[] = {";

        for(unsigned j=0; j<SIZE-1; ++j)
            out<<c[j]<<", ";
        
        out<<c[SIZE-1]<<"};"<<endl;
        
        out<<"Ban b"<<i<<"("<<p<<", v"<<i<<");"<<endl;
        
    }

    for(unsigned ii=0; ii <= SAMPLES_PER_TRIAL; ++ii)
            ff.ignore(100, '\n');

    SAMPLES += SAMPLES_PER_TRIAL;

    for(unsigned i=SAMPLES_PER_TRIAL; i<SAMPLES; ++i){
        ff>>p;

        for(unsigned j=0; j<SIZE; ++j)
            ff>>c[j];
        
        out<<"T v"<<i<<"[] = {";

        for(unsigned j=0; j<SIZE-1; ++j)
            out<<c[j]<<", ";
        
        out<<c[SIZE-1]<<"};"<<endl;
        
        out<<"Ban b"<<i<<"("<<p<<", v"<<i<<");"<<endl;
        
    }

    ff.close();
    out.close();

    return 0;
}