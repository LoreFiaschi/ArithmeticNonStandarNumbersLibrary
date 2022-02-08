set moduleName operator_1_Pipeline_VITIS_LOOP_169_123
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {operator/.1_Pipeline_VITIS_LOOP_169_123}
set C_modelType { void 0 }
set C_modelArgList {
	{ eps_tmp_0_04_reload float 32 regular  }
	{ eps_tmp_1_05_reload float 32 regular  }
	{ eps_tmp_2_01_reload float 32 regular  }
	{ b_norm_load_reload float 32 regular  }
	{ b_norm_load_1_reload float 32 regular  }
	{ aux float 32 regular {array 5 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "eps_tmp_0_04_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "eps_tmp_1_05_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "eps_tmp_2_01_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_norm_load_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_norm_load_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aux", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ eps_tmp_0_04_reload sc_in sc_lv 32 signal 0 } 
	{ eps_tmp_1_05_reload sc_in sc_lv 32 signal 1 } 
	{ eps_tmp_2_01_reload sc_in sc_lv 32 signal 2 } 
	{ b_norm_load_reload sc_in sc_lv 32 signal 3 } 
	{ b_norm_load_1_reload sc_in sc_lv 32 signal 4 } 
	{ aux_address0 sc_out sc_lv 3 signal 5 } 
	{ aux_ce0 sc_out sc_logic 1 signal 5 } 
	{ aux_we0 sc_out sc_logic 1 signal 5 } 
	{ aux_d0 sc_out sc_lv 32 signal 5 } 
	{ grp_fu_1028_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1028_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1028_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1028_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1028_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1032_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1032_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1032_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1032_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1032_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1036_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1036_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1036_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1036_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1036_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1024_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1024_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1024_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1024_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1040_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1040_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1040_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1040_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1044_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1044_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1044_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1044_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "eps_tmp_0_04_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "eps_tmp_0_04_reload", "role": "default" }} , 
 	{ "name": "eps_tmp_1_05_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "eps_tmp_1_05_reload", "role": "default" }} , 
 	{ "name": "eps_tmp_2_01_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "eps_tmp_2_01_reload", "role": "default" }} , 
 	{ "name": "b_norm_load_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_norm_load_reload", "role": "default" }} , 
 	{ "name": "b_norm_load_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_norm_load_1_reload", "role": "default" }} , 
 	{ "name": "aux_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aux", "role": "address0" }} , 
 	{ "name": "aux_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aux", "role": "ce0" }} , 
 	{ "name": "aux_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aux", "role": "we0" }} , 
 	{ "name": "aux_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aux", "role": "d0" }} , 
 	{ "name": "grp_fu_1028_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1028_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1028_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1028_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1028_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1028_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1028_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1028_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1028_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1028_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1032_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1032_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1032_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1032_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1032_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1032_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1032_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1032_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1032_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1032_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1036_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1036_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1036_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1036_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1036_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1036_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1036_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1036_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1036_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1036_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1024_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1024_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1024_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1024_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1024_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1024_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1024_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1024_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1040_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1040_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1040_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1040_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1040_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1040_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1040_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1040_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1044_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1044_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1044_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1044_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1044_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1044_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1044_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1044_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U811", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U812", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U813", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	operator_1_Pipeline_VITIS_LOOP_169_123 {
		eps_tmp_0_04_reload {Type I LastRead 0 FirstWrite -1}
		eps_tmp_1_05_reload {Type I LastRead 0 FirstWrite -1}
		eps_tmp_2_01_reload {Type I LastRead 0 FirstWrite -1}
		b_norm_load_reload {Type I LastRead 0 FirstWrite -1}
		b_norm_load_1_reload {Type I LastRead 0 FirstWrite -1}
		aux {Type O LastRead -1 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "22", "Max" : "22"}
	, {"Name" : "Interval", "Min" : "22", "Max" : "22"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	eps_tmp_0_04_reload { ap_none {  { eps_tmp_0_04_reload in_data 0 32 } } }
	eps_tmp_1_05_reload { ap_none {  { eps_tmp_1_05_reload in_data 0 32 } } }
	eps_tmp_2_01_reload { ap_none {  { eps_tmp_2_01_reload in_data 0 32 } } }
	b_norm_load_reload { ap_none {  { b_norm_load_reload in_data 0 32 } } }
	b_norm_load_1_reload { ap_none {  { b_norm_load_1_reload in_data 0 32 } } }
	aux { ap_memory {  { aux_address0 mem_address 1 3 }  { aux_ce0 mem_ce 1 1 }  { aux_we0 mem_we 1 1 }  { aux_d0 mem_din 1 32 } } }
}
