set moduleName operator_1_2
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
set C_modelName {operator/.1.2}
set C_modelType { int 128 }
set C_modelArgList {
	{ this_p_read int 32 regular  }
	{ this_1 float 32 regular {array 36 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ this_1_offset int 4 regular  }
	{ n float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "this_p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_1_offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_p_read sc_in sc_lv 32 signal 0 } 
	{ this_1_address0 sc_out sc_lv 6 signal 1 } 
	{ this_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ this_1_q0 sc_in sc_lv 32 signal 1 } 
	{ this_1_address1 sc_out sc_lv 6 signal 1 } 
	{ this_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ this_1_q1 sc_in sc_lv 32 signal 1 } 
	{ this_1_offset sc_in sc_lv 4 signal 2 } 
	{ n sc_in sc_lv 32 signal 3 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
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
	{ grp_fu_4235_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4235_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4235_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_4235_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_4235_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "this_p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_p_read", "role": "default" }} , 
 	{ "name": "this_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "this_1", "role": "address0" }} , 
 	{ "name": "this_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_1", "role": "ce0" }} , 
 	{ "name": "this_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_1", "role": "q0" }} , 
 	{ "name": "this_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "this_1", "role": "address1" }} , 
 	{ "name": "this_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_1", "role": "ce1" }} , 
 	{ "name": "this_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_1", "role": "q1" }} , 
 	{ "name": "this_1_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "this_1_offset", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
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
 	{ "name": "grp_fu_12733_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12733_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4235_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4235_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_4235_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4235_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4235_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4235_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "7"],
		"CDFG" : "operator_1_2",
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
			{"Name" : "this_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "this_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_Pipeline_VITIS_LOOP_84_1_fu_251", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "operator_1_2_Pipeline_VITIS_LOOP_84_1",
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
			{"Name" : "tmp_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_Pipeline_VITIS_LOOP_84_1_fu_251.mux_32_32_1_1_U368", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_Pipeline_VITIS_LOOP_84_1_fu_251.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_Pipeline_VITIS_LOOP_92_2_fu_259", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "operator_1_2_Pipeline_VITIS_LOOP_92_2",
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
			{"Name" : "tmp_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load_217_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load_111_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_Pipeline_VITIS_LOOP_92_2_fu_259.mux_32_32_1_1_U373", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_Pipeline_VITIS_LOOP_92_2_fu_259.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_Pipeline_VITIS_LOOP_104_3_fu_271", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "operator_1_2_Pipeline_VITIS_LOOP_104_3",
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
			{"Name" : "res_num_load_215", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load_214_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_Pipeline_VITIS_LOOP_104_3_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	operator_1_2 {
		this_p_read {Type I LastRead 0 FirstWrite -1}
		this_1 {Type I LastRead 4 FirstWrite -1}
		this_1_offset {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}}
	operator_1_2_Pipeline_VITIS_LOOP_84_1 {
		tmp {Type I LastRead 0 FirstWrite -1}
		tmp_43 {Type I LastRead 0 FirstWrite -1}
		tmp_44 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	operator_1_2_Pipeline_VITIS_LOOP_92_2 {
		tmp_44 {Type I LastRead 0 FirstWrite -1}
		tmp_43 {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		res_num_load_217_out {Type O LastRead -1 FirstWrite 1}
		res_num_load_111_out {Type O LastRead -1 FirstWrite 1}
		res_num_load5_out {Type O LastRead -1 FirstWrite 1}}
	operator_1_2_Pipeline_VITIS_LOOP_104_3 {
		res_num_load_215 {Type I LastRead 0 FirstWrite -1}
		res_num_load_19 {Type I LastRead 0 FirstWrite -1}
		res_num_load3 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_4 {Type I LastRead 0 FirstWrite -1}
		res_num_load_214_out {Type O LastRead -1 FirstWrite 1}
		res_num_load_18_out {Type O LastRead -1 FirstWrite 1}
		res_num_load2_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	this_p_read { ap_none {  { this_p_read in_data 0 32 } } }
	this_1 { ap_memory {  { this_1_address0 mem_address 1 6 }  { this_1_ce0 mem_ce 1 1 }  { this_1_q0 in_data 0 32 }  { this_1_address1 MemPortADDR2 1 6 }  { this_1_ce1 MemPortCE2 1 1 }  { this_1_q1 MemPortDOUT2 0 32 } } }
	this_1_offset { ap_none {  { this_1_offset in_data 0 4 } } }
	n { ap_none {  { n in_data 0 32 } } }
}
