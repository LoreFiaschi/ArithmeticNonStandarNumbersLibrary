//#include "ban.h"
#include "ban_s3.h"

output ban_interface(Ban &b_op1, const Ban &b_op2, T f_op, op_type op){

    output out;

    switch (op){
        case SUM:
            out.b = b_op1 + b_op2;
            break;

        case OPP:
            out.b = -b_op1;
            break;

        case DIF:
            out.b = b_op1 - b_op2;
            break;
        
        case MUL:
            out.b = b_op1 * b_op2;
            break;

        case DIV:
            out.b = b_op1 / b_op2;
            break;

        case SUM_EQ:
            b_op1 += b_op2;
            break;

        case DIF_EQ:
            b_op1 -= b_op2;
            break;

        case MUL_EQ:
            b_op1 *= b_op2;
            break;

        case DIV_EQ:
            b_op1 /= b_op2;
            break;

        case ABS:
            out.b = abs(b_op1);
            break;

        case SQRT:
            out.b = sqrt(b_op1);
            break;

        case EQ:
            out.l = b_op1 == b_op2;
            break;

        case NEQ:
            out.l = b_op1 != b_op2;
            break;

        case LES:
            out.l = b_op1 < b_op2;
            break;
        
        case LAR:
            out.l = b_op1 > b_op2;
            break;

        case LES_EQ:
            out.l = b_op1 <= b_op2;
            break;

        case LAR_EQ:
            out.l = b_op1 >= b_op2;
            break;

        case SUM_R:
            out.b = b_op1 + f_op;
            break;

        case DIF_R:
            out.b = b_op1 - f_op;
            break;

        case MUL_R:
            out.b = b_op1 * f_op;
            break;

        case DIV_R:
            out.b = b_op1 / f_op;
            break;

        case SUM_EQ_R:
            b_op1 += f_op;
            break;

        case DIF_EQ_R:
            b_op1 -= f_op;
            break;

        case MUL_EQ_R:
            b_op1 *= f_op;
            break;

        case DIV_EQ_R:
            b_op1 /= f_op;
            break;
        
        case SUM_RB: 
            out.b = f_op + b_op1;
            break;

        case DIF_RB:
            out.b = f_op - b_op1;
            break;

        case MUL_RB:
            out.b = f_op * b_op1;
            break;

        case DIV_RB:
            out.b = f_op / b_op1;
            break;

        case EQ_R:
            out.l = b_op1 == f_op;
            break;

        case NEQ_R:
            out.l = b_op1 != f_op;
            break;

        case LES_R:
            out.l = b_op1 < f_op;
            break;
        
        case LAR_R:
            out.l = b_op1 > f_op;
            break;

        case LES_EQ_R:
            out.l = b_op1 <= f_op;
            break;

        case LAR_EQ_R:
            out.l = b_op1 >= f_op;
            break;

        case EQ_RB:
            out.l = f_op == b_op1;
            break;

        case NEQ_RB:
            out.l = f_op != b_op1;
            break;

        case LES_RB:
            out.l = f_op <= b_op1;
            break;
        
        case LAR_RB:
            out.l = f_op >= b_op1;
            break;

        case LES_EQ_RB:
            out.l = f_op <= b_op1;
            break;

        case LAR_EQ_RB:
            out.l = f_op >= b_op1;
            break;

        default:
            break;
    }

    return out;
}