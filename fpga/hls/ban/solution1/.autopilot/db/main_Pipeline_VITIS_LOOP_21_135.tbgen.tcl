set moduleName main_Pipeline_VITIS_LOOP_21_135
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
set C_modelName {main_Pipeline_VITIS_LOOP_21_135}
set C_modelType { void 0 }
set C_modelArgList {
	{ b11_num_2_0909_out float 32 regular {pointer 1}  }
	{ b11_num_1_0908_out float 32 regular {pointer 1}  }
	{ b11_num_0_0907_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "b11_num_2_0909_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b11_num_1_0908_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b11_num_0_0907_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ b11_num_2_0909_out sc_out sc_lv 32 signal 0 } 
	{ b11_num_2_0909_out_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ b11_num_1_0908_out sc_out sc_lv 32 signal 1 } 
	{ b11_num_1_0908_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ b11_num_0_0907_out sc_out sc_lv 32 signal 2 } 
	{ b11_num_0_0907_out_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "b11_num_2_0909_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b11_num_2_0909_out", "role": "default" }} , 
 	{ "name": "b11_num_2_0909_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b11_num_2_0909_out", "role": "ap_vld" }} , 
 	{ "name": "b11_num_1_0908_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b11_num_1_0908_out", "role": "default" }} , 
 	{ "name": "b11_num_1_0908_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b11_num_1_0908_out", "role": "ap_vld" }} , 
 	{ "name": "b11_num_0_0907_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b11_num_0_0907_out", "role": "default" }} , 
 	{ "name": "b11_num_0_0907_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b11_num_0_0907_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_135",
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
			{"Name" : "b11_num_2_0909_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b11_num_1_0908_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b11_num_0_0907_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U49", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	main_Pipeline_VITIS_LOOP_21_135 {
		b11_num_2_0909_out {Type O LastRead -1 FirstWrite 0}
		b11_num_1_0908_out {Type O LastRead -1 FirstWrite 0}
		b11_num_0_0907_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	b11_num_2_0909_out { ap_vld {  { b11_num_2_0909_out out_data 1 32 }  { b11_num_2_0909_out_ap_vld out_vld 1 1 } } }
	b11_num_1_0908_out { ap_vld {  { b11_num_1_0908_out out_data 1 32 }  { b11_num_1_0908_out_ap_vld out_vld 1 1 } } }
	b11_num_0_0907_out { ap_vld {  { b11_num_0_0907_out out_data 1 32 }  { b11_num_0_0907_out_ap_vld out_vld 1 1 } } }
}
