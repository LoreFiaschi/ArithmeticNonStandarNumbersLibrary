#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
struct __cosim_s14__ { char data[20]; };
struct __cosim_s10__ { char data[16]; };
extern "C" __cosim_s14__ ban_interface(volatile void *, volatile void *, float, int);
extern "C" void  apatb_ban_interface_hw(__cosim_s14__* ap_return, volatile void * __xlx_apatb_param_b_op1, volatile void * __xlx_apatb_param_b_op2, float __xlx_apatb_param_f_op, int __xlx_apatb_param_op) {
  // DUT call
  *ap_return = ban_interface(__xlx_apatb_param_b_op1, __xlx_apatb_param_b_op2, __xlx_apatb_param_f_op, __xlx_apatb_param_op);
}
