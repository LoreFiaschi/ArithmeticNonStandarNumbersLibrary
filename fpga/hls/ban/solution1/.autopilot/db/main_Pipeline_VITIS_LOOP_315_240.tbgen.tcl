set moduleName main_Pipeline_VITIS_LOOP_315_240
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {main_Pipeline_VITIS_LOOP_315_240}
set C_modelType { void 0 }
set C_modelArgList {
	{ sub_ln542 int 6 regular  }
	{ b_num float 32 regular {array 36 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ sub11_i_i int 2 regular  }
	{ tmp_309 float 32 regular  }
	{ tmp_310 float 32 regular  }
	{ tmp_311 float 32 regular  }
	{ trunc_ln297_3 int 2 regular  }
	{ num_aux_0_2_reload float 32 regular  }
	{ num_aux_1_2_reload float 32 regular  }
	{ num_aux_2_2_reload float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sub_ln542", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "b_num", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sub11_i_i", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_309", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_310", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_311", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln297_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "num_aux_0_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_aux_1_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_aux_2_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sub_ln542 sc_in sc_lv 6 signal 0 } 
	{ b_num_address0 sc_out sc_lv 6 signal 1 } 
	{ b_num_ce0 sc_out sc_logic 1 signal 1 } 
	{ b_num_we0 sc_out sc_logic 1 signal 1 } 
	{ b_num_d0 sc_out sc_lv 32 signal 1 } 
	{ sub11_i_i sc_in sc_lv 2 signal 2 } 
	{ tmp_309 sc_in sc_lv 32 signal 3 } 
	{ tmp_310 sc_in sc_lv 32 signal 4 } 
	{ tmp_311 sc_in sc_lv 32 signal 5 } 
	{ trunc_ln297_3 sc_in sc_lv 2 signal 6 } 
	{ num_aux_0_2_reload sc_in sc_lv 32 signal 7 } 
	{ num_aux_1_2_reload sc_in sc_lv 32 signal 8 } 
	{ num_aux_2_2_reload sc_in sc_lv 32 signal 9 } 
	{ grp_fu_12725_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12725_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12725_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_12725_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12725_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sub_ln542", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sub_ln542", "role": "default" }} , 
 	{ "name": "b_num_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_num", "role": "address0" }} , 
 	{ "name": "b_num_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_num", "role": "ce0" }} , 
 	{ "name": "b_num_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_num", "role": "we0" }} , 
 	{ "name": "b_num_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_num", "role": "d0" }} , 
 	{ "name": "sub11_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sub11_i_i", "role": "default" }} , 
 	{ "name": "tmp_309", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_309", "role": "default" }} , 
 	{ "name": "tmp_310", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_310", "role": "default" }} , 
 	{ "name": "tmp_311", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_311", "role": "default" }} , 
 	{ "name": "trunc_ln297_3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "trunc_ln297_3", "role": "default" }} , 
 	{ "name": "num_aux_0_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_aux_0_2_reload", "role": "default" }} , 
 	{ "name": "num_aux_1_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_aux_1_2_reload", "role": "default" }} , 
 	{ "name": "num_aux_2_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_aux_2_2_reload", "role": "default" }} , 
 	{ "name": "grp_fu_12725_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12725_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12725_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12725_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12725_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_12725_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12725_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12725_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12725_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12725_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_315_240",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub11_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_309", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_310", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_311", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln297_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_2_2_reload", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_315_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U490", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U491", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	main_Pipeline_VITIS_LOOP_315_240 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type O LastRead -1 FirstWrite 5}
		sub11_i_i {Type I LastRead 0 FirstWrite -1}
		tmp_309 {Type I LastRead 0 FirstWrite -1}
		tmp_310 {Type I LastRead 0 FirstWrite -1}
		tmp_311 {Type I LastRead 0 FirstWrite -1}
		trunc_ln297_3 {Type I LastRead 0 FirstWrite -1}
		num_aux_0_2_reload {Type I LastRead 0 FirstWrite -1}
		num_aux_1_2_reload {Type I LastRead 0 FirstWrite -1}
		num_aux_2_2_reload {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sub_ln542 { ap_none {  { sub_ln542 in_data 0 6 } } }
	b_num { ap_memory {  { b_num_address0 mem_address 1 6 }  { b_num_ce0 mem_ce 1 1 }  { b_num_we0 mem_we 1 1 }  { b_num_d0 mem_din 1 32 } } }
	sub11_i_i { ap_none {  { sub11_i_i in_data 0 2 } } }
	tmp_309 { ap_none {  { tmp_309 in_data 0 32 } } }
	tmp_310 { ap_none {  { tmp_310 in_data 0 32 } } }
	tmp_311 { ap_none {  { tmp_311 in_data 0 32 } } }
	trunc_ln297_3 { ap_none {  { trunc_ln297_3 in_data 0 2 } } }
	num_aux_0_2_reload { ap_none {  { num_aux_0_2_reload in_data 0 32 } } }
	num_aux_1_2_reload { ap_none {  { num_aux_1_2_reload in_data 0 32 } } }
	num_aux_2_2_reload { ap_none {  { num_aux_2_2_reload in_data 0 32 } } }
}
