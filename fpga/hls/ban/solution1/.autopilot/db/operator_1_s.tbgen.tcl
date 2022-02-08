set moduleName operator_1_s
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
	{ p_read float 32 regular  }
	{ p_read4 float 32 regular  }
	{ p_read5 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 32 signal 0 } 
	{ p_read4 sc_in sc_lv 32 signal 1 } 
	{ p_read5 sc_in sc_lv 32 signal 2 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4194_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4194_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4194_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_4194_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4194_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4235_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4235_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4235_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_4235_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_4235_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4211_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4211_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4211_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4211_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4215_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4215_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4215_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4215_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12733_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12733_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12733_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_12733_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_12733_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "grp_fu_4194_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4194_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4194_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4194_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4194_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_4194_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4194_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4194_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4194_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4194_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4235_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4235_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_4235_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4235_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4235_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4211_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4211_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4211_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4211_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4211_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4211_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4211_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4211_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4215_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4215_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4215_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4215_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4215_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4215_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4215_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4215_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12733_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12733_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12733_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12733_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12733_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_12733_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12733_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12733_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12733_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12733_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "8", "11", "16", "18", "23", "25", "28", "31", "33", "34", "35", "36", "37", "38", "39"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aux_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aux_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_21_1_s_fu_304", "Parent" : "0", "Child" : ["4", "5"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_21_1_s",
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
			{"Name" : "this_num_load_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_num_load_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_21_1_s_fu_304.mux_32_32_1_1_U762", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_21_1_s_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_791_1_fu_310", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_791_1",
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
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_norm_2_03_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_norm_1_02_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_norm_load_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_norm_load_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_791_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_791_1_fu_310.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_34_1_fu_324", "Parent" : "0", "Child" : ["9", "10"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_34_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b_norm_1_02_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_norm_2_03_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "eps_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eps_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eps_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eps_load_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eps_load_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eps_load_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_34_1_fu_324.mux_32_32_1_1_U774", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_34_1_fu_324.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_169_1_fu_336", "Parent" : "0", "Child" : ["12", "13", "14", "15"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_169_1",
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
			{"Name" : "eps_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "eps_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "eps_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_norm_load_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_norm_load_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "aux_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_169_1_fu_336.mux_32_32_1_1_U789", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_169_1_fu_336.mux_32_32_1_1_U790", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_169_1_fu_336.mux_32_32_1_1_U791", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_169_1_fu_336.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_187_1_fu_346", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_187_1",
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
			{"Name" : "aux_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "eps_tmp_1_05_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eps_tmp_0_04_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eps_tmp_2_01_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_assign_load_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_assign_load_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_assign_load_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_187_1_fu_346.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_169_123_fu_357", "Parent" : "0", "Child" : ["19", "20", "21", "22"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_169_123",
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
			{"Name" : "eps_tmp_0_04_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "eps_tmp_1_05_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "eps_tmp_2_01_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_norm_load_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_norm_load_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "aux", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_169_123_fu_357.mux_32_32_1_1_U811", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_169_123_fu_357.mux_32_32_1_1_U812", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_169_123_fu_357.mux_32_32_1_1_U813", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_169_123_fu_357.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_187_124_fu_367", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_187_124",
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
			{"Name" : "eps_load_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "eps_load_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "eps_load_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "aux", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "eps_load_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eps_load_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "eps_load_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_187_124_fu_367.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_84_1_s_fu_378", "Parent" : "0", "Child" : ["26", "27"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_84_1_s",
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
			{"Name" : "tmp_83", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_84", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_85", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_84_1_s_fu_378.mux_32_32_1_1_U828", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_84_1_s_fu_378.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_92_2_s_fu_386", "Parent" : "0", "Child" : ["29", "30"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_92_2_s",
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
			{"Name" : "tmp_85", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_84", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_83", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_1_2_043_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_1_1_037_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_1_0_031_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_92_2_s_fu_386.mux_32_32_1_1_U833", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_92_2_s_fu_386.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_104_3_s_fu_398", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_104_3_s",
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
			{"Name" : "agg_result_1_2_041", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_1_1_035", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_1_0_029", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_1_2_040_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_1_1_034_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_1_0_028_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_Pipeline_VITIS_LOOP_104_3_s_fu_398.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U850", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U851", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U855", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U857", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U858", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U859", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U860", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	operator_1_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}}
	operator_1_Pipeline_VITIS_LOOP_21_1_s {
		this_num_load_1_out {Type O LastRead -1 FirstWrite 0}
		this_num_load_out {Type O LastRead -1 FirstWrite 0}}
	operator_1_Pipeline_VITIS_LOOP_791_1 {
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		b_norm_2_03_out {Type O LastRead -1 FirstWrite 9}
		b_norm_1_02_out {Type O LastRead -1 FirstWrite 9}
		b_norm_load_1_out {Type O LastRead -1 FirstWrite 9}
		b_norm_load_out {Type O LastRead -1 FirstWrite 9}}
	operator_1_Pipeline_VITIS_LOOP_34_1 {
		b_norm_1_02_reload {Type I LastRead 0 FirstWrite -1}
		b_norm_2_03_reload {Type I LastRead 0 FirstWrite -1}
		eps_2_0_out {Type O LastRead -1 FirstWrite 2}
		eps_1_0_out {Type O LastRead -1 FirstWrite 2}
		eps_0_0_out {Type O LastRead -1 FirstWrite 2}
		eps_load_2_out {Type O LastRead -1 FirstWrite 2}
		eps_load_1_out {Type O LastRead -1 FirstWrite 2}
		eps_load_out {Type O LastRead -1 FirstWrite 2}}
	operator_1_Pipeline_VITIS_LOOP_169_1 {
		eps_0_0_reload {Type I LastRead 0 FirstWrite -1}
		eps_1_0_reload {Type I LastRead 0 FirstWrite -1}
		eps_2_0_reload {Type I LastRead 0 FirstWrite -1}
		b_norm_load_reload {Type I LastRead 0 FirstWrite -1}
		b_norm_load_1_reload {Type I LastRead 0 FirstWrite -1}
		aux_1 {Type O LastRead -1 FirstWrite 16}}
	operator_1_Pipeline_VITIS_LOOP_187_1 {
		aux_1 {Type I LastRead 0 FirstWrite -1}
		eps_tmp_1_05_out {Type O LastRead -1 FirstWrite 0}
		eps_tmp_0_04_out {Type O LastRead -1 FirstWrite 0}
		eps_tmp_2_01_out {Type O LastRead -1 FirstWrite 0}
		num_res_assign_load_4_out {Type O LastRead -1 FirstWrite 0}
		num_res_assign_load_3_out {Type O LastRead -1 FirstWrite 0}
		num_res_assign_load_out {Type O LastRead -1 FirstWrite 0}}
	operator_1_Pipeline_VITIS_LOOP_169_123 {
		eps_tmp_0_04_reload {Type I LastRead 0 FirstWrite -1}
		eps_tmp_1_05_reload {Type I LastRead 0 FirstWrite -1}
		eps_tmp_2_01_reload {Type I LastRead 0 FirstWrite -1}
		b_norm_load_reload {Type I LastRead 0 FirstWrite -1}
		b_norm_load_1_reload {Type I LastRead 0 FirstWrite -1}
		aux {Type O LastRead -1 FirstWrite 16}}
	operator_1_Pipeline_VITIS_LOOP_187_124 {
		eps_load_2_reload {Type I LastRead 0 FirstWrite -1}
		eps_load_1_reload {Type I LastRead 0 FirstWrite -1}
		eps_load_reload {Type I LastRead 0 FirstWrite -1}
		aux {Type I LastRead 0 FirstWrite -1}
		eps_load_5_out {Type O LastRead -1 FirstWrite 0}
		eps_load_4_out {Type O LastRead -1 FirstWrite 0}
		eps_load_3_out {Type O LastRead -1 FirstWrite 0}}
	operator_1_Pipeline_VITIS_LOOP_84_1_s {
		tmp_83 {Type I LastRead 0 FirstWrite -1}
		tmp_84 {Type I LastRead 0 FirstWrite -1}
		tmp_85 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	operator_1_Pipeline_VITIS_LOOP_92_2_s {
		tmp_85 {Type I LastRead 0 FirstWrite -1}
		tmp_84 {Type I LastRead 0 FirstWrite -1}
		tmp_83 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		agg_result_1_2_043_out {Type O LastRead -1 FirstWrite 1}
		agg_result_1_1_037_out {Type O LastRead -1 FirstWrite 1}
		agg_result_1_0_031_out {Type O LastRead -1 FirstWrite 1}}
	operator_1_Pipeline_VITIS_LOOP_104_3_s {
		agg_result_1_2_041 {Type I LastRead 0 FirstWrite -1}
		agg_result_1_1_035 {Type I LastRead 0 FirstWrite -1}
		agg_result_1_0_029 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_2 {Type I LastRead 0 FirstWrite -1}
		agg_result_1_2_040_out {Type O LastRead -1 FirstWrite 1}
		agg_result_1_1_034_out {Type O LastRead -1 FirstWrite 1}
		agg_result_1_0_028_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 32 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 32 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 32 } } }
}
