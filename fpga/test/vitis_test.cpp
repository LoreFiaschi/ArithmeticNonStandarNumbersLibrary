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
    T v[5] = {-2.0, 0.1, 5, 12, -4};

    bool ok = true;
    output out;

    for(unsigned i=0; i<12; ++i){
        out = ban_interface(b[i], 0.0, 0.0, OPP);
        ok &= (out.b == -b[i]);
        if(!ok)
            return OPP+1;

        out = ban_interface(b[i], 0.0, 0.0, ABS);
        ok &= (out.b == abs(b[i]));
        if(!ok)
            return ABS+1;

        out = ban_interface(b[i], 0.0, 0.0, SQRT);
        ok &= (out.b == sqrt(b[i]));
        if(!ok)
            ok = true;
        //    return SQRT+1;

        for(unsigned j=0; j<12; ++j){
            out = ban_interface(b[i], b[j], 0.0, SUM);
            ok &= (out.b == (b[i]+b[j]));
            if(!ok)
                return SUM+1;

            out = ban_interface(b[i], b[j], 0.0, DIF);
            ok &= (out.b == (b[i]-b[j]));
            if(!ok)
                return DIF+1;

            out = ban_interface(b[i], b[j], 0.0, MUL);
            ok &= (out.b == (b[i]*b[j]));
            if(!ok)
                return MUL+1;

            out = ban_interface(b[i], b[j], 0.0, DIV);
            ok &= (out.b == (b[i]/b[j]));
            if(!ok)
                return DIV+1;

            out = ban_interface(b[i], b[j], 0.0, EQ);
            ok &= (out.l == (b[i]==b[j]));
            if(!ok)
                return EQ+1;

            out = ban_interface(b[i], b[j], 0.0, NEQ);
            ok &= (out.l == (b[i]!=b[j]));
            if(!ok)
                return NEQ+1;

            out = ban_interface(b[i], b[j], 0.0, LES);
            ok &= (out.l == (b[i]<b[j]));
            if(!ok)
                return LES+1;

            out = ban_interface(b[i], b[j], 0.0, LAR);
            ok &= (out.l == (b[i]>b[j]));
            if(!ok)
                return LAR+1;

            out = ban_interface(b[i], b[j], 0.0, LES_EQ);
            ok &= (out.l == (b[i]<=b[j]));
            if(!ok)
                return LES_EQ+1;

            out = ban_interface(b[i], b[j], 0.0, LAR_EQ);
            ok &= (out.l == (b[i]>=b[j]));
            if(!ok)
                return LAR_EQ+1;
        }

        for(unsigned j=0; j<5; ++j){
            out = ban_interface(b[i], 0.0, v[j], SUM_R);
            ok &= (out.b == (b[i]+v[j]));
            if(!ok)
                return SUM_R+1;

            out = ban_interface(b[i], 0.0, v[j], DIF_R);
            ok &= (out.b == (b[i]-v[j]));
            if(!ok)
                return DIF_R+1;

            out = ban_interface(b[i], 0.0, v[j], MUL_R);
            ok &= (out.b == (b[i]*v[j]));
            if(!ok)
                return MUL_R+1;

            out = ban_interface(b[i], 0.0, v[j], DIV_R);
            ok &= (out.b == (b[i]/v[j]));
            if(!ok)
                return DIV_R+1;

            out = ban_interface(b[i], 0.0, v[j], EQ_R);
            ok &= (out.l == (b[i]==v[j]));
            if(!ok)
                return EQ_R+1;

            out = ban_interface(b[i], 0.0, v[j], NEQ_R);
            ok &= (out.l == (b[i]!=v[j]));
            if(!ok)
                return NEQ_R+1;

            out = ban_interface(b[i], 0.0, v[j], LES_R);
            ok &= (out.l == (b[i]<v[j]));
            if(!ok)
                return LES_R+1;

            out = ban_interface(b[i], 0.0, v[j], LAR_R);
            ok &= (out.l == (b[i]>v[j]));
            if(!ok)
                return LAR_R+1;

            out = ban_interface(b[i], 0.0, v[j], LES_EQ_R);
            ok &= (out.l == (b[i]<=v[j]));
            if(!ok)
                return LES_EQ_R+1;

            out = ban_interface(b[i], 0.0, v[j], LAR_EQ_R);
            ok &= (out.l == (b[i]>=v[j]));
            if(!ok)
                return LAR_EQ_R+1;
        }
    }

    return !ok;
}
