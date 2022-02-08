set moduleName operator_1_Pipeline_VITIS_LOOP_21_1
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
set C_modelName {operator+.1_Pipeline_VITIS_LOOP_21_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ n float 32 regular  }
	{ num_res_1_02_reload float 32 regular  }
	{ num_res_2_01_reload float 32 regular  }
	{ write_flag4_6_out int 1 regular {pointer 1}  }
	{ agg_result_num_6_out float 32 regular {pointer 1}  }
	{ agg_result_num16_6_out float 32 regular {pointer 1}  }
	{ write_flag8_6_out int 1 regular {pointer 1}  }
	{ write_flag_6_out int 1 regular {pointer 1}  }
	{ agg_result_num2_6_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_res_1_02_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_res_2_01_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "write_flag4_6_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_result_num_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_result_num16_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "write_flag8_6_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "write_flag_6_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_result_num2_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ n sc_in sc_lv 32 signal 0 } 
	{ num_res_1_02_reload sc_in sc_lv 32 signal 1 } 
	{ num_res_2_01_reload sc_in sc_lv 32 signal 2 } 
	{ write_flag4_6_out sc_out sc_lv 1 signal 3 } 
	{ write_flag4_6_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ agg_result_num_6_out sc_out sc_lv 32 signal 4 } 
	{ agg_result_num_6_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ agg_result_num16_6_out sc_out sc_lv 32 signal 5 } 
	{ agg_result_num16_6_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ write_flag8_6_out sc_out sc_lv 1 signal 6 } 
	{ write_flag8_6_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ write_flag_6_out sc_out sc_lv 1 signal 7 } 
	{ write_flag_6_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ agg_result_num2_6_out sc_out sc_lv 32 signal 8 } 
	{ agg_result_num2_6_out_ap_vld sc_out sc_logic 1 outvld 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "num_res_1_02_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_res_1_02_reload", "role": "default" }} , 
 	{ "name": "num_res_2_01_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_res_2_01_reload", "role": "default" }} , 
 	{ "name": "write_flag4_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "write_flag4_6_out", "role": "default" }} , 
 	{ "name": "write_flag4_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_flag4_6_out", "role": "ap_vld" }} , 
 	{ "name": "agg_result_num_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_num_6_out", "role": "default" }} , 
 	{ "name": "agg_result_num_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_num_6_out", "role": "ap_vld" }} , 
 	{ "name": "agg_result_num16_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_num16_6_out", "role": "default" }} , 
 	{ "name": "agg_result_num16_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_num16_6_out", "role": "ap_vld" }} , 
 	{ "name": "write_flag8_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "write_flag8_6_out", "role": "default" }} , 
 	{ "name": "write_flag8_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_flag8_6_out", "role": "ap_vld" }} , 
 	{ "name": "write_flag_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "write_flag_6_out", "role": "default" }} , 
 	{ "name": "write_flag_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_flag_6_out", "role": "ap_vld" }} , 
 	{ "name": "agg_result_num2_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_num2_6_out", "role": "default" }} , 
 	{ "name": "agg_result_num2_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result_num2_6_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_21_1",
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
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_1_02_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_2_01_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "write_flag4_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "write_flag8_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "write_flag_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U324", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	operator_1_Pipeline_VITIS_LOOP_21_1 {
		n {Type I LastRead 0 FirstWrite -1}
		num_res_1_02_reload {Type I LastRead 0 FirstWrite -1}
		num_res_2_01_reload {Type I LastRead 0 FirstWrite -1}
		write_flag4_6_out {Type O LastRead -1 FirstWrite 0}
		agg_result_num_6_out {Type O LastRead -1 FirstWrite 0}
		agg_result_num16_6_out {Type O LastRead -1 FirstWrite 0}
		write_flag8_6_out {Type O LastRead -1 FirstWrite 0}
		write_flag_6_out {Type O LastRead -1 FirstWrite 0}
		agg_result_num2_6_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	n { ap_none {  { n in_data 0 32 } } }
	num_res_1_02_reload { ap_none {  { num_res_1_02_reload in_data 0 32 } } }
	num_res_2_01_reload { ap_none {  { num_res_2_01_reload in_data 0 32 } } }
	write_flag4_6_out { ap_vld {  { write_flag4_6_out out_data 1 1 }  { write_flag4_6_out_ap_vld out_vld 1 1 } } }
	agg_result_num_6_out { ap_vld {  { agg_result_num_6_out out_data 1 32 }  { agg_result_num_6_out_ap_vld out_vld 1 1 } } }
	agg_result_num16_6_out { ap_vld {  { agg_result_num16_6_out out_data 1 32 }  { agg_result_num16_6_out_ap_vld out_vld 1 1 } } }
	write_flag8_6_out { ap_vld {  { write_flag8_6_out out_data 1 1 }  { write_flag8_6_out_ap_vld out_vld 1 1 } } }
	write_flag_6_out { ap_vld {  { write_flag_6_out out_data 1 1 }  { write_flag_6_out_ap_vld out_vld 1 1 } } }
	agg_result_num2_6_out { ap_vld {  { agg_result_num2_6_out out_data 1 32 }  { agg_result_num2_6_out_ap_vld out_vld 1 1 } } }
}
