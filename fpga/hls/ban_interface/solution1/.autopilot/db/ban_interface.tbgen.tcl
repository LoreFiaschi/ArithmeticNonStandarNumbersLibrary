set moduleName ban_interface
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {ban_interface}
set C_modelType { int 128 }
set C_modelArgList {
	{ b_op1 int 128 regular {pointer 2}  }
	{ b_op2 int 128 regular {pointer 0}  }
	{ f_op float 32 regular  }
	{ op int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "b_op1", "interface" : "wire", "bitwidth" : 128, "direction" : "READWRITE"} , 
 	{ "Name" : "b_op2", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "f_op", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "op", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ b_op1_i sc_in sc_lv 128 signal 0 } 
	{ b_op1_o sc_out sc_lv 128 signal 0 } 
	{ b_op1_o_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ b_op2 sc_in sc_lv 128 signal 1 } 
	{ f_op sc_in sc_lv 32 signal 2 } 
	{ op sc_in sc_lv 32 signal 3 } 
	{ ap_return sc_out sc_lv 128 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "b_op1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "b_op1", "role": "i" }} , 
 	{ "name": "b_op1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "b_op1", "role": "o" }} , 
 	{ "name": "b_op1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_op1", "role": "o_ap_vld" }} , 
 	{ "name": "b_op2", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "b_op2", "role": "default" }} , 
 	{ "name": "f_op", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_op", "role": "default" }} , 
 	{ "name": "op", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "op", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "15", "33", "82", "104", "117", "119", "121", "123", "125", "127", "129", "131", "133", "135", "137", "139", "141", "169", "172", "175", "177", "193", "196", "199", "201", "204", "207", "209", "211", "213", "215", "217", "219", "221", "240", "265", "266", "267", "268", "269", "270", "271", "272"],
		"CDFG" : "ban_interface",
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
			{"Name" : "b_op1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b_op2", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_op", "Type" : "None", "Direction" : "I"},
			{"Name" : "op", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_1764", "Parent" : "0", "Child" : ["2", "6", "9", "11", "12", "13", "14"],
		"CDFG" : "operator_2_s",
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
			{"Name" : "n", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_1764.grp_operator_2_Pipeline_VITIS_LOOP_84_1_s_fu_224", "Parent" : "1", "Child" : ["3", "4", "5"],
		"CDFG" : "operator_2_Pipeline_VITIS_LOOP_84_1_s",
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
			{"Name" : "tmp", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_1764.grp_operator_2_Pipeline_VITIS_LOOP_84_1_s_fu_224.fcmp_32ns_32ns_1_2_no_dsp_1_U232", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_1764.grp_operator_2_Pipeline_VITIS_LOOP_84_1_s_fu_224.mux_32_32_1_1_U233", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_1764.grp_operator_2_Pipeline_VITIS_LOOP_84_1_s_fu_224.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_1764.grp_operator_2_Pipeline_VITIS_LOOP_92_2_s_fu_232", "Parent" : "1", "Child" : ["7", "8"],
		"CDFG" : "operator_2_Pipeline_VITIS_LOOP_92_2_s",
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
			{"Name" : "tmp_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load_717_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load_611_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_1764.grp_operator_2_Pipeline_VITIS_LOOP_92_2_s_fu_232.mux_32_32_1_1_U238", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_1764.grp_operator_2_Pipeline_VITIS_LOOP_92_2_s_fu_232.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_1764.grp_operator_2_Pipeline_VITIS_LOOP_104_3_s_fu_244", "Parent" : "1", "Child" : ["10"],
		"CDFG" : "operator_2_Pipeline_VITIS_LOOP_104_3_s",
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
			{"Name" : "res_num_load_715", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load_714_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_1764.grp_operator_2_Pipeline_VITIS_LOOP_104_3_s_fu_244.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_1764.fdiv_32ns_32ns_32_9_no_dsp_1_U255", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_1764.fdiv_32ns_32ns_32_9_no_dsp_1_U256", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_1764.fdiv_32ns_32ns_32_9_no_dsp_1_U257", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_1764.fcmp_32ns_32ns_1_2_no_dsp_1_U258", "Parent" : "1"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772", "Parent" : "0", "Child" : ["16", "20", "23", "25", "27", "30", "31", "32"],
		"CDFG" : "operator_2",
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
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.grp_operator_2_Pipeline_VITIS_LOOP_84_1_fu_303", "Parent" : "15", "Child" : ["17", "18", "19"],
		"CDFG" : "operator_2_Pipeline_VITIS_LOOP_84_1",
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
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.grp_operator_2_Pipeline_VITIS_LOOP_84_1_fu_303.fcmp_32ns_32ns_1_2_no_dsp_1_U192", "Parent" : "16"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.grp_operator_2_Pipeline_VITIS_LOOP_84_1_fu_303.mux_32_32_1_1_U193", "Parent" : "16"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.grp_operator_2_Pipeline_VITIS_LOOP_84_1_fu_303.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.grp_operator_2_Pipeline_VITIS_LOOP_92_2_fu_314", "Parent" : "15", "Child" : ["21", "22"],
		"CDFG" : "operator_2_Pipeline_VITIS_LOOP_92_2",
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.grp_operator_2_Pipeline_VITIS_LOOP_92_2_fu_314.mux_32_32_1_1_U198", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.grp_operator_2_Pipeline_VITIS_LOOP_92_2_fu_314.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.grp_operator_2_Pipeline_VITIS_LOOP_104_3_fu_329", "Parent" : "15", "Child" : ["24"],
		"CDFG" : "operator_2_Pipeline_VITIS_LOOP_104_3",
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
			{"Name" : "zext_ln104_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.grp_operator_2_Pipeline_VITIS_LOOP_104_3_fu_329.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.grp_operator_2_Pipeline_VITIS_LOOP_506_1_fu_345", "Parent" : "15", "Child" : ["26"],
		"CDFG" : "operator_2_Pipeline_VITIS_LOOP_506_1",
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
			{"Name" : "res_p", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_1_02_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_2_01_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_506_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.grp_operator_2_Pipeline_VITIS_LOOP_506_1_fu_345.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.grp_operator_2_Pipeline_VITIS_LOOP_21_1_fu_354", "Parent" : "15", "Child" : ["28", "29"],
		"CDFG" : "operator_2_Pipeline_VITIS_LOOP_21_1",
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
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.grp_operator_2_Pipeline_VITIS_LOOP_21_1_fu_354.mux_32_32_1_1_U220", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.grp_operator_2_Pipeline_VITIS_LOOP_21_1_fu_354.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.fadd_32ns_32ns_32_4_full_dsp_1_U227", "Parent" : "15"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.fcmp_32ns_32ns_1_2_no_dsp_1_U228", "Parent" : "15"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_1772.mux_32_32_1_1_U229", "Parent" : "15"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780", "Parent" : "0", "Child" : ["34", "36", "51", "66", "70", "73", "75", "76", "77", "78", "79", "80", "81"],
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
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_operator_1_Pipeline_VITIS_LOOP_215_1_fu_246", "Parent" : "33", "Child" : ["35"],
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
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_operator_1_Pipeline_VITIS_LOOP_215_1_fu_246.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_1_fu_257", "Parent" : "33", "Child" : ["37", "38", "49"],
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
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_1_fu_257.aux_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66", "Parent" : "36", "Child" : ["39", "40", "41", "42", "43", "44", "45", "46", "47", "48"],
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
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.fadd_32ns_32ns_32_4_full_dsp_1_U393", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.fadd_32ns_32ns_32_4_full_dsp_1_U394", "Parent" : "38"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.fadd_32ns_32ns_32_4_full_dsp_1_U395", "Parent" : "38"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.fmul_32ns_32ns_32_3_max_dsp_1_U396", "Parent" : "38"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.fmul_32ns_32ns_32_3_max_dsp_1_U397", "Parent" : "38"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.fmul_32ns_32ns_32_3_max_dsp_1_U398", "Parent" : "38"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.mux_32_32_1_1_U399", "Parent" : "38"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.mux_32_32_1_1_U400", "Parent" : "38"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.mux_32_32_1_1_U401", "Parent" : "38"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_169_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_187_1_fu_79", "Parent" : "36", "Child" : ["50"],
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
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_1_fu_257.grp_p_mul_1_Pipeline_VITIS_LOOP_187_1_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_fu_264", "Parent" : "33", "Child" : ["52", "53", "64"],
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
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_fu_264.aux_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110", "Parent" : "51", "Child" : ["54", "55", "56", "57", "58", "59", "60", "61", "62", "63"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fadd_32ns_32ns_32_4_full_dsp_1_U52", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fadd_32ns_32ns_32_4_full_dsp_1_U53", "Parent" : "53"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fadd_32ns_32ns_32_4_full_dsp_1_U54", "Parent" : "53"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fmul_32ns_32ns_32_3_max_dsp_1_U55", "Parent" : "53"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fmul_32ns_32ns_32_3_max_dsp_1_U56", "Parent" : "53"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fmul_32ns_32ns_32_3_max_dsp_1_U57", "Parent" : "53"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.mux_32_32_1_1_U58", "Parent" : "53"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.mux_32_32_1_1_U59", "Parent" : "53"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.mux_32_32_1_1_U60", "Parent" : "53"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_187_1_fu_128", "Parent" : "51", "Child" : ["65"],
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
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_p_mul_fu_264.grp_p_mul_Pipeline_VITIS_LOOP_187_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_operator_1_Pipeline_VITIS_LOOP_84_1_fu_281", "Parent" : "33", "Child" : ["67", "68", "69"],
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
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_operator_1_Pipeline_VITIS_LOOP_84_1_fu_281.fcmp_32ns_32ns_1_2_no_dsp_1_U416", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_operator_1_Pipeline_VITIS_LOOP_84_1_fu_281.mux_32_32_1_1_U417", "Parent" : "66"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_operator_1_Pipeline_VITIS_LOOP_84_1_fu_281.flow_control_loop_pipe_sequential_init_U", "Parent" : "66"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_operator_1_Pipeline_VITIS_LOOP_92_2_fu_289", "Parent" : "33", "Child" : ["71", "72"],
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
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_operator_1_Pipeline_VITIS_LOOP_92_2_fu_289.mux_32_32_1_1_U422", "Parent" : "70"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_operator_1_Pipeline_VITIS_LOOP_92_2_fu_289.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_operator_1_Pipeline_VITIS_LOOP_104_3_fu_301", "Parent" : "33", "Child" : ["74"],
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
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.grp_operator_1_Pipeline_VITIS_LOOP_104_3_fu_301.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.fadd_32ns_32ns_32_4_full_dsp_1_U439", "Parent" : "33"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.fadd_32ns_32ns_32_4_full_dsp_1_U440", "Parent" : "33"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.fadd_32ns_32ns_32_4_full_dsp_1_U441", "Parent" : "33"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.fdiv_32ns_32ns_32_9_no_dsp_1_U442", "Parent" : "33"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.fdiv_32ns_32ns_32_9_no_dsp_1_U443", "Parent" : "33"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.fdiv_32ns_32ns_32_9_no_dsp_1_U444", "Parent" : "33"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_1780.fcmp_32ns_32ns_1_2_no_dsp_1_U445", "Parent" : "33"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788", "Parent" : "0", "Child" : ["83", "93", "96", "99", "101", "102", "103"],
		"CDFG" : "operator_3",
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
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_p_sum_1_fu_346", "Parent" : "82", "Child" : ["84", "87", "90", "92"],
		"CDFG" : "p_sum_1",
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
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "diff_p", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_p_sum_1_fu_346.grp_p_sum_1_Pipeline_VITIS_LOOP_84_1_fu_254", "Parent" : "83", "Child" : ["85", "86"],
		"CDFG" : "p_sum_1_Pipeline_VITIS_LOOP_84_1",
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
			{"Name" : "tmp_287", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_p_sum_1_fu_346.grp_p_sum_1_Pipeline_VITIS_LOOP_84_1_fu_254.mux_32_32_1_1_U498", "Parent" : "84"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_p_sum_1_fu_346.grp_p_sum_1_Pipeline_VITIS_LOOP_84_1_fu_254.flow_control_loop_pipe_sequential_init_U", "Parent" : "84"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_p_sum_1_fu_346.grp_p_sum_1_Pipeline_VITIS_LOOP_92_2_fu_264", "Parent" : "83", "Child" : ["88", "89"],
		"CDFG" : "p_sum_1_Pipeline_VITIS_LOOP_92_2",
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
			{"Name" : "agg_result_num16_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_287", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_p_sum_1_fu_346.grp_p_sum_1_Pipeline_VITIS_LOOP_92_2_fu_264.mux_32_32_1_1_U503", "Parent" : "87"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_p_sum_1_fu_346.grp_p_sum_1_Pipeline_VITIS_LOOP_92_2_fu_264.flow_control_loop_pipe_sequential_init_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_p_sum_1_fu_346.grp_p_sum_1_Pipeline_VITIS_LOOP_104_3_fu_278", "Parent" : "83", "Child" : ["91"],
		"CDFG" : "p_sum_1_Pipeline_VITIS_LOOP_104_3",
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
			{"Name" : "agg_result_num16_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num2_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_p_sum_1_fu_346.grp_p_sum_1_Pipeline_VITIS_LOOP_104_3_fu_278.flow_control_loop_pipe_sequential_init_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_p_sum_1_fu_346.mux_32_32_1_1_U522", "Parent" : "83"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_operator_3_Pipeline_VITIS_LOOP_84_1_fu_355", "Parent" : "82", "Child" : ["94", "95"],
		"CDFG" : "operator_3_Pipeline_VITIS_LOOP_84_1",
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
			{"Name" : "agg_result_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_112_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_operator_3_Pipeline_VITIS_LOOP_84_1_fu_355.mux_32_32_1_1_U529", "Parent" : "93"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_operator_3_Pipeline_VITIS_LOOP_84_1_fu_355.flow_control_loop_pipe_sequential_init_U", "Parent" : "93"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_operator_3_Pipeline_VITIS_LOOP_92_2_fu_365", "Parent" : "82", "Child" : ["97", "98"],
		"CDFG" : "operator_3_Pipeline_VITIS_LOOP_92_2",
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
			{"Name" : "agg_result_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_112_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_112_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_12_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_operator_3_Pipeline_VITIS_LOOP_92_2_fu_365.mux_32_32_1_1_U534", "Parent" : "96"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_operator_3_Pipeline_VITIS_LOOP_92_2_fu_365.flow_control_loop_pipe_sequential_init_U", "Parent" : "96"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_operator_3_Pipeline_VITIS_LOOP_104_3_fu_379", "Parent" : "82", "Child" : ["100"],
		"CDFG" : "operator_3_Pipeline_VITIS_LOOP_104_3",
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
			{"Name" : "agg_result_1_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_112_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_12_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_1_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_112_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_12_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.grp_operator_3_Pipeline_VITIS_LOOP_104_3_fu_379.flow_control_loop_pipe_sequential_init_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.fadd_32ns_32ns_32_4_full_dsp_1_U551", "Parent" : "82"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.fcmp_32ns_32ns_1_2_no_dsp_1_U552", "Parent" : "82"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_1788.fcmp_32ns_32ns_1_2_no_dsp_1_U553", "Parent" : "82"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_1798", "Parent" : "0", "Child" : ["105", "116"],
		"CDFG" : "operator_1_s",
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
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_1798.grp_p_sum_fu_132", "Parent" : "104", "Child" : ["106", "109", "112", "114", "115"],
		"CDFG" : "p_sum",
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
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "diff_p", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_1798.grp_p_sum_fu_132.grp_p_sum_Pipeline_VITIS_LOOP_84_1_fu_262", "Parent" : "105", "Child" : ["107", "108"],
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
			{"Name" : "tmp_317", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_1798.grp_p_sum_fu_132.grp_p_sum_Pipeline_VITIS_LOOP_84_1_fu_262.mux_32_32_1_1_U560", "Parent" : "106"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_1798.grp_p_sum_fu_132.grp_p_sum_Pipeline_VITIS_LOOP_84_1_fu_262.flow_control_loop_pipe_sequential_init_U", "Parent" : "106"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_1798.grp_p_sum_fu_132.grp_p_sum_Pipeline_VITIS_LOOP_92_2_fu_272", "Parent" : "105", "Child" : ["110", "111"],
		"CDFG" : "p_sum_Pipeline_VITIS_LOOP_92_2",
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
			{"Name" : "agg_result_num16_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_317", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_1798.grp_p_sum_fu_132.grp_p_sum_Pipeline_VITIS_LOOP_92_2_fu_272.mux_32_32_1_1_U565", "Parent" : "109"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_1798.grp_p_sum_fu_132.grp_p_sum_Pipeline_VITIS_LOOP_92_2_fu_272.flow_control_loop_pipe_sequential_init_U", "Parent" : "109"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_1798.grp_p_sum_fu_132.grp_p_sum_Pipeline_VITIS_LOOP_104_3_fu_286", "Parent" : "105", "Child" : ["113"],
		"CDFG" : "p_sum_Pipeline_VITIS_LOOP_104_3",
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
			{"Name" : "agg_result_num16_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num2_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_1798.grp_p_sum_fu_132.grp_p_sum_Pipeline_VITIS_LOOP_104_3_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_1798.grp_p_sum_fu_132.fadd_32ns_32ns_32_4_full_dsp_1_U582", "Parent" : "105"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_1798.grp_p_sum_fu_132.fcmp_32ns_32ns_1_2_no_dsp_1_U583", "Parent" : "105"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_1798.fcmp_32ns_32ns_1_2_no_dsp_1_U587", "Parent" : "104"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_410_122_fu_1806", "Parent" : "0", "Child" : ["118"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_410_122",
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
			{"Name" : "b_op1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_20_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_410_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_410_122_fu_1806.flow_control_loop_pipe_sequential_init_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_374_121_fu_1812", "Parent" : "0", "Child" : ["120"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_374_121",
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
			{"Name" : "b_op1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_19_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_374_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_374_121_fu_1812.flow_control_loop_pipe_sequential_init_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_410_120_fu_1818", "Parent" : "0", "Child" : ["122"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_410_120",
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
			{"Name" : "b_op1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_410_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_410_120_fu_1818.flow_control_loop_pipe_sequential_init_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_374_119_fu_1824", "Parent" : "0", "Child" : ["124"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_374_119",
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
			{"Name" : "b_op1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_374_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_374_119_fu_1824.flow_control_loop_pipe_sequential_init_U", "Parent" : "123"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_68_118_fu_1830", "Parent" : "0", "Child" : ["126"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_68_118",
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
			{"Name" : "b_op1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_68_118_fu_1830.flow_control_loop_pipe_sequential_init_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_68_117_fu_1836", "Parent" : "0", "Child" : ["128"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_68_117",
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
			{"Name" : "b_op1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_68_117_fu_1836.flow_control_loop_pipe_sequential_init_U", "Parent" : "127"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_374_116_fu_1842", "Parent" : "0", "Child" : ["130"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_374_116",
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
			{"Name" : "b_op1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_374_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_374_116_fu_1842.flow_control_loop_pipe_sequential_init_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_410_115_fu_1848", "Parent" : "0", "Child" : ["132"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_410_115",
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
			{"Name" : "b_op1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_15_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_410_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_410_115_fu_1848.flow_control_loop_pipe_sequential_init_U", "Parent" : "131"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_410_1_fu_1854", "Parent" : "0", "Child" : ["134"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_410_1",
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
			{"Name" : "b_op1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_14_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_410_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_410_1_fu_1854.flow_control_loop_pipe_sequential_init_U", "Parent" : "133"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_374_1_fu_1860", "Parent" : "0", "Child" : ["136"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_374_1",
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
			{"Name" : "b_op1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_374_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_374_1_fu_1860.flow_control_loop_pipe_sequential_init_U", "Parent" : "135"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_68_114_fu_1866", "Parent" : "0", "Child" : ["138"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_68_114",
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
			{"Name" : "b_op1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_68_114_fu_1866.flow_control_loop_pipe_sequential_init_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_68_1_fu_1872", "Parent" : "0", "Child" : ["140"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_68_1",
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
			{"Name" : "b_op1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_68_1_fu_1872.flow_control_loop_pipe_sequential_init_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878", "Parent" : "0", "Child" : ["142", "144", "159", "162", "165", "167", "168"],
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
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_operator_Pipeline_VITIS_LOOP_215_1_fu_230", "Parent" : "141", "Child" : ["143"],
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
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_operator_Pipeline_VITIS_LOOP_215_1_fu_230.flow_control_loop_pipe_sequential_init_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_p_mul_fu_241", "Parent" : "141", "Child" : ["145", "146", "157"],
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
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_p_mul_fu_241.aux_U", "Parent" : "144"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110", "Parent" : "144", "Child" : ["147", "148", "149", "150", "151", "152", "153", "154", "155", "156"],
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
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fadd_32ns_32ns_32_4_full_dsp_1_U52", "Parent" : "146"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fadd_32ns_32ns_32_4_full_dsp_1_U53", "Parent" : "146"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fadd_32ns_32ns_32_4_full_dsp_1_U54", "Parent" : "146"},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fmul_32ns_32ns_32_3_max_dsp_1_U55", "Parent" : "146"},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fmul_32ns_32ns_32_3_max_dsp_1_U56", "Parent" : "146"},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fmul_32ns_32ns_32_3_max_dsp_1_U57", "Parent" : "146"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.mux_32_32_1_1_U58", "Parent" : "146"},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.mux_32_32_1_1_U59", "Parent" : "146"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.mux_32_32_1_1_U60", "Parent" : "146"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "146"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_187_1_fu_128", "Parent" : "144", "Child" : ["158"],
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
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_p_mul_fu_241.grp_p_mul_Pipeline_VITIS_LOOP_187_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "157"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_operator_Pipeline_VITIS_LOOP_84_1_fu_261", "Parent" : "141", "Child" : ["160", "161"],
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
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_operator_Pipeline_VITIS_LOOP_84_1_fu_261.mux_32_32_1_1_U89", "Parent" : "159"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_operator_Pipeline_VITIS_LOOP_84_1_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "159"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_operator_Pipeline_VITIS_LOOP_92_2_fu_269", "Parent" : "141", "Child" : ["163", "164"],
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
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_operator_Pipeline_VITIS_LOOP_92_2_fu_269.mux_32_32_1_1_U94", "Parent" : "162"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_operator_Pipeline_VITIS_LOOP_92_2_fu_269.flow_control_loop_pipe_sequential_init_U", "Parent" : "162"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_operator_Pipeline_VITIS_LOOP_104_3_fu_281", "Parent" : "141", "Child" : ["166"],
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
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.grp_operator_Pipeline_VITIS_LOOP_104_3_fu_281.flow_control_loop_pipe_sequential_init_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.fdiv_32ns_32ns_32_9_no_dsp_1_U115", "Parent" : "141"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_1878.fdiv_32ns_32ns_32_9_no_dsp_1_U116", "Parent" : "141"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_84_111_fu_1884", "Parent" : "0", "Child" : ["170", "171"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_84_111",
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
			{"Name" : "tmp_309", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_310", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_311", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_84_111_fu_1884.mux_32_32_1_1_U123", "Parent" : "169"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_84_111_fu_1884.flow_control_loop_pipe_sequential_init_U", "Parent" : "169"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_92_212_fu_1892", "Parent" : "0", "Child" : ["173", "174"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_92_212",
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
			{"Name" : "tmp_311", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_310", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_309", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_92476_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_91470_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_90464_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_92_212_fu_1892.mux_32_32_1_1_U128", "Parent" : "172"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_92_212_fu_1892.flow_control_loop_pipe_sequential_init_U", "Parent" : "172"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_104_313_fu_1904", "Parent" : "0", "Child" : ["176"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_104_313",
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
			{"Name" : "out_92474", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_91468", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_90462", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_92473_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_91467_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_90461_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_104_313_fu_1904.flow_control_loop_pipe_sequential_init_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_1920", "Parent" : "0", "Child" : ["178", "181", "184", "187", "189", "192"],
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
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_1920.grp_operator_Pipeline_VITIS_LOOP_506_1_fu_311", "Parent" : "177", "Child" : ["179", "180"],
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
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_1920.grp_operator_Pipeline_VITIS_LOOP_506_1_fu_311.mux_32_32_1_1_U168", "Parent" : "178"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_1920.grp_operator_Pipeline_VITIS_LOOP_506_1_fu_311.flow_control_loop_pipe_sequential_init_U", "Parent" : "178"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_1920.grp_operator_Pipeline_VITIS_LOOP_84_1_s_fu_325", "Parent" : "177", "Child" : ["182", "183"],
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
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_1920.grp_operator_Pipeline_VITIS_LOOP_84_1_s_fu_325.mux_32_32_1_1_U146", "Parent" : "181"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_1920.grp_operator_Pipeline_VITIS_LOOP_84_1_s_fu_325.flow_control_loop_pipe_sequential_init_U", "Parent" : "181"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_1920.grp_operator_Pipeline_VITIS_LOOP_92_2_s_fu_336", "Parent" : "177", "Child" : ["185", "186"],
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
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_1920.grp_operator_Pipeline_VITIS_LOOP_92_2_s_fu_336.mux_32_32_1_1_U151", "Parent" : "184"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_1920.grp_operator_Pipeline_VITIS_LOOP_92_2_s_fu_336.flow_control_loop_pipe_sequential_init_U", "Parent" : "184"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_1920.grp_operator_Pipeline_VITIS_LOOP_104_3_s_fu_351", "Parent" : "177", "Child" : ["188"],
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
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_1920.grp_operator_Pipeline_VITIS_LOOP_104_3_s_fu_351.flow_control_loop_pipe_sequential_init_U", "Parent" : "187"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_1920.grp_operator_Pipeline_VITIS_LOOP_21_1_fu_367", "Parent" : "177", "Child" : ["190", "191"],
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
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_1920.grp_operator_Pipeline_VITIS_LOOP_21_1_fu_367.mux_32_32_1_1_U176", "Parent" : "189"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_1920.grp_operator_Pipeline_VITIS_LOOP_21_1_fu_367.flow_control_loop_pipe_sequential_init_U", "Parent" : "189"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_1920.mux_32_32_1_1_U185", "Parent" : "177"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_84_18_fu_1929", "Parent" : "0", "Child" : ["194", "195"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_84_18",
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
			{"Name" : "tmp_302", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_303", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_304", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_84_18_fu_1929.mux_32_32_1_1_U262", "Parent" : "193"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_84_18_fu_1929.flow_control_loop_pipe_sequential_init_U", "Parent" : "193"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_92_29_fu_1937", "Parent" : "0", "Child" : ["197", "198"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_92_29",
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
			{"Name" : "tmp_304", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_303", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_302", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load_2458_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load_1452_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load446_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_92_29_fu_1937.mux_32_32_1_1_U267", "Parent" : "196"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_92_29_fu_1937.flow_control_loop_pipe_sequential_init_U", "Parent" : "196"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_104_310_fu_1949", "Parent" : "0", "Child" : ["200"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_104_310",
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
			{"Name" : "res_num_load_2456", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load_1450", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load444", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load_2455_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load_1449_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load443_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_104_310_fu_1949.flow_control_loop_pipe_sequential_init_U", "Parent" : "199"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_84_1_fu_1965", "Parent" : "0", "Child" : ["202", "203"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_84_1",
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
			{"Name" : "tmp_298", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_299", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_300", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_15_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_84_1_fu_1965.mux_32_32_1_1_U285", "Parent" : "201"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_84_1_fu_1965.flow_control_loop_pipe_sequential_init_U", "Parent" : "201"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_92_2_fu_1973", "Parent" : "0", "Child" : ["205", "206"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_92_2",
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
			{"Name" : "tmp_300", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_299", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_298", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_87440_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_86434_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_85428_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_92_2_fu_1973.mux_32_32_1_1_U290", "Parent" : "204"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_92_2_fu_1973.flow_control_loop_pipe_sequential_init_U", "Parent" : "204"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_104_3_fu_1985", "Parent" : "0", "Child" : ["208"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_104_3",
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
			{"Name" : "out_87438", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_86432", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_85426", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_87437_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_86431_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_85425_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_104_3_fu_1985.flow_control_loop_pipe_sequential_init_U", "Parent" : "207"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_335_17_fu_2001", "Parent" : "0", "Child" : ["210"],
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
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_335_17_fu_2001.flow_control_loop_pipe_sequential_init_U", "Parent" : "209"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_335_16_fu_2008", "Parent" : "0", "Child" : ["212"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_335_16",
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
			{"Name" : "b_op2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_op1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_335_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_335_16_fu_2008.flow_control_loop_pipe_sequential_init_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_335_15_fu_2015", "Parent" : "0", "Child" : ["214"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_335_15",
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
			{"Name" : "b_op2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_op1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_335_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_335_15_fu_2015.flow_control_loop_pipe_sequential_init_U", "Parent" : "213"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_335_1_fu_2022", "Parent" : "0", "Child" : ["216"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_335_1",
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
			{"Name" : "res_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_335_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_335_1_fu_2022.flow_control_loop_pipe_sequential_init_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_53_14_fu_2029", "Parent" : "0", "Child" : ["218"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_53_14",
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
			{"Name" : "res_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_53_14_fu_2029.flow_control_loop_pipe_sequential_init_U", "Parent" : "217"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_53_1_fu_2036", "Parent" : "0", "Child" : ["220"],
		"CDFG" : "ban_interface_Pipeline_VITIS_LOOP_53_1",
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
			{"Name" : "res_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ban_interface_Pipeline_VITIS_LOOP_53_1_fu_2036.flow_control_loop_pipe_sequential_init_U", "Parent" : "219"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043", "Parent" : "0", "Child" : ["222", "223", "225", "227", "232", "234", "237", "238", "239"],
		"CDFG" : "sqrt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "75",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.aux_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.grp_sqrt_Pipeline_VITIS_LOOP_68_1_fu_164", "Parent" : "221", "Child" : ["224"],
		"CDFG" : "sqrt_Pipeline_VITIS_LOOP_68_1",
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
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.grp_sqrt_Pipeline_VITIS_LOOP_68_1_fu_164.flow_control_loop_pipe_sequential_init_U", "Parent" : "223"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.grp_sqrt_Pipeline_VITIS_LOOP_444_1_fu_170", "Parent" : "221", "Child" : ["226"],
		"CDFG" : "sqrt_Pipeline_VITIS_LOOP_444_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "normalizer_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "eps_1_1_02_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eps_1_2_01_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_load_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_load_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eps_2_1_08_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eps_2_2_07_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_444_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.grp_sqrt_Pipeline_VITIS_LOOP_444_1_fu_170.flow_control_loop_pipe_sequential_init_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.grp_sqrt_Pipeline_VITIS_LOOP_169_1_fu_182", "Parent" : "221", "Child" : ["228", "229", "230", "231"],
		"CDFG" : "sqrt_Pipeline_VITIS_LOOP_169_1",
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
			{"Name" : "eps_1_1_02_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "eps_1_2_01_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "eps_2_1_08_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "eps_2_2_07_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "aux", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.grp_sqrt_Pipeline_VITIS_LOOP_169_1_fu_182.mux_32_32_1_1_U354", "Parent" : "227"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.grp_sqrt_Pipeline_VITIS_LOOP_169_1_fu_182.mux_32_32_1_1_U355", "Parent" : "227"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.grp_sqrt_Pipeline_VITIS_LOOP_169_1_fu_182.mux_32_32_1_1_U356", "Parent" : "227"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.grp_sqrt_Pipeline_VITIS_LOOP_169_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "227"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.grp_sqrt_Pipeline_VITIS_LOOP_187_1_fu_191", "Parent" : "221", "Child" : ["233"],
		"CDFG" : "sqrt_Pipeline_VITIS_LOOP_187_1",
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
			{"Name" : "eps_3_0_06_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eps_3_1_05_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eps_3_2_04_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.grp_sqrt_Pipeline_VITIS_LOOP_187_1_fu_191.flow_control_loop_pipe_sequential_init_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.grp_sqrt_Pipeline_VITIS_LOOP_21_1_fu_199", "Parent" : "221", "Child" : ["235", "236"],
		"CDFG" : "sqrt_Pipeline_VITIS_LOOP_21_1",
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
			{"Name" : "tmp_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_116_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_12_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.grp_sqrt_Pipeline_VITIS_LOOP_21_1_fu_199.mux_32_32_1_1_U366", "Parent" : "234"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.grp_sqrt_Pipeline_VITIS_LOOP_21_1_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "234"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.fmul_32ns_32ns_32_3_max_dsp_1_U378", "Parent" : "221"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.fcmp_32ns_32ns_1_2_no_dsp_1_U379", "Parent" : "221"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_2043.fsqrt_32ns_32ns_32_8_no_dsp_1_U380", "Parent" : "221"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048", "Parent" : "0", "Child" : ["241", "242", "250", "252", "255", "259", "262", "264"],
		"CDFG" : "mul_body",
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
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.aux_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_169_1_fu_230", "Parent" : "240", "Child" : ["243", "244", "245", "246", "247", "248", "249"],
		"CDFG" : "mul_body_Pipeline_VITIS_LOOP_169_1",
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
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "aux", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_169_1_fu_230.fadd_32ns_32ns_32_4_full_dsp_1_U448", "Parent" : "242"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_169_1_fu_230.fadd_32ns_32ns_32_4_full_dsp_1_U449", "Parent" : "242"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_169_1_fu_230.fadd_32ns_32ns_32_4_full_dsp_1_U450", "Parent" : "242"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_169_1_fu_230.fmul_32ns_32ns_32_3_max_dsp_1_U451", "Parent" : "242"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_169_1_fu_230.fmul_32ns_32ns_32_3_max_dsp_1_U452", "Parent" : "242"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_169_1_fu_230.fmul_32ns_32ns_32_3_max_dsp_1_U453", "Parent" : "242"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_169_1_fu_230.flow_control_loop_pipe_sequential_init_U", "Parent" : "242"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_187_1_fu_241", "Parent" : "240", "Child" : ["251"],
		"CDFG" : "mul_body_Pipeline_VITIS_LOOP_187_1",
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
			{"Name" : "num_res_2_03_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_1_02_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_0_01_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_187_1_fu_241.flow_control_loop_pipe_sequential_init_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_21_1_fu_249", "Parent" : "240", "Child" : ["253", "254"],
		"CDFG" : "mul_body_Pipeline_VITIS_LOOP_21_1",
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
			{"Name" : "num_res_0_01_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_1_02_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_2_03_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num12_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_21_1_fu_249.mux_32_32_1_1_U463", "Parent" : "252"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_21_1_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "252"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_84_1_fu_259", "Parent" : "240", "Child" : ["256", "257", "258"],
		"CDFG" : "mul_body_Pipeline_VITIS_LOOP_84_1",
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
			{"Name" : "agg_result_num_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num12_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_84_1_fu_259.fcmp_32ns_32ns_1_2_no_dsp_1_U470", "Parent" : "255"},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_84_1_fu_259.mux_32_32_1_1_U471", "Parent" : "255"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_84_1_fu_259.flow_control_loop_pipe_sequential_init_U", "Parent" : "255"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_92_2_fu_267", "Parent" : "240", "Child" : ["260", "261"],
		"CDFG" : "mul_body_Pipeline_VITIS_LOOP_92_2",
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
			{"Name" : "agg_result_num_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num12_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num12_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_92_2_fu_267.mux_32_32_1_1_U476", "Parent" : "259"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_92_2_fu_267.flow_control_loop_pipe_sequential_init_U", "Parent" : "259"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_104_3_fu_279", "Parent" : "240", "Child" : ["263"],
		"CDFG" : "mul_body_Pipeline_VITIS_LOOP_104_3",
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
			{"Name" : "agg_result_num_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num12_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num2_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num12_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.grp_mul_body_Pipeline_VITIS_LOOP_104_3_fu_279.flow_control_loop_pipe_sequential_init_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_2048.fcmp_32ns_32ns_1_2_no_dsp_1_U493", "Parent" : "240"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U590", "Parent" : "0"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U591", "Parent" : "0"},
	{"ID" : "267", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U592", "Parent" : "0"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U593", "Parent" : "0"},
	{"ID" : "269", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U594", "Parent" : "0"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U595", "Parent" : "0"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U596", "Parent" : "0"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_9_no_dsp_1_U597", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ban_interface {
		b_op1 {Type IO LastRead 0 FirstWrite 1}
		b_op2 {Type I LastRead 0 FirstWrite -1}
		f_op {Type I LastRead 0 FirstWrite -1}
		op {Type I LastRead 0 FirstWrite -1}}
	operator_2_s {
		p_read14 {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 1 FirstWrite -1}}
	operator_2_Pipeline_VITIS_LOOP_84_1_s {
		tmp {Type I LastRead 0 FirstWrite -1}
		tmp_29 {Type I LastRead 0 FirstWrite -1}
		tmp_30 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	operator_2_Pipeline_VITIS_LOOP_92_2_s {
		tmp_30 {Type I LastRead 0 FirstWrite -1}
		tmp_29 {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		res_num_load_717_out {Type O LastRead -1 FirstWrite 1}
		res_num_load_611_out {Type O LastRead -1 FirstWrite 1}
		res_num_load5_out {Type O LastRead -1 FirstWrite 1}}
	operator_2_Pipeline_VITIS_LOOP_104_3_s {
		res_num_load_715 {Type I LastRead 0 FirstWrite -1}
		res_num_load_69 {Type I LastRead 0 FirstWrite -1}
		res_num_load3 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_2 {Type I LastRead 0 FirstWrite -1}
		res_num_load_714_out {Type O LastRead -1 FirstWrite 1}
		res_num_load_68_out {Type O LastRead -1 FirstWrite 1}
		res_num_load2_out {Type O LastRead -1 FirstWrite 1}}
	operator_2 {
		p_read13 {Type I LastRead 1 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}}
	operator_2_Pipeline_VITIS_LOOP_84_1 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_0 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	operator_2_Pipeline_VITIS_LOOP_92_2 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_0 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_1_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num16_1_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_1_out {Type O LastRead -1 FirstWrite 1}}
	operator_2_Pipeline_VITIS_LOOP_104_3 {
		agg_result_num_3 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_3 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_10 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_4_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num16_4_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_4_out {Type O LastRead -1 FirstWrite 1}}
	operator_2_Pipeline_VITIS_LOOP_506_1 {
		sub_i1 {Type I LastRead 0 FirstWrite -1}
		res_p {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		num_res_1_02_out {Type O LastRead -1 FirstWrite 0}
		num_res_2_01_out {Type O LastRead -1 FirstWrite 0}}
	operator_2_Pipeline_VITIS_LOOP_21_1 {
		n {Type I LastRead 0 FirstWrite -1}
		num_res_1_02_reload {Type I LastRead 0 FirstWrite -1}
		num_res_2_01_reload {Type I LastRead 0 FirstWrite -1}
		agg_result_num_6_out {Type O LastRead -1 FirstWrite 0}
		agg_result_num16_6_out {Type O LastRead -1 FirstWrite 0}
		agg_result_num2_6_out {Type O LastRead -1 FirstWrite 0}}
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
		num_res_assign_load6_out {Type O LastRead -1 FirstWrite 1}}
	operator_3 {
		p_read13 {Type I LastRead 0 FirstWrite -1}
		b_p_read {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}}
	p_sum_1 {
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		diff_p {Type I LastRead 0 FirstWrite -1}}
	p_sum_1_Pipeline_VITIS_LOOP_84_1 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_6 {Type I LastRead 0 FirstWrite -1}
		tmp_287 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	p_sum_1_Pipeline_VITIS_LOOP_92_2 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_6 {Type I LastRead 0 FirstWrite -1}
		tmp_287 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_1_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num16_0_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_0_out {Type O LastRead -1 FirstWrite 1}}
	p_sum_1_Pipeline_VITIS_LOOP_104_3 {
		agg_result_num_3 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_2 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_16 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_4_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num16_3_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_3_out {Type O LastRead -1 FirstWrite 1}}
	operator_3_Pipeline_VITIS_LOOP_84_1 {
		agg_result_1_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_112_5 {Type I LastRead 0 FirstWrite -1}
		tmp_69 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	operator_3_Pipeline_VITIS_LOOP_92_2 {
		agg_result_1_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_112_5 {Type I LastRead 0 FirstWrite -1}
		tmp_69 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		agg_result_1_1_out {Type O LastRead -1 FirstWrite 1}
		agg_result_112_0_out {Type O LastRead -1 FirstWrite 1}
		agg_result_12_0_out {Type O LastRead -1 FirstWrite 1}}
	operator_3_Pipeline_VITIS_LOOP_104_3 {
		agg_result_1_3 {Type I LastRead 0 FirstWrite -1}
		agg_result_112_2 {Type I LastRead 0 FirstWrite -1}
		agg_result_12_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_8 {Type I LastRead 0 FirstWrite -1}
		agg_result_1_4_out {Type O LastRead -1 FirstWrite 1}
		agg_result_112_3_out {Type O LastRead -1 FirstWrite 1}
		agg_result_12_3_out {Type O LastRead -1 FirstWrite 1}}
	operator_1_s {
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}}
	p_sum {
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		diff_p {Type I LastRead 0 FirstWrite -1}}
	p_sum_Pipeline_VITIS_LOOP_84_1 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_6 {Type I LastRead 0 FirstWrite -1}
		tmp_317 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	p_sum_Pipeline_VITIS_LOOP_92_2 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_6 {Type I LastRead 0 FirstWrite -1}
		tmp_317 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_1_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num16_0_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_0_out {Type O LastRead -1 FirstWrite 1}}
	p_sum_Pipeline_VITIS_LOOP_104_3 {
		agg_result_num_3 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_2 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_18 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_4_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num16_3_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_3_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_410_122 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		res_20_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_374_121 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		res_19_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_410_120 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		res_18_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_374_119 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		res_17_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_68_118 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		res_12_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_68_117 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		res_11_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_374_116 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		res_16_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_410_115 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		res_15_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_410_1 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		res_14_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_374_1 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		res_13_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_68_114 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		res_10_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_68_1 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		res_9_out {Type O LastRead -1 FirstWrite 1}}
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
		num_res_assign_load6_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_84_111 {
		tmp_309 {Type I LastRead 0 FirstWrite -1}
		tmp_310 {Type I LastRead 0 FirstWrite -1}
		tmp_311 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_92_212 {
		tmp_311 {Type I LastRead 0 FirstWrite -1}
		tmp_310 {Type I LastRead 0 FirstWrite -1}
		tmp_309 {Type I LastRead 0 FirstWrite -1}
		zext_ln92_2 {Type I LastRead 0 FirstWrite -1}
		xor_ln92_2 {Type I LastRead 0 FirstWrite -1}
		out_92476_out {Type O LastRead -1 FirstWrite 1}
		out_91470_out {Type O LastRead -1 FirstWrite 1}
		out_90464_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_104_313 {
		out_92474 {Type I LastRead 0 FirstWrite -1}
		out_91468 {Type I LastRead 0 FirstWrite -1}
		out_90462 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_8 {Type I LastRead 0 FirstWrite -1}
		out_92473_out {Type O LastRead -1 FirstWrite 1}
		out_91467_out {Type O LastRead -1 FirstWrite 1}
		out_90461_out {Type O LastRead -1 FirstWrite 1}}
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
		agg_result_num2_6_out {Type O LastRead -1 FirstWrite 0}}
	ban_interface_Pipeline_VITIS_LOOP_84_18 {
		tmp_302 {Type I LastRead 0 FirstWrite -1}
		tmp_303 {Type I LastRead 0 FirstWrite -1}
		tmp_304 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_18_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_92_29 {
		tmp_304 {Type I LastRead 0 FirstWrite -1}
		tmp_303 {Type I LastRead 0 FirstWrite -1}
		tmp_302 {Type I LastRead 0 FirstWrite -1}
		zext_ln92_1 {Type I LastRead 0 FirstWrite -1}
		xor_ln92_1 {Type I LastRead 0 FirstWrite -1}
		res_num_load_2458_out {Type O LastRead -1 FirstWrite 1}
		res_num_load_1452_out {Type O LastRead -1 FirstWrite 1}
		res_num_load446_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_104_310 {
		res_num_load_2456 {Type I LastRead 0 FirstWrite -1}
		res_num_load_1450 {Type I LastRead 0 FirstWrite -1}
		res_num_load444 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_6 {Type I LastRead 0 FirstWrite -1}
		res_num_load_2455_out {Type O LastRead -1 FirstWrite 1}
		res_num_load_1449_out {Type O LastRead -1 FirstWrite 1}
		res_num_load443_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_84_1 {
		tmp_298 {Type I LastRead 0 FirstWrite -1}
		tmp_299 {Type I LastRead 0 FirstWrite -1}
		tmp_300 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_15_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_92_2 {
		tmp_300 {Type I LastRead 0 FirstWrite -1}
		tmp_299 {Type I LastRead 0 FirstWrite -1}
		tmp_298 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		out_87440_out {Type O LastRead -1 FirstWrite 1}
		out_86434_out {Type O LastRead -1 FirstWrite 1}
		out_85428_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_104_3 {
		out_87438 {Type I LastRead 0 FirstWrite -1}
		out_86432 {Type I LastRead 0 FirstWrite -1}
		out_85426 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_4 {Type I LastRead 0 FirstWrite -1}
		out_87437_out {Type O LastRead -1 FirstWrite 1}
		out_86431_out {Type O LastRead -1 FirstWrite 1}
		out_85425_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_335_17 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		b_op2_load {Type I LastRead 0 FirstWrite -1}
		res_6_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_335_16 {
		b_op2_load {Type I LastRead 0 FirstWrite -1}
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		res_5_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_335_15 {
		b_op2_load {Type I LastRead 0 FirstWrite -1}
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		res_4_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_335_1 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		b_op2_load {Type I LastRead 0 FirstWrite -1}
		res_3_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_53_14 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		b_op2_load {Type I LastRead 0 FirstWrite -1}
		res_2_out {Type O LastRead -1 FirstWrite 1}}
	ban_interface_Pipeline_VITIS_LOOP_53_1 {
		b_op1_load {Type I LastRead 0 FirstWrite -1}
		b_op2_load {Type I LastRead 0 FirstWrite -1}
		res_out {Type O LastRead -1 FirstWrite 1}}
	sqrt {
		p_read13 {Type I LastRead 0 FirstWrite -1}}
	sqrt_Pipeline_VITIS_LOOP_68_1 {
		p_read13 {Type I LastRead 0 FirstWrite -1}
		res_out {Type O LastRead -1 FirstWrite 1}}
	sqrt_Pipeline_VITIS_LOOP_444_1 {
		p_read13 {Type I LastRead 0 FirstWrite -1}
		normalizer_1 {Type I LastRead 0 FirstWrite -1}
		eps_1_1_02_out {Type O LastRead -1 FirstWrite 12}
		eps_1_2_01_out {Type O LastRead -1 FirstWrite 12}
		num_res_load_2_out {Type O LastRead -1 FirstWrite 12}
		num_res_load_1_out {Type O LastRead -1 FirstWrite 12}
		eps_2_1_08_out {Type O LastRead -1 FirstWrite 12}
		eps_2_2_07_out {Type O LastRead -1 FirstWrite 12}}
	sqrt_Pipeline_VITIS_LOOP_169_1 {
		eps_1_1_02_reload {Type I LastRead 0 FirstWrite -1}
		eps_1_2_01_reload {Type I LastRead 0 FirstWrite -1}
		eps_2_1_08_reload {Type I LastRead 0 FirstWrite -1}
		eps_2_2_07_reload {Type I LastRead 0 FirstWrite -1}
		aux {Type O LastRead -1 FirstWrite 16}}
	sqrt_Pipeline_VITIS_LOOP_187_1 {
		aux {Type I LastRead 0 FirstWrite -1}
		eps_3_0_06_out {Type O LastRead -1 FirstWrite 0}
		eps_3_1_05_out {Type O LastRead -1 FirstWrite 0}
		eps_3_2_04_out {Type O LastRead -1 FirstWrite 0}}
	sqrt_Pipeline_VITIS_LOOP_21_1 {
		tmp_21 {Type I LastRead 0 FirstWrite -1}
		tmp_22 {Type I LastRead 0 FirstWrite -1}
		tmp_23 {Type I LastRead 0 FirstWrite -1}
		agg_result_1_0_out {Type O LastRead -1 FirstWrite 0}
		agg_result_116_0_out {Type O LastRead -1 FirstWrite 0}
		agg_result_12_0_out {Type O LastRead -1 FirstWrite 0}}
	mul_body {
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}}
	mul_body_Pipeline_VITIS_LOOP_169_1 {
		p_read13 {Type I LastRead 0 FirstWrite -1}
		empty_16 {Type I LastRead 0 FirstWrite -1}
		empty_17 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		aux {Type O LastRead -1 FirstWrite 16}}
	mul_body_Pipeline_VITIS_LOOP_187_1 {
		aux {Type I LastRead 0 FirstWrite -1}
		num_res_2_03_out {Type O LastRead -1 FirstWrite 0}
		num_res_1_02_out {Type O LastRead -1 FirstWrite 0}
		num_res_0_01_out {Type O LastRead -1 FirstWrite 0}}
	mul_body_Pipeline_VITIS_LOOP_21_1 {
		num_res_0_01_reload {Type I LastRead 0 FirstWrite -1}
		num_res_1_02_reload {Type I LastRead 0 FirstWrite -1}
		num_res_2_03_reload {Type I LastRead 0 FirstWrite -1}
		agg_result_num_0_out {Type O LastRead -1 FirstWrite 0}
		agg_result_num12_0_out {Type O LastRead -1 FirstWrite 0}
		agg_result_num2_0_out {Type O LastRead -1 FirstWrite 0}}
	mul_body_Pipeline_VITIS_LOOP_84_1 {
		agg_result_num_0_reload {Type I LastRead 0 FirstWrite -1}
		agg_result_num12_0_reload {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_0_reload {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	mul_body_Pipeline_VITIS_LOOP_92_2 {
		agg_result_num_0_reload {Type I LastRead 0 FirstWrite -1}
		agg_result_num12_0_reload {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_0_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_2_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num12_2_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_2_out {Type O LastRead -1 FirstWrite 1}}
	mul_body_Pipeline_VITIS_LOOP_104_3 {
		agg_result_num_4 {Type I LastRead 0 FirstWrite -1}
		agg_result_num12_4 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_14 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_5_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num12_5_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_5_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	b_op1 { ap_ovld {  { b_op1_i in_data 0 128 }  { b_op1_o out_data 1 128 }  { b_op1_o_ap_vld out_vld 1 1 } } }
	b_op2 { ap_none {  { b_op2 in_data 0 128 } } }
	f_op { ap_none {  { f_op in_data 0 32 } } }
	op { ap_none {  { op in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
