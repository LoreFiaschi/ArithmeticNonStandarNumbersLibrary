set moduleName main_Pipeline_VITIS_LOOP_187_173
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
set C_modelName {main_Pipeline_VITIS_LOOP_187_173}
set C_modelType { void 0 }
set C_modelArgList {
	{ b8_num_2_0_reload float 32 regular  }
	{ b8_num_1_0_reload float 32 regular  }
	{ b8_num_0_0_reload float 32 regular  }
	{ b8_num_load_2_reload float 32 regular  }
	{ b8_num_load_1_reload float 32 regular  }
	{ b8_num_load_reload float 32 regular  }
	{ aux float 32 regular {array 5 { 1 3 } 1 1 }  }
	{ b8_num_2_2_out float 32 regular {pointer 1}  }
	{ b8_num_1_2_out float 32 regular {pointer 1}  }
	{ b8_num_0_2_out float 32 regular {pointer 1}  }
	{ b8_num_load_6970_out float 32 regular {pointer 1}  }
	{ b8_num_load_5962_out float 32 regular {pointer 1}  }
	{ b8_num_load_3_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "b8_num_2_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b8_num_1_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b8_num_0_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b8_num_load_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b8_num_load_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b8_num_load_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aux", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b8_num_2_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b8_num_1_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b8_num_0_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b8_num_load_6970_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b8_num_load_5962_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b8_num_load_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ b8_num_2_0_reload sc_in sc_lv 32 signal 0 } 
	{ b8_num_1_0_reload sc_in sc_lv 32 signal 1 } 
	{ b8_num_0_0_reload sc_in sc_lv 32 signal 2 } 
	{ b8_num_load_2_reload sc_in sc_lv 32 signal 3 } 
	{ b8_num_load_1_reload sc_in sc_lv 32 signal 4 } 
	{ b8_num_load_reload sc_in sc_lv 32 signal 5 } 
	{ aux_address0 sc_out sc_lv 3 signal 6 } 
	{ aux_ce0 sc_out sc_logic 1 signal 6 } 
	{ aux_q0 sc_in sc_lv 32 signal 6 } 
	{ b8_num_2_2_out sc_out sc_lv 32 signal 7 } 
	{ b8_num_2_2_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ b8_num_1_2_out sc_out sc_lv 32 signal 8 } 
	{ b8_num_1_2_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ b8_num_0_2_out sc_out sc_lv 32 signal 9 } 
	{ b8_num_0_2_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ b8_num_load_6970_out sc_out sc_lv 32 signal 10 } 
	{ b8_num_load_6970_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ b8_num_load_5962_out sc_out sc_lv 32 signal 11 } 
	{ b8_num_load_5962_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ b8_num_load_3_out sc_out sc_lv 32 signal 12 } 
	{ b8_num_load_3_out_ap_vld sc_out sc_logic 1 outvld 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "b8_num_2_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_2_0_reload", "role": "default" }} , 
 	{ "name": "b8_num_1_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_1_0_reload", "role": "default" }} , 
 	{ "name": "b8_num_0_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_0_0_reload", "role": "default" }} , 
 	{ "name": "b8_num_load_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_load_2_reload", "role": "default" }} , 
 	{ "name": "b8_num_load_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_load_1_reload", "role": "default" }} , 
 	{ "name": "b8_num_load_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_load_reload", "role": "default" }} , 
 	{ "name": "aux_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aux", "role": "address0" }} , 
 	{ "name": "aux_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aux", "role": "ce0" }} , 
 	{ "name": "aux_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aux", "role": "q0" }} , 
 	{ "name": "b8_num_2_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_2_2_out", "role": "default" }} , 
 	{ "name": "b8_num_2_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b8_num_2_2_out", "role": "ap_vld" }} , 
 	{ "name": "b8_num_1_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_1_2_out", "role": "default" }} , 
 	{ "name": "b8_num_1_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b8_num_1_2_out", "role": "ap_vld" }} , 
 	{ "name": "b8_num_0_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_0_2_out", "role": "default" }} , 
 	{ "name": "b8_num_0_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b8_num_0_2_out", "role": "ap_vld" }} , 
 	{ "name": "b8_num_load_6970_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_load_6970_out", "role": "default" }} , 
 	{ "name": "b8_num_load_6970_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b8_num_load_6970_out", "role": "ap_vld" }} , 
 	{ "name": "b8_num_load_5962_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_load_5962_out", "role": "default" }} , 
 	{ "name": "b8_num_load_5962_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b8_num_load_5962_out", "role": "ap_vld" }} , 
 	{ "name": "b8_num_load_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b8_num_load_3_out", "role": "default" }} , 
 	{ "name": "b8_num_load_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b8_num_load_3_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_187_173",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b8_num_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "aux", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b8_num_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_load_6970_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_load_5962_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_load_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	main_Pipeline_VITIS_LOOP_187_173 {
		b8_num_2_0_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_1_0_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_0_0_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_load_2_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_load_1_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_load_reload {Type I LastRead 0 FirstWrite -1}
		aux {Type I LastRead 0 FirstWrite -1}
		b8_num_2_2_out {Type O LastRead -1 FirstWrite 0}
		b8_num_1_2_out {Type O LastRead -1 FirstWrite 0}
		b8_num_0_2_out {Type O LastRead -1 FirstWrite 0}
		b8_num_load_6970_out {Type O LastRead -1 FirstWrite 0}
		b8_num_load_5962_out {Type O LastRead -1 FirstWrite 0}
		b8_num_load_3_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	b8_num_2_0_reload { ap_none {  { b8_num_2_0_reload in_data 0 32 } } }
	b8_num_1_0_reload { ap_none {  { b8_num_1_0_reload in_data 0 32 } } }
	b8_num_0_0_reload { ap_none {  { b8_num_0_0_reload in_data 0 32 } } }
	b8_num_load_2_reload { ap_none {  { b8_num_load_2_reload in_data 0 32 } } }
	b8_num_load_1_reload { ap_none {  { b8_num_load_1_reload in_data 0 32 } } }
	b8_num_load_reload { ap_none {  { b8_num_load_reload in_data 0 32 } } }
	aux { ap_memory {  { aux_address0 mem_address 1 3 }  { aux_ce0 mem_ce 1 1 }  { aux_q0 in_data 0 32 } } }
	b8_num_2_2_out { ap_vld {  { b8_num_2_2_out out_data 1 32 }  { b8_num_2_2_out_ap_vld out_vld 1 1 } } }
	b8_num_1_2_out { ap_vld {  { b8_num_1_2_out out_data 1 32 }  { b8_num_1_2_out_ap_vld out_vld 1 1 } } }
	b8_num_0_2_out { ap_vld {  { b8_num_0_2_out out_data 1 32 }  { b8_num_0_2_out_ap_vld out_vld 1 1 } } }
	b8_num_load_6970_out { ap_vld {  { b8_num_load_6970_out out_data 1 32 }  { b8_num_load_6970_out_ap_vld out_vld 1 1 } } }
	b8_num_load_5962_out { ap_vld {  { b8_num_load_5962_out out_data 1 32 }  { b8_num_load_5962_out_ap_vld out_vld 1 1 } } }
	b8_num_load_3_out { ap_vld {  { b8_num_load_3_out out_data 1 32 }  { b8_num_load_3_out_ap_vld out_vld 1 1 } } }
}
