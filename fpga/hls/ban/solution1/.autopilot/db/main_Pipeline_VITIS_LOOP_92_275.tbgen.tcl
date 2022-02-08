set moduleName main_Pipeline_VITIS_LOOP_92_275
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
set C_modelName {main_Pipeline_VITIS_LOOP_92_275}
set C_modelType { void 0 }
set C_modelArgList {
	{ b8_num_2_2_reload float 32 regular  }
	{ b8_num_1_2_reload float 32 regular  }
	{ b8_num_0_2_reload float 32 regular  }
	{ b8_num_load_6970_reload float 32 regular  }
	{ b8_num_load_5962_reload float 32 regular  }
	{ b8_num_load_3_reload float 32 regular  }
	{ zext_ln92_2 int 2 regular  }
	{ xor_ln92_2 int 2 regular  }
	{ b8_num_load_6967_out float 32 regular {pointer 1}  }
	{ b8_num_load_5959_out float 32 regular {pointer 1}  }
	{ b8_num_load_4953_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "b8_num_2_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b8_num_1_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b8_num_0_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b8_num_load_6970_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b8_num_load_5962_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b8_num_load_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln92_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "xor_ln92_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "b8_num_load_6967_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b8_num_load_5959_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b8_num_load_4953_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ b8_num_2_2_reload sc_in sc_lv 32 signal 0 } 
	{ b8_num_1_2_reload sc_in sc_lv 32 signal 1 } 
	{ b8_num_0_2_reload sc_in sc_lv 32 signal 2 } 
	{ b8_num_load_6970_reload sc_in sc_lv 32 signal 3 } 
	{ b8_num_load_5962_reload sc_in sc_lv 32 signal 4 } 
	{ b8_num_load_3_reload sc_in sc_lv 32 signal 5 } 
	{ zext_ln92_2 sc_in sc_lv 2 signal 6 } 
	{ xor_ln92_2 sc_in sc_lv 2 signal 7 } 
	{ b8_num_load_6967_out sc_out sc_lv 32 signal 8 } 
	{ b8_num_load_6967_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ b8_num_load_5959_out sc_out sc_lv 32 signal 9 } 
	{ b8_num_load_5959_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ b8_num_load_4953_out sc_out sc_lv 32 signal 10 } 
	{ b8_num_load_4953_out_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "b8_num_2_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_2_2_reload", "role": "default" }} , 
 	{ "name": "b8_num_1_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_1_2_reload", "role": "default" }} , 
 	{ "name": "b8_num_0_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_0_2_reload", "role": "default" }} , 
 	{ "name": "b8_num_load_6970_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_load_6970_reload", "role": "default" }} , 
 	{ "name": "b8_num_load_5962_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_load_5962_reload", "role": "default" }} , 
 	{ "name": "b8_num_load_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_load_3_reload", "role": "default" }} , 
 	{ "name": "zext_ln92_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "zext_ln92_2", "role": "default" }} , 
 	{ "name": "xor_ln92_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "xor_ln92_2", "role": "default" }} , 
 	{ "name": "b8_num_load_6967_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_load_6967_out", "role": "default" }} , 
 	{ "name": "b8_num_load_6967_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b8_num_load_6967_out", "role": "ap_vld" }} , 
 	{ "name": "b8_num_load_5959_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_load_5959_out", "role": "default" }} , 
 	{ "name": "b8_num_load_5959_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b8_num_load_5959_out", "role": "ap_vld" }} , 
 	{ "name": "b8_num_load_4953_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_load_4953_out", "role": "default" }} , 
 	{ "name": "b8_num_load_4953_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b8_num_load_4953_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_92_275",
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
			{"Name" : "b8_num_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_6970_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_5962_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_6967_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_load_5959_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_load_4953_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U952", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	main_Pipeline_VITIS_LOOP_92_275 {
		b8_num_2_2_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_1_2_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_0_2_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_load_6970_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_load_5962_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_load_3_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln92_2 {Type I LastRead 0 FirstWrite -1}
		xor_ln92_2 {Type I LastRead 0 FirstWrite -1}
		b8_num_load_6967_out {Type O LastRead -1 FirstWrite 1}
		b8_num_load_5959_out {Type O LastRead -1 FirstWrite 1}
		b8_num_load_4953_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	b8_num_2_2_reload { ap_none {  { b8_num_2_2_reload in_data 0 32 } } }
	b8_num_1_2_reload { ap_none {  { b8_num_1_2_reload in_data 0 32 } } }
	b8_num_0_2_reload { ap_none {  { b8_num_0_2_reload in_data 0 32 } } }
	b8_num_load_6970_reload { ap_none {  { b8_num_load_6970_reload in_data 0 32 } } }
	b8_num_load_5962_reload { ap_none {  { b8_num_load_5962_reload in_data 0 32 } } }
	b8_num_load_3_reload { ap_none {  { b8_num_load_3_reload in_data 0 32 } } }
	zext_ln92_2 { ap_none {  { zext_ln92_2 in_data 0 2 } } }
	xor_ln92_2 { ap_none {  { xor_ln92_2 in_data 0 2 } } }
	b8_num_load_6967_out { ap_vld {  { b8_num_load_6967_out out_data 1 32 }  { b8_num_load_6967_out_ap_vld out_vld 1 1 } } }
	b8_num_load_5959_out { ap_vld {  { b8_num_load_5959_out out_data 1 32 }  { b8_num_load_5959_out_ap_vld out_vld 1 1 } } }
	b8_num_load_4953_out { ap_vld {  { b8_num_load_4953_out out_data 1 32 }  { b8_num_load_4953_out_ap_vld out_vld 1 1 } } }
}
