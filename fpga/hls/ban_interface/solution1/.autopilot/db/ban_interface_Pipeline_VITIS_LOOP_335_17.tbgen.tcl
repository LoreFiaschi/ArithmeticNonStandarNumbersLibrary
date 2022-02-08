set moduleName ban_interface_Pipeline_VITIS_LOOP_335_17
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
set C_modelName {ban_interface_Pipeline_VITIS_LOOP_335_17}
set C_modelType { void 0 }
set C_modelArgList {
	{ b_op1_load int 128 regular  }
	{ b_op2_load int 128 regular  }
	{ res_6_out int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "b_op1_load", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "b_op2_load", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "res_6_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ b_op1_load sc_in sc_lv 128 signal 0 } 
	{ b_op2_load sc_in sc_lv 128 signal 1 } 
	{ res_6_out sc_out sc_lv 1 signal 2 } 
	{ res_6_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ grp_fu_7441_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7441_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7441_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_7441_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_7441_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2063_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2063_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2063_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_2063_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_2063_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "b_op1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "b_op1_load", "role": "default" }} , 
 	{ "name": "b_op2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "b_op2_load", "role": "default" }} , 
 	{ "name": "res_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "res_6_out", "role": "default" }} , 
 	{ "name": "res_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_6_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_7441_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7441_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_7441_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7441_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_7441_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_7441_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_7441_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_7441_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_7441_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_7441_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2063_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2063_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2063_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2063_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2063_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_2063_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2063_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2063_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2063_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2063_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_335_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b_op1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_op2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_335_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ban_interface_Pipeline_VITIS_LOOP_335_17 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		b_op2_load {Type I LastRead 0 FirstWrite -1}
		res_6_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	b_op1_load { ap_none {  { b_op1_load in_data 0 128 } } }
	b_op2_load { ap_none {  { b_op2_load in_data 0 128 } } }
	res_6_out { ap_vld {  { res_6_out out_data 1 1 }  { res_6_out_ap_vld out_vld 1 1 } } }
}
