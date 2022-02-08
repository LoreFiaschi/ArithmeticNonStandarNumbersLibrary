set moduleName main_Pipeline_VITIS_LOOP_104_3
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
set C_modelName {main_Pipeline_VITIS_LOOP_104_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ res_num_load_21003 float 32 regular  }
	{ res_num_load_1997 float 32 regular  }
	{ res_num_load991 float 32 regular  }
	{ zext_ln104_7 int 2 regular  }
	{ select_ln104_1 int 3 regular  }
	{ res_num_load_21002_out float 32 regular {pointer 1}  }
	{ res_num_load_1996_out float 32 regular {pointer 1}  }
	{ res_num_load990_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "res_num_load_21003", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "res_num_load_1997", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "res_num_load991", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln104_7", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln104_1", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "res_num_load_21002_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_num_load_1996_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_num_load990_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ res_num_load_21003 sc_in sc_lv 32 signal 0 } 
	{ res_num_load_1997 sc_in sc_lv 32 signal 1 } 
	{ res_num_load991 sc_in sc_lv 32 signal 2 } 
	{ zext_ln104_7 sc_in sc_lv 2 signal 3 } 
	{ select_ln104_1 sc_in sc_lv 3 signal 4 } 
	{ res_num_load_21002_out sc_out sc_lv 32 signal 5 } 
	{ res_num_load_21002_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ res_num_load_1996_out sc_out sc_lv 32 signal 6 } 
	{ res_num_load_1996_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ res_num_load990_out sc_out sc_lv 32 signal 7 } 
	{ res_num_load990_out_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "res_num_load_21003", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_num_load_21003", "role": "default" }} , 
 	{ "name": "res_num_load_1997", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_num_load_1997", "role": "default" }} , 
 	{ "name": "res_num_load991", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_num_load991", "role": "default" }} , 
 	{ "name": "zext_ln104_7", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "zext_ln104_7", "role": "default" }} , 
 	{ "name": "select_ln104_1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "select_ln104_1", "role": "default" }} , 
 	{ "name": "res_num_load_21002_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_num_load_21002_out", "role": "default" }} , 
 	{ "name": "res_num_load_21002_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_num_load_21002_out", "role": "ap_vld" }} , 
 	{ "name": "res_num_load_1996_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_num_load_1996_out", "role": "default" }} , 
 	{ "name": "res_num_load_1996_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_num_load_1996_out", "role": "ap_vld" }} , 
 	{ "name": "res_num_load990_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_num_load990_out", "role": "default" }} , 
 	{ "name": "res_num_load990_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_num_load990_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_104_3",
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
			{"Name" : "res_num_load_21003", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load_1997", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load991", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln104_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load_21002_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load_1996_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load990_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	main_Pipeline_VITIS_LOOP_104_3 {
		res_num_load_21003 {Type I LastRead 0 FirstWrite -1}
		res_num_load_1997 {Type I LastRead 0 FirstWrite -1}
		res_num_load991 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_7 {Type I LastRead 0 FirstWrite -1}
		select_ln104_1 {Type I LastRead 0 FirstWrite -1}
		res_num_load_21002_out {Type O LastRead -1 FirstWrite 0}
		res_num_load_1996_out {Type O LastRead -1 FirstWrite 0}
		res_num_load990_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	res_num_load_21003 { ap_none {  { res_num_load_21003 in_data 0 32 } } }
	res_num_load_1997 { ap_none {  { res_num_load_1997 in_data 0 32 } } }
	res_num_load991 { ap_none {  { res_num_load991 in_data 0 32 } } }
	zext_ln104_7 { ap_none {  { zext_ln104_7 in_data 0 2 } } }
	select_ln104_1 { ap_none {  { select_ln104_1 in_data 0 3 } } }
	res_num_load_21002_out { ap_vld {  { res_num_load_21002_out out_data 1 32 }  { res_num_load_21002_out_ap_vld out_vld 1 1 } } }
	res_num_load_1996_out { ap_vld {  { res_num_load_1996_out out_data 1 32 }  { res_num_load_1996_out_ap_vld out_vld 1 1 } } }
	res_num_load990_out { ap_vld {  { res_num_load990_out out_data 1 32 }  { res_num_load990_out_ap_vld out_vld 1 1 } } }
}
