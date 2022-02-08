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
	{ p_read float 32 regular  }
	{ p_read14 int 128 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 32 signal 0 } 
	{ p_read14 sc_in sc_lv 128 signal 1 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7445_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7445_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7445_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_7445_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_7445_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_7449_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7449_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7449_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_7449_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_7449_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_7453_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7453_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7453_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_7453_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_7453_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_7457_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7457_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7457_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_7457_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2063_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2063_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2063_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_2063_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_2063_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_7441_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7441_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7441_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_7441_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_7441_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "grp_fu_7445_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7445_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_7445_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7445_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_7445_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_7445_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_7445_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7445_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_7445_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_7445_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_7449_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7449_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_7449_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7449_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_7449_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_7449_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_7449_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7449_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_7449_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_7449_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_7453_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7453_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_7453_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7453_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_7453_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_7453_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_7453_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7453_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_7453_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_7453_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_7457_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7457_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_7457_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7457_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_7457_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7457_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_7457_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_7457_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2063_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2063_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2063_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2063_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2063_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_2063_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2063_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2063_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2063_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2063_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_7441_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7441_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_7441_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7441_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_7441_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_7441_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_7441_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_7441_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_7441_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_7441_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "18", "21", "24", "26", "27"],
		"CDFG" : "operator_div",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_215_1_fu_230", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "operator_Pipeline_VITIS_LOOP_215_1",
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
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "normalizer", "Type" : "None", "Direction" : "I"},
			{"Name" : "den_norm_1_020_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den_norm_2_019_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den_norm_271_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den_norm_170_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_215_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_215_1_fu_230.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_241", "Parent" : "0", "Child" : ["4", "5", "16"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_241.aux_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110", "Parent" : "3", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fadd_32ns_32ns_32_4_full_dsp_1_U52", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fadd_32ns_32ns_32_4_full_dsp_1_U53", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fadd_32ns_32ns_32_4_full_dsp_1_U54", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fmul_32ns_32ns_32_3_max_dsp_1_U55", "Parent" : "5"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fmul_32ns_32ns_32_3_max_dsp_1_U56", "Parent" : "5"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fmul_32ns_32ns_32_3_max_dsp_1_U57", "Parent" : "5"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.mux_32_32_1_1_U58", "Parent" : "5"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.mux_32_32_1_1_U59", "Parent" : "5"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.mux_32_32_1_1_U60", "Parent" : "5"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_187_1_fu_128", "Parent" : "3", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_187_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_84_1_fu_261", "Parent" : "0", "Child" : ["19", "20"],
		"CDFG" : "operator_Pipeline_VITIS_LOOP_84_1",
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
			{"Name" : "tmp_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_84_1_fu_261.mux_32_32_1_1_U89", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_84_1_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_92_2_fu_269", "Parent" : "0", "Child" : ["22", "23"],
		"CDFG" : "operator_Pipeline_VITIS_LOOP_92_2",
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
			{"Name" : "tmp_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_num_load_221_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_num_load15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_assign_load9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_92_2_fu_269.mux_32_32_1_1_U94", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_92_2_fu_269.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_104_3_fu_281", "Parent" : "0", "Child" : ["25"],
		"CDFG" : "operator_Pipeline_VITIS_LOOP_104_3",
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
			{"Name" : "c_num_load_219", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_num_load13", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_assign_load7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_num_load_218_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_num_load12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_assign_load6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_104_3_fu_281.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_9_no_dsp_1_U115", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_9_no_dsp_1_U116", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	operator_div {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 1 FirstWrite -1}}
	operator_Pipeline_VITIS_LOOP_215_1 {
		p_read14 {Type I LastRead 0 FirstWrite -1}
		normalizer {Type I LastRead 0 FirstWrite -1}
		den_norm_1_020_out {Type O LastRead -1 FirstWrite 9}
		den_norm_2_019_out {Type O LastRead -1 FirstWrite 9}
		den_norm_271_out {Type O LastRead -1 FirstWrite 9}
		den_norm_170_out {Type O LastRead -1 FirstWrite 9}}
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
	operator_Pipeline_VITIS_LOOP_84_1 {
		tmp_64 {Type I LastRead 0 FirstWrite -1}
		tmp_65 {Type I LastRead 0 FirstWrite -1}
		tmp_66 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	operator_Pipeline_VITIS_LOOP_92_2 {
		tmp_66 {Type I LastRead 0 FirstWrite -1}
		tmp_65 {Type I LastRead 0 FirstWrite -1}
		tmp_64 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		c_num_load_221_out {Type O LastRead -1 FirstWrite 1}
		c_num_load15_out {Type O LastRead -1 FirstWrite 1}
		num_res_assign_load9_out {Type O LastRead -1 FirstWrite 1}}
	operator_Pipeline_VITIS_LOOP_104_3 {
		c_num_load_219 {Type I LastRead 0 FirstWrite -1}
		c_num_load13 {Type I LastRead 0 FirstWrite -1}
		num_res_assign_load7 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_6 {Type I LastRead 0 FirstWrite -1}
		c_num_load_218_out {Type O LastRead -1 FirstWrite 1}
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
	p_read { ap_none {  { p_read in_data 0 32 } } }
	p_read14 { ap_none {  { p_read14 in_data 0 128 } } }
}
