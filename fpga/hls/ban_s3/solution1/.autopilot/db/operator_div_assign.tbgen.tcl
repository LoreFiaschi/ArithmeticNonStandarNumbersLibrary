set moduleName operator_div_assign
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
set C_modelName {operator/=}
set C_modelType { int 128 }
set C_modelArgList {
	{ b_op1_read int 128 regular  }
	{ p_read int 128 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "b_op1_read", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 51
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ b_op1_read sc_in sc_lv 128 signal 0 } 
	{ p_read sc_in sc_lv 128 signal 1 } 
	{ ap_return sc_out sc_lv 128 signal -1 } 
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
	{ grp_fu_1001_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1001_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1001_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1001_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1001_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1005_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1005_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1005_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1005_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1005_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1009_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1009_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1009_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1009_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1009_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "b_op1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "b_op1_read", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
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
 	{ "name": "grp_fu_1001_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1001_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1001_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1001_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1001_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1001_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1001_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1001_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1001_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1001_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1005_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1005_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1005_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1005_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1005_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1005_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1005_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1005_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1005_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1005_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1009_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1009_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1009_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1009_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1009_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1009_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1009_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1009_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1009_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1009_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "operator_div_assign",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "59",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b_op1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U53", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U54", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U55", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_9_no_dsp_1_U56", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_9_no_dsp_1_U57", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_9_no_dsp_1_U58", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	operator_div_assign {
		b_op1_read {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "59"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "59"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	b_op1_read { ap_none {  { b_op1_read in_data 0 128 } } }
	p_read { ap_none {  { p_read in_data 0 128 } } }
}
