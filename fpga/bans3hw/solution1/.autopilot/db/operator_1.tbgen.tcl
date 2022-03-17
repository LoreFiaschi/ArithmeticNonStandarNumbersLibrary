set moduleName operator_1
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
set C_modelName {operator+.1}
set C_modelType { int 128 }
set C_modelArgList {
	{ p_read14 int 128 regular  }
	{ b_p_read int 32 regular  }
	{ p_read8 float 32 regular  }
	{ p_read9 float 32 regular  }
	{ p_read10 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "b_p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read14 sc_in sc_lv 128 signal 0 } 
	{ b_p_read sc_in sc_lv 32 signal 1 } 
	{ p_read8 sc_in sc_lv 32 signal 2 } 
	{ p_read9 sc_in sc_lv 32 signal 3 } 
	{ p_read10 sc_in sc_lv 32 signal 4 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1160_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1160_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1160_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1160_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1160_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1164_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1164_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1164_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1164_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1164_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1197_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1197_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1197_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1197_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1197_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1203_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1203_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1203_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1203_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1203_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1208_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1208_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1208_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1208_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1208_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "b_p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_p_read", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "grp_fu_1160_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1160_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1160_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1160_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1160_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1160_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1160_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1160_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1160_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1160_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1164_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1164_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1164_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1164_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1164_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1164_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1164_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1164_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1164_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1164_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1197_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1197_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1197_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1197_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1197_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1197_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1197_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1197_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1197_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1197_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1203_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1203_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1203_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1203_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1203_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1203_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1203_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1203_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1203_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1203_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1208_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1208_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1208_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1208_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1208_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1208_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1208_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1208_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1208_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1208_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "operator_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	operator_1 {
		p_read14 {Type I LastRead 0 FirstWrite -1}
		b_p_read {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read14 { ap_none {  { p_read14 in_data 0 128 } } }
	b_p_read { ap_none {  { b_p_read in_data 0 32 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 32 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 32 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 32 } } }
}
