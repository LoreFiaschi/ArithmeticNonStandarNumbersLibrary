#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_b_op1 "../tv/cdatafile/c.ban_interface.autotvin_b_op1.dat"
#define AUTOTB_TVOUT_b_op1 "../tv/cdatafile/c.ban_interface.autotvout_b_op1.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_op2 "../tv/cdatafile/c.ban_interface.autotvin_b_op2.dat"
#define AUTOTB_TVOUT_b_op2 "../tv/cdatafile/c.ban_interface.autotvout_b_op2.dat"
// wrapc file define:
#define AUTOTB_TVIN_f_op "../tv/cdatafile/c.ban_interface.autotvin_f_op.dat"
#define AUTOTB_TVOUT_f_op "../tv/cdatafile/c.ban_interface.autotvout_f_op.dat"
// wrapc file define:
#define AUTOTB_TVIN_op "../tv/cdatafile/c.ban_interface.autotvin_op.dat"
#define AUTOTB_TVOUT_op "../tv/cdatafile/c.ban_interface.autotvout_op.dat"
// wrapc file define:
#define AUTOTB_TVOUT_return "../tv/cdatafile/c.ban_interface.autotvout_ap_return.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_b_op1 "../tv/rtldatafile/rtl.ban_interface.autotvout_b_op1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_op2 "../tv/rtldatafile/rtl.ban_interface.autotvout_b_op2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_f_op "../tv/rtldatafile/rtl.ban_interface.autotvout_f_op.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_op "../tv/rtldatafile/rtl.ban_interface.autotvout_op.dat"
#define AUTOTB_TVOUT_PC_return "../tv/rtldatafile/rtl.ban_interface.autotvout_ap_return.dat"


inline void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  b_op1_depth = 0;
  b_op2_depth = 0;
  f_op_depth = 0;
  op_depth = 0;
  return_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{b_op1 " << b_op1_depth << "}\n";
  total_list << "{b_op2 " << b_op2_depth << "}\n";
  total_list << "{f_op " << f_op_depth << "}\n";
  total_list << "{op " << op_depth << "}\n";
  total_list << "{ap_return " << return_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int b_op1_depth;
    int b_op2_depth;
    int f_op_depth;
    int op_depth;
    int return_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
struct __cosim_s10__ { char data[16]; };
extern "C" void ban_interface_hw_stub_wrapper(__cosim_s10__*, volatile void *, volatile void *, float, int);

extern "C" void  apatb_ban_interface_hw(__cosim_s10__* ap_return, volatile void * __xlx_apatb_param_b_op1, volatile void * __xlx_apatb_param_b_op2, float __xlx_apatb_param_f_op, int __xlx_apatb_param_op) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_return);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > return_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "return");
  
            // push token into output port buffer
            if (AESL_token != "") {
              return_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "return" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((long long*)ap_return)[0*2+0] = return_pc_buffer[0].range(63,0).to_int64();
((long long*)ap_return)[0*2+1] = return_pc_buffer[0].range(127,64).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
// print b_op1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_op1, begin_str(AESL_transaction));
{
    sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_b_op1)[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_b_op1)[0*2+1];
aesl_fh.write(AUTOTB_TVIN_b_op1, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.b_op1_depth);
aesl_fh.write(AUTOTB_TVIN_b_op1, end_str());
}

// print b_op2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_b_op2, begin_str(AESL_transaction));
{
    sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_b_op2)[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_b_op2)[0*2+1];
aesl_fh.write(AUTOTB_TVIN_b_op2, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.b_op2_depth);
aesl_fh.write(AUTOTB_TVIN_b_op2, end_str());
}

// print f_op Transactions
{
aesl_fh.write(AUTOTB_TVIN_f_op, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_f_op);
aesl_fh.write(AUTOTB_TVIN_f_op, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.f_op_depth);
aesl_fh.write(AUTOTB_TVIN_f_op, end_str());
}

// print op Transactions
{
aesl_fh.write(AUTOTB_TVIN_op, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_op);
aesl_fh.write(AUTOTB_TVIN_op, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.op_depth);
aesl_fh.write(AUTOTB_TVIN_op, end_str());
}

CodeState = CALL_C_DUT;
ban_interface_hw_stub_wrapper(ap_return, __xlx_apatb_param_b_op1, __xlx_apatb_param_b_op2, __xlx_apatb_param_f_op, __xlx_apatb_param_op);
CodeState = DUMP_OUTPUTS;
// print return Transactions
{
aesl_fh.write(AUTOTB_TVOUT_return, begin_str(AESL_transaction));
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)ap_return)[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)ap_return)[0*2+1];
aesl_fh.write(AUTOTB_TVOUT_return, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));

  tcl_file.set_num(1, &tcl_file.return_depth);
aesl_fh.write(AUTOTB_TVOUT_return, end_str());
}

CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
