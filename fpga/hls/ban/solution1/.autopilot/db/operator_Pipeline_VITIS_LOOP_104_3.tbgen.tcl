set moduleName operator_Pipeline_VITIS_LOOP_104_3
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
set C_modelName {operator/_Pipeline_VITIS_LOOP_104_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ this_num_load_1241 float 32 regular  }
	{ this_num_load_1135 float 32 regular  }
	{ this_num_load_1029 float 32 regular  }
	{ zext_ln104 int 2 regular  }
	{ zext_ln104_4 int 3 regular  }
	{ this_num_load_1240_out float 32 regular {pointer 1}  }
	{ this_num_load_1134_out float 32 regular {pointer 1}  }
	{ this_num_load_1028_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "this_num_load_1241", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_num_load_1135", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_num_load_1029", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln104", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln104_4", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "this_num_load_1240_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "this_num_load_1134_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "this_num_load_1028_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_num_load_1241 sc_in sc_lv 32 signal 0 } 
	{ this_num_load_1135 sc_in sc_lv 32 signal 1 } 
	{ this_num_load_1029 sc_in sc_lv 32 signal 2 } 
	{ zext_ln104 sc_in sc_lv 2 signal 3 } 
	{ zext_ln104_4 sc_in sc_lv 3 signal 4 } 
	{ this_num_load_1240_out sc_out sc_lv 32 signal 5 } 
	{ this_num_load_1240_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ this_num_load_1134_out sc_out sc_lv 32 signal 6 } 
	{ this_num_load_1134_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ this_num_load_1028_out sc_out sc_lv 32 signal 7 } 
	{ this_num_load_1028_out_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "this_num_load_1241", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_num_load_1241", "role": "default" }} , 
 	{ "name": "this_num_load_1135", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_num_load_1135", "role": "default" }} , 
 	{ "name": "this_num_load_1029", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_num_load_1029", "role": "default" }} , 
 	{ "name": "zext_ln104", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "zext_ln104", "role": "default" }} , 
 	{ "name": "zext_ln104_4", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "zext_ln104_4", "role": "default" }} , 
 	{ "name": "this_num_load_1240_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_num_load_1240_out", "role": "default" }} , 
 	{ "name": "this_num_load_1240_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "this_num_load_1240_out", "role": "ap_vld" }} , 
 	{ "name": "this_num_load_1134_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_num_load_1134_out", "role": "default" }} , 
 	{ "name": "this_num_load_1134_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "this_num_load_1134_out", "role": "ap_vld" }} , 
 	{ "name": "this_num_load_1028_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_num_load_1028_out", "role": "default" }} , 
 	{ "name": "this_num_load_1028_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "this_num_load_1028_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	this_num_load_1241 { ap_none {  { this_num_load_1241 in_data 0 32 } } }
	this_num_load_1135 { ap_none {  { this_num_load_1135 in_data 0 32 } } }
	this_num_load_1029 { ap_none {  { this_num_load_1029 in_data 0 32 } } }
	zext_ln104 { ap_none {  { zext_ln104 in_data 0 2 } } }
	zext_ln104_4 { ap_none {  { zext_ln104_4 in_data 0 3 } } }
	this_num_load_1240_out { ap_vld {  { this_num_load_1240_out out_data 1 32 }  { this_num_load_1240_out_ap_vld out_vld 1 1 } } }
	this_num_load_1134_out { ap_vld {  { this_num_load_1134_out out_data 1 32 }  { this_num_load_1134_out_ap_vld out_vld 1 1 } } }
	this_num_load_1028_out { ap_vld {  { this_num_load_1028_out out_data 1 32 }  { this_num_load_1028_out_ap_vld out_vld 1 1 } } }
}
