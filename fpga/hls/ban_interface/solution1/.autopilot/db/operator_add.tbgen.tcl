set moduleName operator_add
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
set C_modelName {operator+}
set C_modelType { int 128 }
set C_modelArgList {
	{ this_p_read int 32 regular  }
	{ p_read3 float 32 regular  }
	{ p_read10 float 32 regular  }
	{ p_read11 float 32 regular  }
	{ n float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "this_p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_p_read sc_in sc_lv 32 signal 0 } 
	{ p_read3 sc_in sc_lv 32 signal 1 } 
	{ p_read10 sc_in sc_lv 32 signal 2 } 
	{ p_read11 sc_in sc_lv 32 signal 3 } 
	{ n sc_in sc_lv 32 signal 4 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7445_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7445_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7445_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_7445_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_7445_p_ce sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "this_p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_p_read", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "grp_fu_7445_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7445_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_7445_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7445_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_7445_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_7445_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_7445_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7445_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_7445_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_7445_p_ce", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "7", "10", "12", "15"],
		"CDFG" : "operator_add",
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
			{"Name" : "this_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_506_1_fu_311", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "operator_Pipeline_VITIS_LOOP_506_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sub_i1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln509_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_1_02_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_2_01_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_506_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_506_1_fu_311.mux_32_32_1_1_U168", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_506_1_fu_311.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_84_1_s_fu_325", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "operator_Pipeline_VITIS_LOOP_84_1_s",
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
			{"Name" : "agg_result_num16_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_84_1_s_fu_325.mux_32_32_1_1_U146", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_84_1_s_fu_325.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_92_2_s_fu_336", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "operator_Pipeline_VITIS_LOOP_92_2_s",
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
			{"Name" : "agg_result_num_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num16_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_92_2_s_fu_336.mux_32_32_1_1_U151", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_92_2_s_fu_336.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_104_3_s_fu_351", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "operator_Pipeline_VITIS_LOOP_104_3_s",
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
			{"Name" : "agg_result_num_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num16_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num2_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_104_3_s_fu_351.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_21_1_fu_367", "Parent" : "0", "Child" : ["13", "14"],
		"CDFG" : "operator_Pipeline_VITIS_LOOP_21_1",
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
			{"Name" : "agg_result_num_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_21_1_fu_367.mux_32_32_1_1_U176", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_Pipeline_VITIS_LOOP_21_1_fu_367.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U185", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	operator_add {
		this_p_read {Type I LastRead 1 FirstWrite -1}
		p_read3 {Type I LastRead 1 FirstWrite -1}
		p_read10 {Type I LastRead 1 FirstWrite -1}
		p_read11 {Type I LastRead 1 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}}
	operator_Pipeline_VITIS_LOOP_506_1 {
		sub_i1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln509_1 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		num_res_1_02_out {Type O LastRead -1 FirstWrite 0}
		num_res_2_01_out {Type O LastRead -1 FirstWrite 0}}
	operator_Pipeline_VITIS_LOOP_84_1_s {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_0 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	operator_Pipeline_VITIS_LOOP_92_2_s {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_0 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_1_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num16_1_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_1_out {Type O LastRead -1 FirstWrite 1}}
	operator_Pipeline_VITIS_LOOP_104_3_s {
		agg_result_num_3 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_3 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_12 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_4_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num16_4_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_4_out {Type O LastRead -1 FirstWrite 1}}
	operator_Pipeline_VITIS_LOOP_21_1 {
		n {Type I LastRead 0 FirstWrite -1}
		num_res_1_02_reload {Type I LastRead 0 FirstWrite -1}
		num_res_2_01_reload {Type I LastRead 0 FirstWrite -1}
		agg_result_num_6_out {Type O LastRead -1 FirstWrite 0}
		agg_result_num16_6_out {Type O LastRead -1 FirstWrite 0}
		agg_result_num2_6_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	this_p_read { ap_none {  { this_p_read in_data 0 32 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 32 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 32 } } }
	p_read11 { ap_none {  { p_read11 in_data 0 32 } } }
	n { ap_none {  { n in_data 0 32 } } }
}