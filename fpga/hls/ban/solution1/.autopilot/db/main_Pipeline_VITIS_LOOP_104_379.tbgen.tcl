set moduleName main_Pipeline_VITIS_LOOP_104_379
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
set C_modelName {main_Pipeline_VITIS_LOOP_104_379}
set C_modelType { void 0 }
set C_modelArgList {
	{ b5_num_load_7985 float 32 regular  }
	{ b5_num_load_6979 float 32 regular  }
	{ b5_num_load_5973 float 32 regular  }
	{ zext_ln104_3 int 2 regular  }
	{ zext_ln104_11 int 3 regular  }
	{ b5_num_load_7984_out float 32 regular {pointer 1}  }
	{ b5_num_load_6978_out float 32 regular {pointer 1}  }
	{ b5_num_load_5972_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "b5_num_load_7985", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b5_num_load_6979", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b5_num_load_5973", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln104_3", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln104_11", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "b5_num_load_7984_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b5_num_load_6978_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b5_num_load_5972_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ b5_num_load_7985 sc_in sc_lv 32 signal 0 } 
	{ b5_num_load_6979 sc_in sc_lv 32 signal 1 } 
	{ b5_num_load_5973 sc_in sc_lv 32 signal 2 } 
	{ zext_ln104_3 sc_in sc_lv 2 signal 3 } 
	{ zext_ln104_11 sc_in sc_lv 3 signal 4 } 
	{ b5_num_load_7984_out sc_out sc_lv 32 signal 5 } 
	{ b5_num_load_7984_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ b5_num_load_6978_out sc_out sc_lv 32 signal 6 } 
	{ b5_num_load_6978_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ b5_num_load_5972_out sc_out sc_lv 32 signal 7 } 
	{ b5_num_load_5972_out_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "b5_num_load_7985", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b5_num_load_7985", "role": "default" }} , 
 	{ "name": "b5_num_load_6979", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b5_num_load_6979", "role": "default" }} , 
 	{ "name": "b5_num_load_5973", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b5_num_load_5973", "role": "default" }} , 
 	{ "name": "zext_ln104_3", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "zext_ln104_3", "role": "default" }} , 
 	{ "name": "zext_ln104_11", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "zext_ln104_11", "role": "default" }} , 
 	{ "name": "b5_num_load_7984_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b5_num_load_7984_out", "role": "default" }} , 
 	{ "name": "b5_num_load_7984_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b5_num_load_7984_out", "role": "ap_vld" }} , 
 	{ "name": "b5_num_load_6978_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b5_num_load_6978_out", "role": "default" }} , 
 	{ "name": "b5_num_load_6978_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b5_num_load_6978_out", "role": "ap_vld" }} , 
 	{ "name": "b5_num_load_5972_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b5_num_load_5972_out", "role": "default" }} , 
 	{ "name": "b5_num_load_5972_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b5_num_load_5972_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_104_379",
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
			{"Name" : "b5_num_load_7985", "Type" : "None", "Direction" : "I"},
			{"Name" : "b5_num_load_6979", "Type" : "None", "Direction" : "I"},
			{"Name" : "b5_num_load_5973", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "b5_num_load_7984_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b5_num_load_6978_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b5_num_load_5972_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	main_Pipeline_VITIS_LOOP_104_379 {
		b5_num_load_7985 {Type I LastRead 0 FirstWrite -1}
		b5_num_load_6979 {Type I LastRead 0 FirstWrite -1}
		b5_num_load_5973 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_11 {Type I LastRead 0 FirstWrite -1}
		b5_num_load_7984_out {Type O LastRead -1 FirstWrite 1}
		b5_num_load_6978_out {Type O LastRead -1 FirstWrite 1}
		b5_num_load_5972_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	b5_num_load_7985 { ap_none {  { b5_num_load_7985 in_data 0 32 } } }
	b5_num_load_6979 { ap_none {  { b5_num_load_6979 in_data 0 32 } } }
	b5_num_load_5973 { ap_none {  { b5_num_load_5973 in_data 0 32 } } }
	zext_ln104_3 { ap_none {  { zext_ln104_3 in_data 0 2 } } }
	zext_ln104_11 { ap_none {  { zext_ln104_11 in_data 0 3 } } }
	b5_num_load_7984_out { ap_vld {  { b5_num_load_7984_out out_data 1 32 }  { b5_num_load_7984_out_ap_vld out_vld 1 1 } } }
	b5_num_load_6978_out { ap_vld {  { b5_num_load_6978_out out_data 1 32 }  { b5_num_load_6978_out_ap_vld out_vld 1 1 } } }
	b5_num_load_5972_out { ap_vld {  { b5_num_load_5972_out out_data 1 32 }  { b5_num_load_5972_out_ap_vld out_vld 1 1 } } }
}
