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
set C_modelName {operator/.1}
set C_modelType { int 128 }
set C_modelArgList {
	{ p_read14 int 128 regular  }
	{ p_read25 int 128 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "p_read25", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read14 sc_in sc_lv 128 signal 0 } 
	{ p_read25 sc_in sc_lv 128 signal 1 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "p_read25", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_read25", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "18", "33", "37", "40", "42", "43", "44", "45", "46", "47", "48"],
		"CDFG" : "operator_1",
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
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_215_1_fu_246", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_215_1_fu_246.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_257", "Parent" : "0", "Child" : ["4", "5", "16"],
		"CDFG" : "p_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_257.aux_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66", "Parent" : "3", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "p_mul_1_Pipeline_VITIS_LOOP_169_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln173", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln173_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln173_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "aux", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.fadd_32ns_32ns_32_4_full_dsp_1_U393", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.fadd_32ns_32ns_32_4_full_dsp_1_U394", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.fadd_32ns_32ns_32_4_full_dsp_1_U395", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.fmul_32ns_32ns_32_3_max_dsp_1_U396", "Parent" : "5"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.fmul_32ns_32ns_32_3_max_dsp_1_U397", "Parent" : "5"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.fmul_32ns_32ns_32_3_max_dsp_1_U398", "Parent" : "5"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.mux_32_32_1_1_U399", "Parent" : "5"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.mux_32_32_1_1_U400", "Parent" : "5"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.mux_32_32_1_1_U401", "Parent" : "5"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_187_1_fu_79", "Parent" : "3", "Child" : ["17"],
		"CDFG" : "p_mul_1_Pipeline_VITIS_LOOP_187_1",
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
			{"Name" : "aux", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "num_res_06_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res3_05_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res4_04_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_187_1_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_264", "Parent" : "0", "Child" : ["19", "20", "31"],
		"CDFG" : "p_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "num_a_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_a_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_a_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_b_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_b_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_b_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_2_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_264.aux_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110", "Parent" : "18", "Child" : ["21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "p_mul_Pipeline_VITIS_LOOP_169_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "num_a_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_a_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_a_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_b_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_b_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_b_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "aux", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fadd_32ns_32ns_32_4_full_dsp_1_U52", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fadd_32ns_32ns_32_4_full_dsp_1_U53", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fadd_32ns_32ns_32_4_full_dsp_1_U54", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fmul_32ns_32ns_32_3_max_dsp_1_U55", "Parent" : "20"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fmul_32ns_32ns_32_3_max_dsp_1_U56", "Parent" : "20"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fmul_32ns_32ns_32_3_max_dsp_1_U57", "Parent" : "20"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.mux_32_32_1_1_U58", "Parent" : "20"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.mux_32_32_1_1_U59", "Parent" : "20"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.mux_32_32_1_1_U60", "Parent" : "20"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_187_1_fu_128", "Parent" : "18", "Child" : ["32"],
		"CDFG" : "p_mul_Pipeline_VITIS_LOOP_187_1",
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
			{"Name" : "aux", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "write_flag5_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_08_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res5_07_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "write_flag8_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "write_flag_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res6_06_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_187_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_84_1_fu_281", "Parent" : "0", "Child" : ["34", "35", "36"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_84_1",
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
			{"Name" : "tmp_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_84_1_fu_281.fcmp_32ns_32ns_1_2_no_dsp_1_U416", "Parent" : "33"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_84_1_fu_281.mux_32_32_1_1_U417", "Parent" : "33"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_84_1_fu_281.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_92_2_fu_289", "Parent" : "0", "Child" : ["38", "39"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_92_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tmp_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_num_load_121_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_num_load15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_assign_load9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_92_2_fu_289.mux_32_32_1_1_U422", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_92_2_fu_289.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_104_3_fu_301", "Parent" : "0", "Child" : ["41"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_104_3",
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
			{"Name" : "c_num_load_119", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_num_load13", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_assign_load7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_num_load_118_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_num_load12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_assign_load6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_104_3_fu_301.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U439", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U440", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U441", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_9_no_dsp_1_U442", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_9_no_dsp_1_U443", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_9_no_dsp_1_U444", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U445", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	operator_1 {
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 1 FirstWrite -1}}
	operator_1_Pipeline_VITIS_LOOP_215_1 {
		p_read25 {Type I LastRead 0 FirstWrite -1}
		normalizer {Type I LastRead 0 FirstWrite -1}
		den_norm_2_019_out {Type O LastRead -1 FirstWrite 9}
		den_norm_1_018_out {Type O LastRead -1 FirstWrite 9}
		den_norm_270_out {Type O LastRead -1 FirstWrite 9}
		den_norm_169_out {Type O LastRead -1 FirstWrite 9}}
	p_mul_1 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}}
	p_mul_1_Pipeline_VITIS_LOOP_169_1 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln173 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln173_3 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln173_4 {Type I LastRead 0 FirstWrite -1}
		aux {Type O LastRead -1 FirstWrite 16}}
	p_mul_1_Pipeline_VITIS_LOOP_187_1 {
		aux {Type I LastRead 0 FirstWrite -1}
		num_res_06_out {Type O LastRead -1 FirstWrite 0}
		num_res3_05_out {Type O LastRead -1 FirstWrite 0}
		num_res4_04_out {Type O LastRead -1 FirstWrite 0}}
	p_mul {
		num_a_0_read {Type I LastRead 0 FirstWrite -1}
		num_a_1_read {Type I LastRead 0 FirstWrite -1}
		num_a_2_read {Type I LastRead 0 FirstWrite -1}
		num_b_0_read {Type I LastRead 0 FirstWrite -1}
		num_b_1_read {Type I LastRead 0 FirstWrite -1}
		num_b_2_read {Type I LastRead 0 FirstWrite -1}
		num_res_0_read {Type I LastRead 4 FirstWrite -1}
		num_res_1_read {Type I LastRead 4 FirstWrite -1}
		num_res_2_read {Type I LastRead 4 FirstWrite -1}}
	p_mul_Pipeline_VITIS_LOOP_169_1 {
		num_a_0_read {Type I LastRead 0 FirstWrite -1}
		num_a_1_read {Type I LastRead 0 FirstWrite -1}
		num_a_2_read {Type I LastRead 0 FirstWrite -1}
		num_b_0_read {Type I LastRead 0 FirstWrite -1}
		num_b_1_read {Type I LastRead 0 FirstWrite -1}
		num_b_2_read {Type I LastRead 0 FirstWrite -1}
		aux {Type O LastRead -1 FirstWrite 16}}
	p_mul_Pipeline_VITIS_LOOP_187_1 {
		aux {Type I LastRead 0 FirstWrite -1}
		write_flag5_0_out {Type O LastRead -1 FirstWrite 0}
		num_res_08_out {Type O LastRead -1 FirstWrite 0}
		num_res5_07_out {Type O LastRead -1 FirstWrite 0}
		write_flag8_0_out {Type O LastRead -1 FirstWrite 0}
		write_flag_0_out {Type O LastRead -1 FirstWrite 0}
		num_res6_06_out {Type O LastRead -1 FirstWrite 0}}
	operator_1_Pipeline_VITIS_LOOP_84_1 {
		tmp_47 {Type I LastRead 0 FirstWrite -1}
		tmp_48 {Type I LastRead 0 FirstWrite -1}
		tmp_49 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	operator_1_Pipeline_VITIS_LOOP_92_2 {
		tmp_49 {Type I LastRead 0 FirstWrite -1}
		tmp_48 {Type I LastRead 0 FirstWrite -1}
		tmp_47 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		c_num_load_121_out {Type O LastRead -1 FirstWrite 1}
		c_num_load15_out {Type O LastRead -1 FirstWrite 1}
		num_res_assign_load9_out {Type O LastRead -1 FirstWrite 1}}
	operator_1_Pipeline_VITIS_LOOP_104_3 {
		c_num_load_119 {Type I LastRead 0 FirstWrite -1}
		c_num_load13 {Type I LastRead 0 FirstWrite -1}
		num_res_assign_load7 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_4 {Type I LastRead 0 FirstWrite -1}
		c_num_load_118_out {Type O LastRead -1 FirstWrite 1}
		c_num_load12_out {Type O LastRead -1 FirstWrite 1}
		num_res_assign_load6_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read14 { ap_none {  { p_read14 in_data 0 128 } } }
	p_read25 { ap_none {  { p_read25 in_data 0 128 } } }
}
