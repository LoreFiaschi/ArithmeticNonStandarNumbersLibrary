set moduleName main_Pipeline_VITIS_LOOP_45_1
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
set C_modelName {main_Pipeline_VITIS_LOOP_45_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ r_num float 32 regular {array 6393 { 0 0 } 0 1 }  }
	{ r_p int 32 regular {array 2131 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "r_num", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_p", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ r_num_address0 sc_out sc_lv 13 signal 0 } 
	{ r_num_ce0 sc_out sc_logic 1 signal 0 } 
	{ r_num_we0 sc_out sc_logic 1 signal 0 } 
	{ r_num_d0 sc_out sc_lv 32 signal 0 } 
	{ r_num_address1 sc_out sc_lv 13 signal 0 } 
	{ r_num_ce1 sc_out sc_logic 1 signal 0 } 
	{ r_num_we1 sc_out sc_logic 1 signal 0 } 
	{ r_num_d1 sc_out sc_lv 32 signal 0 } 
	{ r_p_address0 sc_out sc_lv 12 signal 1 } 
	{ r_p_ce0 sc_out sc_logic 1 signal 1 } 
	{ r_p_we0 sc_out sc_logic 1 signal 1 } 
	{ r_p_d0 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "r_num_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "r_num", "role": "address0" }} , 
 	{ "name": "r_num_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_num", "role": "ce0" }} , 
 	{ "name": "r_num_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_num", "role": "we0" }} , 
 	{ "name": "r_num_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_num", "role": "d0" }} , 
 	{ "name": "r_num_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "r_num", "role": "address1" }} , 
 	{ "name": "r_num_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_num", "role": "ce1" }} , 
 	{ "name": "r_num_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_num", "role": "we1" }} , 
 	{ "name": "r_num_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_num", "role": "d1" }} , 
 	{ "name": "r_p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "r_p", "role": "address0" }} , 
 	{ "name": "r_p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_p", "role": "ce0" }} , 
 	{ "name": "r_p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_p", "role": "we0" }} , 
 	{ "name": "r_p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_p", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_45_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4264", "EstimateLatencyMax" : "4264",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "r_num", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_p", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_45_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	main_Pipeline_VITIS_LOOP_45_1 {
		r_num {Type O LastRead -1 FirstWrite 0}
		r_p {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4264", "Max" : "4264"}
	, {"Name" : "Interval", "Min" : "4264", "Max" : "4264"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	r_num { ap_memory {  { r_num_address0 mem_address 1 13 }  { r_num_ce0 mem_ce 1 1 }  { r_num_we0 mem_we 1 1 }  { r_num_d0 mem_din 1 32 }  { r_num_address1 MemPortADDR2 1 13 }  { r_num_ce1 MemPortCE2 1 1 }  { r_num_we1 MemPortWE2 1 1 }  { r_num_d1 MemPortDIN2 1 32 } } }
	r_p { ap_memory {  { r_p_address0 mem_address 1 12 }  { r_p_ce0 mem_ce 1 1 }  { r_p_we0 mem_we 1 1 }  { r_p_d0 mem_din 1 32 } } }
}
