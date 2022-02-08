set moduleName operator_div
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
set C_modelName {operator/}
set C_modelType { int 128 }
set C_modelArgList {
	{ n float 32 regular  }
	{ b_p_read int 32 regular  }
	{ b_1 float 32 regular {array 36 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ b_1_offset int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
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
	{ n sc_in sc_lv 32 signal 0 } 
	{ b_p_read sc_in sc_lv 32 signal 1 } 
	{ b_1_address0 sc_out sc_lv 6 signal 2 } 
	{ b_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_1_q0 sc_in sc_lv 32 signal 2 } 
	{ b_1_offset sc_in sc_lv 4 signal 3 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4235_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4235_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4235_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_4235_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_4235_p_ce sc_out sc_logic 1 signal -1 } 
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
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "b_p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_p_read", "role": "default" }} , 
 	{ "name": "b_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_1", "role": "address0" }} , 
 	{ "name": "b_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce0" }} , 
 	{ "name": "b_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "q0" }} , 
 	{ "name": "b_1_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_1_offset", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4235_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4235_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_4235_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4235_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4235_p_ce", "role": "default" }} , 
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
 	{ "name": "grp_fu_12733_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12733_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "operator_div",
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
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1_offset", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state3_blk"}},
			{"Name" : "VITIS_LOOP_791_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state17"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state17", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state17"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state21"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state21", "LastState" : ["ap_ST_fsm_state37"], "QuitState" : ["ap_ST_fsm_state21"], "PreState" : ["ap_ST_fsm_state17"], "PostState" : ["ap_ST_fsm_state38"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state38", "LastState" : ["ap_ST_fsm_state39"], "QuitState" : ["ap_ST_fsm_state38"], "PreState" : ["ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state40"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state40", "LastState" : ["ap_ST_fsm_state56"], "QuitState" : ["ap_ST_fsm_state40"], "PreState" : ["ap_ST_fsm_state38"], "PostState" : ["ap_ST_fsm_state57"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state57", "LastState" : ["ap_ST_fsm_state58"], "QuitState" : ["ap_ST_fsm_state57"], "PreState" : ["ap_ST_fsm_state40"], "PostState" : ["ap_ST_fsm_state59"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aux_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aux_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_84_1_fu_432", "Parent" : "0", "Child" : ["4", "5"],
		"CDFG" : "operator_Pipeline_VITIS_LOOP_84_1",
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
			{"Name" : "tmp_115", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_116", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_117", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_84_1_fu_432.mux_32_32_1_1_U399", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_84_1_fu_432.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_92_2_fu_440", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "operator_Pipeline_VITIS_LOOP_92_2",
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
			{"Name" : "tmp_117", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_116", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_115", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_num_load_1243_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_num_load_1137_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_num_load_1031_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_92_2_fu_440.mux_32_32_1_1_U404", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_92_2_fu_440.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_104_3_fu_452", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "operator_Pipeline_VITIS_LOOP_104_3",
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
			{"Name" : "this_num_load_1241", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_num_load_1135", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_num_load_1029", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_num_load_1240_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_num_load_1134_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_num_load_1028_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_104_3_fu_452.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U429", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U430", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U431", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U432", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U433", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U434", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U435", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U436", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	operator_div {
		n {Type I LastRead 0 FirstWrite -1}
		b_p_read {Type I LastRead 1 FirstWrite -1}
		b_1 {Type I LastRead 4 FirstWrite -1}
		b_1_offset {Type I LastRead 1 FirstWrite -1}}
	operator_Pipeline_VITIS_LOOP_84_1 {
		tmp_115 {Type I LastRead 0 FirstWrite -1}
		tmp_116 {Type I LastRead 0 FirstWrite -1}
		tmp_117 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	operator_Pipeline_VITIS_LOOP_92_2 {
		tmp_117 {Type I LastRead 0 FirstWrite -1}
		tmp_116 {Type I LastRead 0 FirstWrite -1}
		tmp_115 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		this_num_load_1243_out {Type O LastRead -1 FirstWrite 1}
		this_num_load_1137_out {Type O LastRead -1 FirstWrite 1}
		this_num_load_1031_out {Type O LastRead -1 FirstWrite 1}}
	operator_Pipeline_VITIS_LOOP_104_3 {
		this_num_load_1241 {Type I LastRead 0 FirstWrite -1}
		this_num_load_1135 {Type I LastRead 0 FirstWrite -1}
		this_num_load_1029 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_4 {Type I LastRead 0 FirstWrite -1}
		this_num_load_1240_out {Type O LastRead -1 FirstWrite 1}
		this_num_load_1134_out {Type O LastRead -1 FirstWrite 1}
		this_num_load_1028_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	n { ap_none {  { n in_data 0 32 } } }
	b_p_read { ap_none {  { b_p_read in_data 0 32 } } }
	b_1 { ap_memory {  { b_1_address0 mem_address 1 6 }  { b_1_ce0 mem_ce 1 1 }  { b_1_q0 in_data 0 32 } } }
	b_1_offset { ap_none {  { b_1_offset in_data 0 4 } } }
}
