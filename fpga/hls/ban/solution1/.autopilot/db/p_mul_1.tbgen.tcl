set moduleName p_mul_1
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
set C_modelName {_mul.1}
set C_modelType { int 96 }
set C_modelArgList {
	{ num_a_1_read float 32 regular  }
	{ num_a_2_read float 32 regular  }
	{ num_b float 32 regular {array 36 { 1 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ num_b_offset int 4 regular  }
	{ num_res_0_read float 32 regular  }
	{ num_res_1_read float 32 regular  }
	{ num_res_2_read float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_a_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_a_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_b", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_b_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "num_res_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_res_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_res_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 96} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_a_1_read sc_in sc_lv 32 signal 0 } 
	{ num_a_2_read sc_in sc_lv 32 signal 1 } 
	{ num_b_address0 sc_out sc_lv 6 signal 2 } 
	{ num_b_ce0 sc_out sc_logic 1 signal 2 } 
	{ num_b_q0 sc_in sc_lv 32 signal 2 } 
	{ num_b_address1 sc_out sc_lv 6 signal 2 } 
	{ num_b_ce1 sc_out sc_logic 1 signal 2 } 
	{ num_b_q1 sc_in sc_lv 32 signal 2 } 
	{ num_b_address2 sc_out sc_lv 6 signal 2 } 
	{ num_b_ce2 sc_out sc_logic 1 signal 2 } 
	{ num_b_q2 sc_in sc_lv 32 signal 2 } 
	{ num_b_offset sc_in sc_lv 4 signal 3 } 
	{ num_res_0_read sc_in sc_lv 32 signal 4 } 
	{ num_res_1_read sc_in sc_lv 32 signal 5 } 
	{ num_res_2_read sc_in sc_lv 32 signal 6 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
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
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_a_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_a_1_read", "role": "default" }} , 
 	{ "name": "num_a_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_a_2_read", "role": "default" }} , 
 	{ "name": "num_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "num_b", "role": "address0" }} , 
 	{ "name": "num_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_b", "role": "ce0" }} , 
 	{ "name": "num_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_b", "role": "q0" }} , 
 	{ "name": "num_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "num_b", "role": "address1" }} , 
 	{ "name": "num_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_b", "role": "ce1" }} , 
 	{ "name": "num_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_b", "role": "q1" }} , 
 	{ "name": "num_b_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "num_b", "role": "address2" }} , 
 	{ "name": "num_b_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_b", "role": "ce2" }} , 
 	{ "name": "num_b_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_b", "role": "q2" }} , 
 	{ "name": "num_b_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "num_b_offset", "role": "default" }} , 
 	{ "name": "num_res_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_res_0_read", "role": "default" }} , 
 	{ "name": "num_res_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_res_1_read", "role": "default" }} , 
 	{ "name": "num_res_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_res_2_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
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
 	{ "name": "grp_fu_12729_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12729_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "p_mul_1",
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
			{"Name" : "num_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_2_read", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state20"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aux_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U557", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U558", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U559", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_mul_1 {
		num_a_1_read {Type I LastRead 1 FirstWrite -1}
		num_a_2_read {Type I LastRead 1 FirstWrite -1}
		num_b {Type I LastRead 1 FirstWrite -1}
		num_b_offset {Type I LastRead 0 FirstWrite -1}
		num_res_0_read {Type I LastRead 1 FirstWrite -1}
		num_res_1_read {Type I LastRead 1 FirstWrite -1}
		num_res_2_read {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "94", "Max" : "94"}
	, {"Name" : "Interval", "Min" : "94", "Max" : "94"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	num_a_1_read { ap_none {  { num_a_1_read in_data 0 32 } } }
	num_a_2_read { ap_none {  { num_a_2_read in_data 0 32 } } }
	num_b { ap_memory {  { num_b_address0 mem_address 1 6 }  { num_b_ce0 mem_ce 1 1 }  { num_b_q0 mem_dout 0 32 }  { num_b_address1 MemPortADDR2 1 6 }  { num_b_ce1 MemPortCE2 1 1 }  { num_b_q1 MemPortDOUT2 0 32 }  { num_b_address2 MemPortADDR2 1 6 }  { num_b_ce2 MemPortCE2 1 1 }  { num_b_q2 MemPortDOUT2 0 32 } } }
	num_b_offset { ap_none {  { num_b_offset in_data 0 4 } } }
	num_res_0_read { ap_none {  { num_res_0_read in_data 0 32 } } }
	num_res_1_read { ap_none {  { num_res_1_read in_data 0 32 } } }
	num_res_2_read { ap_none {  { num_res_2_read in_data 0 32 } } }
}
