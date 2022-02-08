set moduleName sqrt
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
set C_modelName {sqrt}
set C_modelType { int 128 }
set C_modelArgList {
	{ p_read13 int 128 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read13 sc_in sc_lv 128 signal 0 } 
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
	{ grp_fu_2054_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2054_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2054_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2054_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2059_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2059_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2059_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2059_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_7441_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7441_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7441_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_7441_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_7441_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_7457_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7457_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_7457_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_7457_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
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
 	{ "name": "grp_fu_2054_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2054_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2054_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2054_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2054_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2054_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2054_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2054_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2059_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2059_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2059_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2059_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2059_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2059_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2059_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2059_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_7441_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7441_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_7441_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7441_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_7441_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_7441_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_7441_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_7441_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_7441_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_7441_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_7457_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7457_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_7457_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7457_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_7457_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_7457_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_7457_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_7457_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "6", "11", "13", "16", "17", "18"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aux_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_Pipeline_VITIS_LOOP_68_1_fu_164", "Parent" : "0", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_Pipeline_VITIS_LOOP_68_1_fu_164.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_Pipeline_VITIS_LOOP_444_1_fu_170", "Parent" : "0", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_Pipeline_VITIS_LOOP_444_1_fu_170.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_Pipeline_VITIS_LOOP_169_1_fu_182", "Parent" : "0", "Child" : ["7", "8", "9", "10"],
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_Pipeline_VITIS_LOOP_169_1_fu_182.mux_32_32_1_1_U354", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_Pipeline_VITIS_LOOP_169_1_fu_182.mux_32_32_1_1_U355", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_Pipeline_VITIS_LOOP_169_1_fu_182.mux_32_32_1_1_U356", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_Pipeline_VITIS_LOOP_169_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_Pipeline_VITIS_LOOP_187_1_fu_191", "Parent" : "0", "Child" : ["12"],
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_Pipeline_VITIS_LOOP_187_1_fu_191.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_Pipeline_VITIS_LOOP_21_1_fu_199", "Parent" : "0", "Child" : ["14", "15"],
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_Pipeline_VITIS_LOOP_21_1_fu_199.mux_32_32_1_1_U366", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_Pipeline_VITIS_LOOP_21_1_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U378", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U379", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsqrt_32ns_32ns_32_8_no_dsp_1_U380", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		agg_result_12_0_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "75"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "75"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read13 { ap_none {  { p_read13 in_data 0 128 } } }
}
