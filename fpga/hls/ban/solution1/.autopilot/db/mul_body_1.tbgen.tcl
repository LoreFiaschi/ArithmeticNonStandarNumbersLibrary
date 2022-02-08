set moduleName mul_body_1
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
set C_modelName {mul_body.1}
set C_modelType { int 128 }
set C_modelArgList {
	{ p_read3 float 32 regular  }
	{ p_read5 float 32 regular  }
	{ p_read6 float 32 regular  }
	{ p_read7 float 32 regular  }
	{ p_read24 float 32 regular  }
	{ p_read35 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read35", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 53
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read3 sc_in sc_lv 32 signal 0 } 
	{ p_read5 sc_in sc_lv 32 signal 1 } 
	{ p_read6 sc_in sc_lv 32 signal 2 } 
	{ p_read7 sc_in sc_lv 32 signal 3 } 
	{ p_read24 sc_in sc_lv 32 signal 4 } 
	{ p_read35 sc_in sc_lv 32 signal 5 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12737_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12737_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12737_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_12737_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_12737_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12725_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12725_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12725_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_12725_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12725_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4183_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4183_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4183_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4183_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4183_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4190_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4190_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4190_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_4190_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4190_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4198_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4198_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4198_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4198_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4204_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4204_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4204_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4204_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12729_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12729_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12729_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12729_p_ce sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read24", "role": "default" }} , 
 	{ "name": "p_read35", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read35", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "grp_fu_12737_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12737_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12737_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12737_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12737_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_12737_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12737_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12737_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12737_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12737_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12725_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12725_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12725_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12725_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12725_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_12725_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12725_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12725_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12725_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12725_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4183_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4183_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4183_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4183_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4183_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4183_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4183_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4183_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4183_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4183_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4190_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4190_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4190_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4190_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4190_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_4190_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4190_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4190_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4190_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4190_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4198_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4198_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4198_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4198_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4198_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4198_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4198_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4198_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4204_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4204_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4204_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4204_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4204_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4204_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4204_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4204_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12729_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12729_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12729_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12729_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12729_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12729_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12729_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12729_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12733_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12733_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12733_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12733_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12733_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_12733_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12733_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12733_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12733_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12733_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "7", "9", "12", "15", "18"],
		"CDFG" : "mul_body_1",
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
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aux_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_169_1_fu_248", "Parent" : "0", "Child" : ["3", "4", "5", "6"],
		"CDFG" : "mul_body_1_Pipeline_VITIS_LOOP_169_1",
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
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "aux", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_169_1_fu_248.mux_32_32_1_1_U654", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_169_1_fu_248.mux_32_32_1_1_U655", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_169_1_fu_248.mux_32_32_1_1_U656", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_169_1_fu_248.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_187_1_fu_266", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "mul_body_1_Pipeline_VITIS_LOOP_187_1",
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_187_1_fu_266.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_21_1_fu_274", "Parent" : "0", "Child" : ["10", "11"],
		"CDFG" : "mul_body_1_Pipeline_VITIS_LOOP_21_1",
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_21_1_fu_274.mux_32_32_1_1_U668", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_21_1_fu_274.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_84_1_fu_284", "Parent" : "0", "Child" : ["13", "14"],
		"CDFG" : "mul_body_1_Pipeline_VITIS_LOOP_84_1",
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
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_84_1_fu_284.mux_32_32_1_1_U676", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_84_1_fu_284.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_92_2_fu_292", "Parent" : "0", "Child" : ["16", "17"],
		"CDFG" : "mul_body_1_Pipeline_VITIS_LOOP_92_2",
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
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_92_2_fu_292.mux_32_32_1_1_U681", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_92_2_fu_292.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_104_3_fu_304", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "mul_body_1_Pipeline_VITIS_LOOP_104_3",
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
			{"Name" : "zext_ln104_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num12_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_Pipeline_VITIS_LOOP_104_3_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"}]}


set ArgLastReadFirstWriteLatency {
	mul_body_1 {
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}}
	mul_body_1_Pipeline_VITIS_LOOP_169_1 {
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		aux {Type O LastRead -1 FirstWrite 16}}
	mul_body_1_Pipeline_VITIS_LOOP_187_1 {
		aux {Type I LastRead 0 FirstWrite -1}
		num_res_2_03_out {Type O LastRead -1 FirstWrite 0}
		num_res_1_02_out {Type O LastRead -1 FirstWrite 0}
		num_res_0_01_out {Type O LastRead -1 FirstWrite 0}}
	mul_body_1_Pipeline_VITIS_LOOP_21_1 {
		num_res_0_01_reload {Type I LastRead 0 FirstWrite -1}
		num_res_1_02_reload {Type I LastRead 0 FirstWrite -1}
		num_res_2_03_reload {Type I LastRead 0 FirstWrite -1}
		agg_result_num_0_out {Type O LastRead -1 FirstWrite 0}
		agg_result_num12_0_out {Type O LastRead -1 FirstWrite 0}
		agg_result_num2_0_out {Type O LastRead -1 FirstWrite 0}}
	mul_body_1_Pipeline_VITIS_LOOP_84_1 {
		agg_result_num_0_reload {Type I LastRead 0 FirstWrite -1}
		agg_result_num12_0_reload {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_0_reload {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	mul_body_1_Pipeline_VITIS_LOOP_92_2 {
		agg_result_num_0_reload {Type I LastRead 0 FirstWrite -1}
		agg_result_num12_0_reload {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_0_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_2_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num12_2_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_2_out {Type O LastRead -1 FirstWrite 1}}
	mul_body_1_Pipeline_VITIS_LOOP_104_3 {
		agg_result_num_4 {Type I LastRead 0 FirstWrite -1}
		agg_result_num12_4 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_12 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_5_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num12_5_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_5_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read3 { ap_none {  { p_read3 in_data 0 32 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 32 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 32 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 32 } } }
	p_read24 { ap_none {  { p_read24 in_data 0 32 } } }
	p_read35 { ap_none {  { p_read35 in_data 0 32 } } }
}
