#include "../src/ban_s3.h"

int main(){

    T v0[] = {100,-2,-4};
    Ban b0 = Ban(0, v0);

    T v1[] = {1.0,-2,4};
    Ban b1(0, v1);

    T v2[] = {-3,-5,14.5};
    Ban b2(0, v2);

    T v3[] = {-1.0,-2,4};
    Ban b3(0, v3);

    T v4[] = {-1.0,2,4};
    Ban b4 = Ban(0, v4);

    T v5[] = {-1.0,2,-4};
    Ban b5 = Ban(0, v5);

    T v6[] = {1e-30, 0, 0};
    Ban b6(1, v6);

    Ban b7 = b2*ALPHA;

    T v8[] = {-1.0,2,-4};
    Ban b8 = Ban(2, v8);
    Ban b9 = Ban(-2, v8);

    T v10[] = {3.0, -2, 4};
    Ban b10(0, v10);

    T v11[] = {-2.0, 0, 0};
    Ban b11(0,v11);

    Ban b[12] = {b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11};
    T v[5] = {-2.0, 0, 5, 12, -4};

    for(unsigned i=0; i<12; ++i){
        ban_interface(b[i], 0.0, 0.0, OPP);
        ban_interface(b[i], 0.0, 0.0, ABS);
        ban_interface(b[i], 0.0, 0.0, SQRT);

        for(unsigned j=0; j<12; ++j){
            ban_interface(b[i], b[j], 0.0, SUM);
            ban_interface(b[i], b[j], 0.0, DIF);
            ban_interface(b[i], b[j], 0.0, MUL);
            ban_interface(b[i], b[j], 0.0, DIV);
            ban_interface(b[i], b[j], 0.0, EQ);
            ban_interface(b[i], b[j], 0.0, NEQ);
            ban_interface(b[i], b[j], 0.0, LES);
            ban_interface(b[i], b[j], 0.0, LAR);
            ban_interface(b[i], b[j], 0.0, LES_EQ);
            ban_interface(b[i], b[j], 0.0, LAR_EQ);
        }

        for(unsigned j=0; j<5; ++j){
            ban_interface(b[i], 0.0, v[j], SUM_R);
            ban_interface(b[i], 0.0, v[j], DIF_R);
            ban_interface(b[i], 0.0, v[j], MUL_R);
            ban_interface(b[i], 0.0, v[j], DIV_R);
            ban_interface(b[i], 0.0, v[j], EQ_R);
            ban_interface(b[i], 0.0, v[j], NEQ_R);
            ban_interface(b[i], 0.0, v[j], LES_R);
            ban_interface(b[i], 0.0, v[j], LAR_R);
            ban_interface(b[i], 0.0, v[j], LES_EQ_R);
            ban_interface(b[i], 0.0, v[j], LAR_EQ_R);
        }
    }

    return 0;
}
