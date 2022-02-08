set moduleName operator_1_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {operator/.1.1}
set C_modelType { int 128 }
set C_modelArgList {
	{ this_p_read int 32 regular  }
	{ b_1 float 32 regular {array 36 { 1 1 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ this_1_offset int 4 regular  }
	{ b_p_read int 32 regular  }
	{ b_1_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "this_p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_1_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_1_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 96
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_p_read sc_in sc_lv 32 signal 0 } 
	{ b_1_address0 sc_out sc_lv 6 signal 1 } 
	{ b_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ b_1_q0 sc_in sc_lv 32 signal 1 } 
	{ b_1_address1 sc_out sc_lv 6 signal 1 } 
	{ b_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ b_1_q1 sc_in sc_lv 32 signal 1 } 
	{ b_1_address2 sc_out sc_lv 6 signal 1 } 
	{ b_1_ce2 sc_out sc_logic 1 signal 1 } 
	{ b_1_q2 sc_in sc_lv 32 signal 1 } 
	{ b_1_address3 sc_out sc_lv 6 signal 1 } 
	{ b_1_ce3 sc_out sc_logic 1 signal 1 } 
	{ b_1_q3 sc_in sc_lv 32 signal 1 } 
	{ this_1_offset sc_in sc_lv 4 signal 2 } 
	{ b_p_read sc_in sc_lv 32 signal 3 } 
	{ b_1_offset sc_in sc_lv 4 signal 4 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12725_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12725_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12725_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_12725_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12725_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4198_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4198_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4198_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4198_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4204_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4204_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4204_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4204_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12729_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12729_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12729_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12729_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4235_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4235_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4235_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_4235_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_4235_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4183_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4183_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4183_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4183_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4183_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4190_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4190_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4190_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_4190_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4190_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4194_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4194_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4194_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_4194_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4194_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4211_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4211_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4211_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4211_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4215_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4215_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4215_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4215_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4219_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4219_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4219_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4219_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12733_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12733_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12733_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_12733_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_12733_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din2 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din3 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din4 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din5 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din6 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din7 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din8 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din9 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_dout0_0 sc_in sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_dout0_1 sc_in sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_dout0_2 sc_in sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_idle sc_in sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "this_p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_p_read", "role": "default" }} , 
 	{ "name": "b_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_1", "role": "address0" }} , 
 	{ "name": "b_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce0" }} , 
 	{ "name": "b_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "q0" }} , 
 	{ "name": "b_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_1", "role": "address1" }} , 
 	{ "name": "b_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce1" }} , 
 	{ "name": "b_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "q1" }} , 
 	{ "name": "b_1_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_1", "role": "address2" }} , 
 	{ "name": "b_1_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce2" }} , 
 	{ "name": "b_1_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "q2" }} , 
 	{ "name": "b_1_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_1", "role": "address3" }} , 
 	{ "name": "b_1_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce3" }} , 
 	{ "name": "b_1_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "q3" }} , 
 	{ "name": "this_1_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "this_1_offset", "role": "default" }} , 
 	{ "name": "b_p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_p_read", "role": "default" }} , 
 	{ "name": "b_1_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_1_offset", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "grp_fu_12725_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12725_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12725_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12725_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12725_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_12725_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12725_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12725_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12725_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12725_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4198_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4198_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4198_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4198_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4198_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4198_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4198_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4198_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4204_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4204_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4204_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4204_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4204_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4204_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4204_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4204_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12729_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12729_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12729_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12729_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12729_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12729_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12729_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12729_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4235_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4235_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_4235_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4235_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4235_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4183_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4183_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4183_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4183_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4183_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4183_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4183_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4183_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4183_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4183_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4190_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4190_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4190_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4190_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4190_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_4190_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4190_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4190_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4190_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4190_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4194_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4194_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4194_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4194_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4194_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_4194_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4194_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4194_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4194_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4194_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4211_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4211_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4211_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4211_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4211_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4211_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4211_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4211_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4215_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4215_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4215_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4215_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4215_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4215_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4215_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4215_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4219_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4219_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4219_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4219_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4219_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4219_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4219_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4219_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12733_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12733_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12733_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12733_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12733_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_12733_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12733_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12733_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12733_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12733_p_ce", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din1", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din2", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din3", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din4", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din5", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din6", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din7", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din8", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din9", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_dout0_0", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_dout0_1", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_dout0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_dout0_2", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_start", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_ready", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_done", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "9", "12"],
		"CDFG" : "operator_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_mul_fu_318", "Port" : "num_b", "Inst_start_state" : "5", "Inst_end_state" : "17"}]},
			{"Name" : "this_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_offset", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_215_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "45", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state17"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_318", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
		"CDFG" : "p_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "94", "EstimateLatencyMax" : "94",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "num_a_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_a_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "num_b_offset", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state20"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_318.aux_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_318.mux_32_32_1_1_U221", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_318.mux_32_32_1_1_U222", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_318.mux_32_32_1_1_U223", "Parent" : "1"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_Pipeline_VITIS_LOOP_84_1_fu_344", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "operator_1_1_Pipeline_VITIS_LOOP_84_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tmp_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_Pipeline_VITIS_LOOP_84_1_fu_344.mux_32_32_1_1_U245", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_Pipeline_VITIS_LOOP_84_1_fu_344.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_Pipeline_VITIS_LOOP_92_2_fu_352", "Parent" : "0", "Child" : ["10", "11"],
		"CDFG" : "operator_1_1_Pipeline_VITIS_LOOP_92_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tmp_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_num_load_221_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_num_load15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_assign_load9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_Pipeline_VITIS_LOOP_92_2_fu_352.mux_32_32_1_1_U250", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_Pipeline_VITIS_LOOP_92_2_fu_352.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_Pipeline_VITIS_LOOP_104_3_fu_364", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "operator_1_1_Pipeline_VITIS_LOOP_104_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_num_load_219", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_num_load13", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_assign_load7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_num_load_218_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_num_load12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_assign_load6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_Pipeline_VITIS_LOOP_104_3_fu_364.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"}]}


set ArgLastReadFirstWriteLatency {
	operator_1_1 {
		this_p_read {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 4 FirstWrite -1}
		this_1_offset {Type I LastRead 0 FirstWrite -1}
		b_p_read {Type I LastRead 0 FirstWrite -1}
		b_1_offset {Type I LastRead 0 FirstWrite -1}}
	p_mul {
		num_a_1_read {Type I LastRead 1 FirstWrite -1}
		num_a_2_read {Type I LastRead 1 FirstWrite -1}
		num_b {Type I LastRead 1 FirstWrite -1}
		num_b_offset {Type I LastRead 0 FirstWrite -1}}
	operator_1_1_Pipeline_VITIS_LOOP_84_1 {
		tmp_63 {Type I LastRead 0 FirstWrite -1}
		tmp_64 {Type I LastRead 0 FirstWrite -1}
		tmp_65 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	operator_1_1_Pipeline_VITIS_LOOP_92_2 {
		tmp_65 {Type I LastRead 0 FirstWrite -1}
		tmp_64 {Type I LastRead 0 FirstWrite -1}
		tmp_63 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		c_num_load_221_out {Type O LastRead -1 FirstWrite 1}
		c_num_load15_out {Type O LastRead -1 FirstWrite 1}
		num_res_assign_load9_out {Type O LastRead -1 FirstWrite 1}}
	operator_1_1_Pipeline_VITIS_LOOP_104_3 {
		c_num_load_219 {Type I LastRead 0 FirstWrite -1}
		c_num_load13 {Type I LastRead 0 FirstWrite -1}
		num_res_assign_load7 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_6 {Type I LastRead 0 FirstWrite -1}
		c_num_load_218_out {Type O LastRead -1 FirstWrite 1}
		c_num_load12_out {Type O LastRead -1 FirstWrite 1}
		num_res_assign_load6_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	this_p_read { ap_none {  { this_p_read in_data 0 32 } } }
	b_1 { ap_memory {  { b_1_address0 mem_address 1 6 }  { b_1_ce0 mem_ce 1 1 }  { b_1_q0 in_data 0 32 }  { b_1_address1 MemPortADDR2 1 6 }  { b_1_ce1 MemPortCE2 1 1 }  { b_1_q1 MemPortDOUT2 0 32 }  { b_1_address2 MemPortADDR2 1 6 }  { b_1_ce2 MemPortCE2 1 1 }  { b_1_q2 MemPortDOUT2 0 32 }  { b_1_address3 MemPortADDR2 1 6 }  { b_1_ce3 MemPortCE2 1 1 }  { b_1_q3 MemPortDOUT2 0 32 } } }
	this_1_offset { ap_none {  { this_1_offset in_data 0 4 } } }
	b_p_read { ap_none {  { b_p_read in_data 0 32 } } }
	b_1_offset { ap_none {  { b_1_offset in_data 0 4 } } }
}
