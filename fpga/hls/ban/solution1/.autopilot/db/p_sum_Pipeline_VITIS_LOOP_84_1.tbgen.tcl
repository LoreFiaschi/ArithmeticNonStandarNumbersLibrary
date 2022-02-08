set moduleName p_sum_Pipeline_VITIS_LOOP_84_1
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
set C_modelName {_sum_Pipeline_VITIS_LOOP_84_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ agg_result_num_0 float 32 regular  }
	{ agg_result_num16_6 float 32 regular  }
	{ tmp_329 float 32 regular  }
	{ idx_tmp_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "agg_result_num_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "agg_result_num16_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_329", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "idx_tmp_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ agg_result_num_0 sc_in sc_lv 32 signal 0 } 
	{ agg_result_num16_6 sc_in sc_lv 32 signal 1 } 
	{ tmp_329 sc_in sc_lv 32 signal 2 } 
	{ idx_tmp_out sc_out sc_lv 32 signal 3 } 
	{ idx_tmp_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ grp_fu_349_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_349_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_349_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_349_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_349_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "agg_result_num_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_num_0", "role": "default" }} , 
 	{ "name": "agg_result_num16_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_num16_6", "role": "default" }} , 
 	{ "name": "tmp_329", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp_329", "role": "default" }} , 
 	{ "name": "idx_tmp_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "idx_tmp_out", "role": "default" }} , 
 	{ "name": "idx_tmp_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "idx_tmp_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_349_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_349_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_349_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_349_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_349_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_349_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_349_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_349_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_349_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_349_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "p_sum_Pipeline_VITIS_LOOP_84_1",
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
			{"Name" : "agg_result_num_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num16_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_329", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U77", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_sum_Pipeline_VITIS_LOOP_84_1 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_6 {Type I LastRead 0 FirstWrite -1}
		tmp_329 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	agg_result_num_0 { ap_none {  { agg_result_num_0 in_data 0 32 } } }
	agg_result_num16_6 { ap_none {  { agg_result_num16_6 in_data 0 32 } } }
	tmp_329 { ap_none {  { tmp_329 in_data 0 32 } } }
	idx_tmp_out { ap_vld {  { idx_tmp_out out_data 1 32 }  { idx_tmp_out_ap_vld out_vld 1 1 } } }
}
