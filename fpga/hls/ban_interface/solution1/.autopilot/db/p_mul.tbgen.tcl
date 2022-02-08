set moduleName p_mul
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
set C_modelName {_mul}
set C_modelType { int 96 }
set C_modelArgList {
	{ num_a_0_read float 32 regular  }
	{ num_a_1_read float 32 regular  }
	{ num_a_2_read float 32 regular  }
	{ num_b_0_read float 32 regular  }
	{ num_b_1_read float 32 regular  }
	{ num_b_2_read float 32 regular  }
	{ num_res_0_read float 32 regular  }
	{ num_res_1_read float 32 regular  }
	{ num_res_2_read float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_a_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_a_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_a_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_b_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_b_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_b_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_res_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_res_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_res_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 96} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_a_0_read sc_in sc_lv 32 signal 0 } 
	{ num_a_1_read sc_in sc_lv 32 signal 1 } 
	{ num_a_2_read sc_in sc_lv 32 signal 2 } 
	{ num_b_0_read sc_in sc_lv 32 signal 3 } 
	{ num_b_1_read sc_in sc_lv 32 signal 4 } 
	{ num_b_2_read sc_in sc_lv 32 signal 5 } 
	{ num_res_0_read sc_in sc_lv 32 signal 6 } 
	{ num_res_1_read sc_in sc_lv 32 signal 7 } 
	{ num_res_2_read sc_in sc_lv 32 signal 8 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_a_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_a_0_read", "role": "default" }} , 
 	{ "name": "num_a_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_a_1_read", "role": "default" }} , 
 	{ "name": "num_a_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_a_2_read", "role": "default" }} , 
 	{ "name": "num_b_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_b_0_read", "role": "default" }} , 
 	{ "name": "num_b_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_b_1_read", "role": "default" }} , 
 	{ "name": "num_b_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_b_2_read", "role": "default" }} , 
 	{ "name": "num_res_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_res_0_read", "role": "default" }} , 
 	{ "name": "num_res_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_res_1_read", "role": "default" }} , 
 	{ "name": "num_res_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_res_2_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "13"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aux_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fadd_32ns_32ns_32_4_full_dsp_1_U52", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fadd_32ns_32ns_32_4_full_dsp_1_U53", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fadd_32ns_32ns_32_4_full_dsp_1_U54", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fmul_32ns_32ns_32_3_max_dsp_1_U55", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fmul_32ns_32ns_32_3_max_dsp_1_U56", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.fmul_32ns_32ns_32_3_max_dsp_1_U57", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.mux_32_32_1_1_U58", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.mux_32_32_1_1_U59", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.mux_32_32_1_1_U60", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_Pipeline_VITIS_LOOP_169_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_Pipeline_VITIS_LOOP_187_1_fu_128", "Parent" : "0", "Child" : ["14"],
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_Pipeline_VITIS_LOOP_187_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"}]}


set ArgLastReadFirstWriteLatency {
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
		num_res6_06_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "31", "Max" : "31"}
	, {"Name" : "Interval", "Min" : "31", "Max" : "31"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	num_a_0_read { ap_none {  { num_a_0_read in_data 0 32 } } }
	num_a_1_read { ap_none {  { num_a_1_read in_data 0 32 } } }
	num_a_2_read { ap_none {  { num_a_2_read in_data 0 32 } } }
	num_b_0_read { ap_none {  { num_b_0_read in_data 0 32 } } }
	num_b_1_read { ap_none {  { num_b_1_read in_data 0 32 } } }
	num_b_2_read { ap_none {  { num_b_2_read in_data 0 32 } } }
	num_res_0_read { ap_none {  { num_res_0_read in_data 0 32 } } }
	num_res_1_read { ap_none {  { num_res_1_read in_data 0 32 } } }
	num_res_2_read { ap_none {  { num_res_2_read in_data 0 32 } } }
}
