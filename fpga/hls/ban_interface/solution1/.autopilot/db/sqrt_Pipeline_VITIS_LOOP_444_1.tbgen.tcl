set moduleName sqrt_Pipeline_VITIS_LOOP_444_1
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
set C_modelName {sqrt_Pipeline_VITIS_LOOP_444_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read13 int 128 regular  }
	{ normalizer_1 float 32 regular  }
	{ eps_1_1_02_out float 32 regular {pointer 1}  }
	{ eps_1_2_01_out float 32 regular {pointer 1}  }
	{ num_res_load_2_out float 32 regular {pointer 1}  }
	{ num_res_load_1_out float 32 regular {pointer 1}  }
	{ eps_2_1_08_out float 32 regular {pointer 1}  }
	{ eps_2_2_07_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "normalizer_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "eps_1_1_02_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "eps_1_2_01_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_res_load_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_res_load_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "eps_2_1_08_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "eps_2_2_07_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read13 sc_in sc_lv 128 signal 0 } 
	{ normalizer_1 sc_in sc_lv 32 signal 1 } 
	{ eps_1_1_02_out sc_out sc_lv 32 signal 2 } 
	{ eps_1_1_02_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ eps_1_2_01_out sc_out sc_lv 32 signal 3 } 
	{ eps_1_2_01_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ num_res_load_2_out sc_out sc_lv 32 signal 4 } 
	{ num_res_load_2_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ num_res_load_1_out sc_out sc_lv 32 signal 5 } 
	{ num_res_load_1_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ eps_2_1_08_out sc_out sc_lv 32 signal 6 } 
	{ eps_2_1_08_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ eps_2_2_07_out sc_out sc_lv 32 signal 7 } 
	{ eps_2_2_07_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ grp_fu_222_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_222_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_222_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_222_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_633_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_633_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_633_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_633_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
 	{ "name": "normalizer_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "normalizer_1", "role": "default" }} , 
 	{ "name": "eps_1_1_02_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "eps_1_1_02_out", "role": "default" }} , 
 	{ "name": "eps_1_1_02_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eps_1_1_02_out", "role": "ap_vld" }} , 
 	{ "name": "eps_1_2_01_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "eps_1_2_01_out", "role": "default" }} , 
 	{ "name": "eps_1_2_01_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eps_1_2_01_out", "role": "ap_vld" }} , 
 	{ "name": "num_res_load_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_res_load_2_out", "role": "default" }} , 
 	{ "name": "num_res_load_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "num_res_load_2_out", "role": "ap_vld" }} , 
 	{ "name": "num_res_load_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_res_load_1_out", "role": "default" }} , 
 	{ "name": "num_res_load_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "num_res_load_1_out", "role": "ap_vld" }} , 
 	{ "name": "eps_2_1_08_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "eps_2_1_08_out", "role": "default" }} , 
 	{ "name": "eps_2_1_08_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eps_2_1_08_out", "role": "ap_vld" }} , 
 	{ "name": "eps_2_2_07_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "eps_2_2_07_out", "role": "default" }} , 
 	{ "name": "eps_2_2_07_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eps_2_2_07_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_222_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_222_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_222_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_222_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_222_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_222_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_222_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_222_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_633_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_633_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_633_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_633_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_633_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_633_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_633_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_633_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sqrt_Pipeline_VITIS_LOOP_444_1 {
		p_read13 {Type I LastRead 0 FirstWrite -1}
		normalizer_1 {Type I LastRead 0 FirstWrite -1}
		eps_1_1_02_out {Type O LastRead -1 FirstWrite 12}
		eps_1_2_01_out {Type O LastRead -1 FirstWrite 12}
		num_res_load_2_out {Type O LastRead -1 FirstWrite 12}
		num_res_load_1_out {Type O LastRead -1 FirstWrite 12}
		eps_2_1_08_out {Type O LastRead -1 FirstWrite 12}
		eps_2_2_07_out {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16", "Max" : "16"}
	, {"Name" : "Interval", "Min" : "16", "Max" : "16"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_read13 { ap_none {  { p_read13 in_data 0 128 } } }
	normalizer_1 { ap_none {  { normalizer_1 in_data 0 32 } } }
	eps_1_1_02_out { ap_vld {  { eps_1_1_02_out out_data 1 32 }  { eps_1_1_02_out_ap_vld out_vld 1 1 } } }
	eps_1_2_01_out { ap_vld {  { eps_1_2_01_out out_data 1 32 }  { eps_1_2_01_out_ap_vld out_vld 1 1 } } }
	num_res_load_2_out { ap_vld {  { num_res_load_2_out out_data 1 32 }  { num_res_load_2_out_ap_vld out_vld 1 1 } } }
	num_res_load_1_out { ap_vld {  { num_res_load_1_out out_data 1 32 }  { num_res_load_1_out_ap_vld out_vld 1 1 } } }
	eps_2_1_08_out { ap_vld {  { eps_2_1_08_out out_data 1 32 }  { eps_2_1_08_out_ap_vld out_vld 1 1 } } }
	eps_2_2_07_out { ap_vld {  { eps_2_2_07_out out_data 1 32 }  { eps_2_2_07_out_ap_vld out_vld 1 1 } } }
}
