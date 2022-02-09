set moduleName operator_1_Pipeline_VITIS_LOOP_215_1
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
set C_modelName {operator/.1_Pipeline_VITIS_LOOP_215_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read25 int 128 regular  }
	{ normalizer float 32 regular  }
	{ den_norm_2_019_out float 32 regular {pointer 1}  }
	{ den_norm_1_018_out float 32 regular {pointer 1}  }
	{ den_norm_270_out float 32 regular {pointer 1}  }
	{ den_norm_169_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read25", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "normalizer", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "den_norm_2_019_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "den_norm_1_018_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "den_norm_270_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "den_norm_169_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read25 sc_in sc_lv 128 signal 0 } 
	{ normalizer sc_in sc_lv 32 signal 1 } 
	{ den_norm_2_019_out sc_out sc_lv 32 signal 2 } 
	{ den_norm_2_019_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ den_norm_1_018_out sc_out sc_lv 32 signal 3 } 
	{ den_norm_1_018_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ den_norm_270_out sc_out sc_lv 32 signal 4 } 
	{ den_norm_270_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ den_norm_169_out sc_out sc_lv 32 signal 5 } 
	{ den_norm_169_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ grp_fu_329_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_329_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_329_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_329_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read25", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_read25", "role": "default" }} , 
 	{ "name": "normalizer", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "normalizer", "role": "default" }} , 
 	{ "name": "den_norm_2_019_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "den_norm_2_019_out", "role": "default" }} , 
 	{ "name": "den_norm_2_019_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "den_norm_2_019_out", "role": "ap_vld" }} , 
 	{ "name": "den_norm_1_018_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "den_norm_1_018_out", "role": "default" }} , 
 	{ "name": "den_norm_1_018_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "den_norm_1_018_out", "role": "ap_vld" }} , 
 	{ "name": "den_norm_270_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "den_norm_270_out", "role": "default" }} , 
 	{ "name": "den_norm_270_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "den_norm_270_out", "role": "ap_vld" }} , 
 	{ "name": "den_norm_169_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "den_norm_169_out", "role": "default" }} , 
 	{ "name": "den_norm_169_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "den_norm_169_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_329_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_329_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_329_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_329_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_329_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_329_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_329_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_329_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_215_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "normalizer", "Type" : "None", "Direction" : "I"},
			{"Name" : "den_norm_2_019_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den_norm_1_018_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den_norm_270_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den_norm_169_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_215_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	operator_1_Pipeline_VITIS_LOOP_215_1 {
		p_read25 {Type I LastRead 0 FirstWrite -1}
		normalizer {Type I LastRead 0 FirstWrite -1}
		den_norm_2_019_out {Type O LastRead -1 FirstWrite 9}
		den_norm_1_018_out {Type O LastRead -1 FirstWrite 9}
		den_norm_270_out {Type O LastRead -1 FirstWrite 9}
		den_norm_169_out {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "13"}
	, {"Name" : "Interval", "Min" : "13", "Max" : "13"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_read25 { ap_none {  { p_read25 in_data 0 128 } } }
	normalizer { ap_none {  { normalizer in_data 0 32 } } }
	den_norm_2_019_out { ap_vld {  { den_norm_2_019_out out_data 1 32 }  { den_norm_2_019_out_ap_vld out_vld 1 1 } } }
	den_norm_1_018_out { ap_vld {  { den_norm_1_018_out out_data 1 32 }  { den_norm_1_018_out_ap_vld out_vld 1 1 } } }
	den_norm_270_out { ap_vld {  { den_norm_270_out out_data 1 32 }  { den_norm_270_out_ap_vld out_vld 1 1 } } }
	den_norm_169_out { ap_vld {  { den_norm_169_out out_data 1 32 }  { den_norm_169_out_ap_vld out_vld 1 1 } } }
}