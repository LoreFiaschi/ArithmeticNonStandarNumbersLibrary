set moduleName main_Pipeline_VITIS_LOOP_215_1
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
set C_modelName {main_Pipeline_VITIS_LOOP_215_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ den_norm_2_1 float 32 regular  }
	{ den_norm_1_1 float 32 regular  }
	{ den_norm_28591024 float 32 regular  }
	{ den_norm_18581019 float 32 regular  }
	{ sub_ln290 int 6 regular  }
	{ b_num float 32 regular {array 36 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ normalizer float 32 regular  }
	{ den_norm_2_2_out float 32 regular {pointer 1}  }
	{ den_norm_1_2_out float 32 regular {pointer 1}  }
	{ den_norm_2852_out float 32 regular {pointer 1}  }
	{ den_norm_1851_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "den_norm_2_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "den_norm_1_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "den_norm_28591024", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "den_norm_18581019", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sub_ln290", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "b_num", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "normalizer", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "den_norm_2_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "den_norm_1_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "den_norm_2852_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "den_norm_1851_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ den_norm_2_1 sc_in sc_lv 32 signal 0 } 
	{ den_norm_1_1 sc_in sc_lv 32 signal 1 } 
	{ den_norm_28591024 sc_in sc_lv 32 signal 2 } 
	{ den_norm_18581019 sc_in sc_lv 32 signal 3 } 
	{ sub_ln290 sc_in sc_lv 6 signal 4 } 
	{ b_num_address0 sc_out sc_lv 6 signal 5 } 
	{ b_num_ce0 sc_out sc_logic 1 signal 5 } 
	{ b_num_q0 sc_in sc_lv 32 signal 5 } 
	{ normalizer sc_in sc_lv 32 signal 6 } 
	{ den_norm_2_2_out sc_out sc_lv 32 signal 7 } 
	{ den_norm_2_2_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ den_norm_1_2_out sc_out sc_lv 32 signal 8 } 
	{ den_norm_1_2_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ den_norm_2852_out sc_out sc_lv 32 signal 9 } 
	{ den_norm_2852_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ den_norm_1851_out sc_out sc_lv 32 signal 10 } 
	{ den_norm_1851_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ grp_fu_4211_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4211_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4211_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4211_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "den_norm_2_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "den_norm_2_1", "role": "default" }} , 
 	{ "name": "den_norm_1_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "den_norm_1_1", "role": "default" }} , 
 	{ "name": "den_norm_28591024", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "den_norm_28591024", "role": "default" }} , 
 	{ "name": "den_norm_18581019", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "den_norm_18581019", "role": "default" }} , 
 	{ "name": "sub_ln290", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sub_ln290", "role": "default" }} , 
 	{ "name": "b_num_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_num", "role": "address0" }} , 
 	{ "name": "b_num_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_num", "role": "ce0" }} , 
 	{ "name": "b_num_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_num", "role": "q0" }} , 
 	{ "name": "normalizer", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "normalizer", "role": "default" }} , 
 	{ "name": "den_norm_2_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "den_norm_2_2_out", "role": "default" }} , 
 	{ "name": "den_norm_2_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "den_norm_2_2_out", "role": "ap_vld" }} , 
 	{ "name": "den_norm_1_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "den_norm_1_2_out", "role": "default" }} , 
 	{ "name": "den_norm_1_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "den_norm_1_2_out", "role": "ap_vld" }} , 
 	{ "name": "den_norm_2852_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "den_norm_2852_out", "role": "default" }} , 
 	{ "name": "den_norm_2852_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "den_norm_2852_out", "role": "ap_vld" }} , 
 	{ "name": "den_norm_1851_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "den_norm_1851_out", "role": "default" }} , 
 	{ "name": "den_norm_1851_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "den_norm_1851_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_4211_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4211_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4211_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4211_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4211_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4211_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4211_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4211_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_215_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "den_norm_2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "den_norm_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "den_norm_28591024", "Type" : "None", "Direction" : "I"},
			{"Name" : "den_norm_18581019", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln290", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "normalizer", "Type" : "None", "Direction" : "I"},
			{"Name" : "den_norm_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den_norm_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den_norm_2852_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den_norm_1851_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_215_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	main_Pipeline_VITIS_LOOP_215_1 {
		den_norm_2_1 {Type I LastRead 0 FirstWrite -1}
		den_norm_1_1 {Type I LastRead 0 FirstWrite -1}
		den_norm_28591024 {Type I LastRead 0 FirstWrite -1}
		den_norm_18581019 {Type I LastRead 0 FirstWrite -1}
		sub_ln290 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 0 FirstWrite -1}
		normalizer {Type I LastRead 0 FirstWrite -1}
		den_norm_2_2_out {Type O LastRead -1 FirstWrite 10}
		den_norm_1_2_out {Type O LastRead -1 FirstWrite 10}
		den_norm_2852_out {Type O LastRead -1 FirstWrite 10}
		den_norm_1851_out {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14", "Max" : "14"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "14"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	den_norm_2_1 { ap_none {  { den_norm_2_1 in_data 0 32 } } }
	den_norm_1_1 { ap_none {  { den_norm_1_1 in_data 0 32 } } }
	den_norm_28591024 { ap_none {  { den_norm_28591024 in_data 0 32 } } }
	den_norm_18581019 { ap_none {  { den_norm_18581019 in_data 0 32 } } }
	sub_ln290 { ap_none {  { sub_ln290 in_data 0 6 } } }
	b_num { ap_memory {  { b_num_address0 mem_address 1 6 }  { b_num_ce0 mem_ce 1 1 }  { b_num_q0 in_data 0 32 } } }
	normalizer { ap_none {  { normalizer in_data 0 32 } } }
	den_norm_2_2_out { ap_vld {  { den_norm_2_2_out out_data 1 32 }  { den_norm_2_2_out_ap_vld out_vld 1 1 } } }
	den_norm_1_2_out { ap_vld {  { den_norm_1_2_out out_data 1 32 }  { den_norm_1_2_out_ap_vld out_vld 1 1 } } }
	den_norm_2852_out { ap_vld {  { den_norm_2852_out out_data 1 32 }  { den_norm_2852_out_ap_vld out_vld 1 1 } } }
	den_norm_1851_out { ap_vld {  { den_norm_1851_out out_data 1 32 }  { den_norm_1851_out_ap_vld out_vld 1 1 } } }
}
