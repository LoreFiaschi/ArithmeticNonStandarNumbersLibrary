#include <fstream>
#include <limits>
#include <cstdlib>
#include <iomanip>
#include <cmath>
using namespace std;
typedef float T;

const unsigned SAMPLES = 10; //1000000;
const T MAX = 1e20;
const T MIN = -1e20;
const unsigned SIZE = 3;
const T DENOM = static_cast <T> (RAND_MAX/(MAX-MIN));

inline int rand_power(){
    return (rand() & 3u)-1;
}

// ignoring the possibility to generate 0
T rand_coef(){
    int p = round((static_cast <float> (rand()) / static_cast <float> (RAND_MAX)));
    if(p == 0)
        p = -1;
    return p*static_cast <T> (rand()) / DENOM;
}

int main(){
    
    srand(1);
    ofstream ff;
    ff.open("data.txt");
    ff<<scientific<<setprecision(6);

    for(unsigned i=0; i<SAMPLES; ++i){
        ff<<rand_power()<<" ";
        
        for(unsigned j=0; j<SIZE; ++j)
            ff<<rand_coef()<<" ";
        
        ff<<endl;
    }

    ff.close();


    return 0;
}
