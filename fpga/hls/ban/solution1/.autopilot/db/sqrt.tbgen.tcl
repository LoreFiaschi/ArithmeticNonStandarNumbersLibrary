set moduleName sqrt
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
set C_modelName {sqrt}
set C_modelType { int 128 }
set C_modelArgList {
	{ p_read float 32 regular  }
	{ p_read1 float 32 regular  }
	{ p_read2 float 32 regular  }
	{ b_p_read int 32 regular  }
	{ b_1 float 32 regular {array 36 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ b_1_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_1_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 32 signal 0 } 
	{ p_read1 sc_in sc_lv 32 signal 1 } 
	{ p_read2 sc_in sc_lv 32 signal 2 } 
	{ b_p_read sc_in sc_lv 32 signal 3 } 
	{ b_1_address0 sc_out sc_lv 6 signal 4 } 
	{ b_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_1_q0 sc_in sc_lv 32 signal 4 } 
	{ b_1_address1 sc_out sc_lv 6 signal 4 } 
	{ b_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ b_1_q1 sc_in sc_lv 32 signal 4 } 
	{ b_1_offset sc_in sc_lv 4 signal 5 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12725_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12725_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12725_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_12725_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12725_p_ce sc_out sc_logic 1 signal -1 } 
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
	{ grp_fu_4211_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4211_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4211_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4211_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4235_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4235_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4235_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_4235_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_4235_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "b_p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_p_read", "role": "default" }} , 
 	{ "name": "b_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_1", "role": "address0" }} , 
 	{ "name": "b_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce0" }} , 
 	{ "name": "b_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "q0" }} , 
 	{ "name": "b_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_1", "role": "address1" }} , 
 	{ "name": "b_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce1" }} , 
 	{ "name": "b_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "q1" }} , 
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
 	{ "name": "grp_fu_4211_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4211_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4211_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4211_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4211_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4211_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4211_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4211_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4235_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4235_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_4235_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4235_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4235_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "sqrt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "149",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1_offset", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state53", "ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_565_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state22"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state23"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state23", "LastState" : ["ap_ST_fsm_state39"], "QuitState" : ["ap_ST_fsm_state23"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state40"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state40", "LastState" : ["ap_ST_fsm_state41"], "QuitState" : ["ap_ST_fsm_state40"], "PreState" : ["ap_ST_fsm_state23"], "PostState" : ["ap_ST_fsm_state42"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state52", "LastState" : ["ap_ST_fsm_state52"], "QuitState" : ["ap_ST_fsm_state52"], "PreState" : ["ap_ST_fsm_state51"], "PostState" : ["ap_ST_fsm_state55"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state52_blk"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aux_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsqrt_32ns_32ns_32_8_no_dsp_1_U63", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U64", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U65", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U66", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U67", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sqrt {
		p_read {Type I LastRead 1 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		p_read2 {Type I LastRead 1 FirstWrite -1}
		b_p_read {Type I LastRead 1 FirstWrite -1}
		b_1 {Type I LastRead 18 FirstWrite -1}
		b_1_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "149"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "149"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 32 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 32 } } }
	b_p_read { ap_none {  { b_p_read in_data 0 32 } } }
	b_1 { ap_memory {  { b_1_address0 mem_address 1 6 }  { b_1_ce0 mem_ce 1 1 }  { b_1_q0 in_data 0 32 }  { b_1_address1 MemPortADDR2 1 6 }  { b_1_ce1 MemPortCE2 1 1 }  { b_1_q1 in_data 0 32 } } }
	b_1_offset { ap_none {  { b_1_offset in_data 0 4 } } }
}
