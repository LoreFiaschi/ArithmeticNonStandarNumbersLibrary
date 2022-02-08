set moduleName operator_2_s
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
set C_modelName {operator/.2}
set C_modelType { int 128 }
set C_modelArgList {
	{ p_read float 32 regular  }
	{ p_read4 float 32 regular  }
	{ p_read5 float 32 regular  }
	{ p_read6 float 32 regular  }
	{ p_read47 float 32 regular  }
	{ p_read58 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read47", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read58", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 46
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
	{ p_read6 sc_in sc_lv 32 signal 3 } 
	{ p_read47 sc_in sc_lv 32 signal 4 } 
	{ p_read58 sc_in sc_lv 32 signal 5 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4219_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4219_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4219_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4219_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12737_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12737_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12737_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_12737_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_12737_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4228_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4228_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4228_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_4228_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_4228_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din2 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din3 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din4 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din5 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din6 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din7 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din8 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_din9 sc_out sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_dout0_0 sc_in sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_dout0_1 sc_in sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_dout0_2 sc_in sc_lv 32 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_p_mul_161_fu_3810_p_idle sc_in sc_logic 1 signal -1 } 
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
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read47", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read47", "role": "default" }} , 
 	{ "name": "p_read58", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read58", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "grp_fu_4219_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4219_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4219_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4219_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4219_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4219_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4219_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4219_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12737_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12737_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12737_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12737_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12737_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_12737_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12737_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12737_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12737_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12737_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4228_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4228_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4228_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4228_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4228_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_4228_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4228_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4228_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4228_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4228_p_ce", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din1", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din2", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din3", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din4", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din5", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din6", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din7", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din8", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_din9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_din9", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_dout0_0", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_dout0_1", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_dout0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_dout0_2", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_start", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_ready", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_done", "role": "default" }} , 
 	{ "name": "grp_p_mul_161_fu_3810_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_mul_161_fu_3810_p_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "6", "9", "11", "12", "13", "14", "15"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_Pipeline_VITIS_LOOP_215_1_fu_236", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "operator_2_Pipeline_VITIS_LOOP_215_1",
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
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "den_norm_1_020_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den_norm_2_019_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den_norm_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den_norm_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_215_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_Pipeline_VITIS_LOOP_215_1_fu_236.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_Pipeline_VITIS_LOOP_84_1_s_fu_271", "Parent" : "0", "Child" : ["4", "5"],
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
			{"Name" : "tmp_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_Pipeline_VITIS_LOOP_84_1_s_fu_271.mux_32_32_1_1_U874", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_Pipeline_VITIS_LOOP_84_1_s_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_Pipeline_VITIS_LOOP_92_2_s_fu_279", "Parent" : "0", "Child" : ["7", "8"],
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
			{"Name" : "tmp_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_1_2_021_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_1_1_015_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_1_0_09_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_Pipeline_VITIS_LOOP_92_2_s_fu_279.mux_32_32_1_1_U879", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_Pipeline_VITIS_LOOP_92_2_s_fu_279.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_Pipeline_VITIS_LOOP_104_3_s_fu_291", "Parent" : "0", "Child" : ["10"],
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
			{"Name" : "agg_result_1_2_019", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_1_1_013", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_1_0_07", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_1_2_018_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_1_1_012_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_1_0_06_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_Pipeline_VITIS_LOOP_104_3_s_fu_291.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U896", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U897", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U898", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_9_no_dsp_1_U900", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_9_no_dsp_1_U901", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	operator_2_s {
		p_read {Type I LastRead 2 FirstWrite -1}
		p_read4 {Type I LastRead 2 FirstWrite -1}
		p_read5 {Type I LastRead 2 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}}
	operator_2_Pipeline_VITIS_LOOP_215_1 {
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		den_norm_1_020_out {Type O LastRead -1 FirstWrite 9}
		den_norm_2_019_out {Type O LastRead -1 FirstWrite 9}
		den_norm_28_out {Type O LastRead -1 FirstWrite 9}
		den_norm_17_out {Type O LastRead -1 FirstWrite 9}}
	operator_2_Pipeline_VITIS_LOOP_84_1_s {
		tmp_37 {Type I LastRead 0 FirstWrite -1}
		tmp_38 {Type I LastRead 0 FirstWrite -1}
		tmp_39 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	operator_2_Pipeline_VITIS_LOOP_92_2_s {
		tmp_39 {Type I LastRead 0 FirstWrite -1}
		tmp_38 {Type I LastRead 0 FirstWrite -1}
		tmp_37 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		agg_result_1_2_021_out {Type O LastRead -1 FirstWrite 1}
		agg_result_1_1_015_out {Type O LastRead -1 FirstWrite 1}
		agg_result_1_0_09_out {Type O LastRead -1 FirstWrite 1}}
	operator_2_Pipeline_VITIS_LOOP_104_3_s {
		agg_result_1_2_019 {Type I LastRead 0 FirstWrite -1}
		agg_result_1_1_013 {Type I LastRead 0 FirstWrite -1}
		agg_result_1_0_07 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_2 {Type I LastRead 0 FirstWrite -1}
		agg_result_1_2_018_out {Type O LastRead -1 FirstWrite 1}
		agg_result_1_1_012_out {Type O LastRead -1 FirstWrite 1}
		agg_result_1_0_06_out {Type O LastRead -1 FirstWrite 1}}}

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
	p_read6 { ap_none {  { p_read6 in_data 0 32 } } }
	p_read47 { ap_none {  { p_read47 in_data 0 32 } } }
	p_read58 { ap_none {  { p_read58 in_data 0 32 } } }
}
