// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __main_v_ROM_AUTO_1R_H__
#define __main_v_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct main_v_ROM_AUTO_1R_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 12;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(main_v_ROM_AUTO_1R_ram) {
        ram[0] = "0b00111101111110011111111101010110";
        ram[1] = "0b00111110100100110111010000110110";
        ram[2] = "0b00111110000100101010101000011010";
        ram[3] = "0b00111111011010000000010000001010";
        ram[4] = "0b00111110111111001001000100010001";
        ram[5] = "0b00111111011110010000100001000001";
        ram[6] = "0b00111110110101101100110100101010";
        ram[7] = "0b00111111011101000111011111111000";
        ram[8] = "0b00111101101101011111000100010101";
        ram[9] = "0b00111111010111100000000011100111";
        ram[10] = "0b00111111001100110001010101011010";
        ram[11] = "0b00111110000101100010100010011000";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(main_v_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 12;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


main_v_ROM_AUTO_1R_ram* meminst;


SC_CTOR(main_v_ROM_AUTO_1R) {
meminst = new main_v_ROM_AUTO_1R_ram("main_v_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~main_v_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
