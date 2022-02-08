set moduleName operator_Pipeline_VITIS_LOOP_92_2_s
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
set C_modelName {operator+_Pipeline_VITIS_LOOP_92_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ agg_result_num_0 float 32 regular  }
	{ agg_result_num16_0 float 32 regular  }
	{ agg_result_num2_0 float 32 regular  }
	{ zext_ln92 int 2 regular  }
	{ xor_ln92 int 2 regular  }
	{ agg_result_num_1_out float 32 regular {pointer 1}  }
	{ agg_result_num16_1_out float 32 regular {pointer 1}  }
	{ agg_result_num2_1_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "agg_result_num_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "agg_result_num16_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "agg_result_num2_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln92", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "xor_ln92", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "agg_result_num_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_result_num16_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_result_num2_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ agg_result_num_0 sc_in sc_lv 32 signal 0 } 
	{ agg_result_num16_0 sc_in sc_lv 32 signal 1 } 
	{ agg_result_num2_0 sc_in sc_lv 32 signal 2 } 
	{ zext_ln92 sc_in sc_lv 2 signal 3 } 
	{ xor_ln92 sc_in sc_lv 2 signal 4 } 
	{ agg_result_num_1_out sc_out sc_lv 32 signal 5 } 
	{ agg_result_num_1_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ agg_result_num16_1_out sc_out sc_lv 32 signal 6 } 
	{ agg_result_num16_1_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ agg_result_num2_1_out sc_out sc_lv 32 signal 7 } 
	{ agg_result_num2_1_out_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "agg_result_num_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_num_0", "role": "default" }} , 
 	{ "name": "agg_result_num16_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_num16_0", "role": "default" }} , 
 	{ "name": "agg_result_num2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_num2_0", "role": "default" }} , 
 	{ "name": "zext_ln92", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "zext_ln92", "role": "default" }} , 
 	{ "name": "xor_ln92", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "xor_ln92", "role": "default" }} , 
 	{ "name": "agg_result_num_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_num_1_out", "role": "default" }} , 
 	{ "name": "agg_result_num_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_num_1_out", "role": "ap_vld" }} , 
 	{ "name": "agg_result_num16_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_num16_1_out", "role": "default" }} , 
 	{ "name": "agg_result_num16_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_num16_1_out", "role": "ap_vld" }} , 
 	{ "name": "agg_result_num2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_num2_1_out", "role": "default" }} , 
 	{ "name": "agg_result_num2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_num2_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "operator_Pipeline_VITIS_LOOP_92_2_s",
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
			{"Name" : "agg_result_num_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num16_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U151", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	operator_Pipeline_VITIS_LOOP_92_2_s {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_0 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_1_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num16_1_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_1_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	agg_result_num_0 { ap_none {  { agg_result_num_0 in_data 0 32 } } }
	agg_result_num16_0 { ap_none {  { agg_result_num16_0 in_data 0 32 } } }
	agg_result_num2_0 { ap_none {  { agg_result_num2_0 in_data 0 32 } } }
	zext_ln92 { ap_none {  { zext_ln92 in_data 0 2 } } }
	xor_ln92 { ap_none {  { xor_ln92 in_data 0 2 } } }
	agg_result_num_1_out { ap_vld {  { agg_result_num_1_out out_data 1 32 }  { agg_result_num_1_out_ap_vld out_vld 1 1 } } }
	agg_result_num16_1_out { ap_vld {  { agg_result_num16_1_out out_data 1 32 }  { agg_result_num16_1_out_ap_vld out_vld 1 1 } } }
	agg_result_num2_1_out { ap_vld {  { agg_result_num2_1_out out_data 1 32 }  { agg_result_num2_1_out_ap_vld out_vld 1 1 } } }
}
