set moduleName operator_div
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {operator/}
set C_modelType { int 128 }
set C_modelArgList {
	{ n float 32 regular  }
	{ p_read14 int 128 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ n sc_in sc_lv 32 signal 0 } 
	{ p_read14 sc_in sc_lv 128 signal 1 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_928_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_928_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_928_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_928_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_928_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_932_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_932_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_932_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_932_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_932_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_936_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_936_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_936_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_936_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_936_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_940_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_940_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_940_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_940_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_945_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_945_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_945_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_945_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_950_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_950_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_950_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_950_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_958_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_958_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_958_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_958_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_963_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_963_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_963_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_963_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_967_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_967_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_967_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_967_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_971_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_971_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_971_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_971_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_976_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_976_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_976_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_976_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "grp_fu_928_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_928_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_928_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_928_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_928_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_928_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_928_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_928_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_928_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_928_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_932_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_932_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_932_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_932_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_932_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_932_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_932_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_932_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_932_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_932_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_936_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_936_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_936_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_936_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_936_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_936_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_936_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_936_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_936_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_936_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_940_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_940_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_940_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_940_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_940_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_940_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_940_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_940_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_945_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_945_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_945_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_945_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_945_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_945_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_945_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_945_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_950_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_950_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_950_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_950_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_950_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_950_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_950_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_950_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_958_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_958_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_958_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_958_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_958_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_958_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_958_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_958_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_963_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_963_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_963_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_963_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_963_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_963_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_963_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_963_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_967_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_967_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_967_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_967_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_967_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_967_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_967_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_967_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_971_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_971_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_971_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_971_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_971_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_971_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_971_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_971_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_976_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_976_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_976_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_976_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_976_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_976_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_976_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_976_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "operator_div",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "59",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U25", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	operator_div {
		n {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "59"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "59"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	n { ap_none {  { n in_data 0 32 } } }
	p_read14 { ap_none {  { p_read14 in_data 0 128 } } }
}
