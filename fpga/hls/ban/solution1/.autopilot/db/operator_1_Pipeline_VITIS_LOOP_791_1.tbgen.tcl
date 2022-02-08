set moduleName operator_1_Pipeline_VITIS_LOOP_791_1
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
set C_modelName {operator/.1_Pipeline_VITIS_LOOP_791_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read4 float 32 regular  }
	{ p_read5 float 32 regular  }
	{ p_read float 32 regular  }
	{ b_norm_2_03_out float 32 regular {pointer 1}  }
	{ b_norm_1_02_out float 32 regular {pointer 1}  }
	{ b_norm_load_1_out float 32 regular {pointer 1}  }
	{ b_norm_load_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_norm_2_03_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_norm_1_02_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_norm_load_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_norm_load_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read4 sc_in sc_lv 32 signal 0 } 
	{ p_read5 sc_in sc_lv 32 signal 1 } 
	{ p_read sc_in sc_lv 32 signal 2 } 
	{ b_norm_2_03_out sc_out sc_lv 32 signal 3 } 
	{ b_norm_2_03_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ b_norm_1_02_out sc_out sc_lv 32 signal 4 } 
	{ b_norm_1_02_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ b_norm_load_1_out sc_out sc_lv 32 signal 5 } 
	{ b_norm_load_1_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ b_norm_load_out sc_out sc_lv 32 signal 6 } 
	{ b_norm_load_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ grp_fu_423_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_423_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_423_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_423_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "b_norm_2_03_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_norm_2_03_out", "role": "default" }} , 
 	{ "name": "b_norm_2_03_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_norm_2_03_out", "role": "ap_vld" }} , 
 	{ "name": "b_norm_1_02_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_norm_1_02_out", "role": "default" }} , 
 	{ "name": "b_norm_1_02_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_norm_1_02_out", "role": "ap_vld" }} , 
 	{ "name": "b_norm_load_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_norm_load_1_out", "role": "default" }} , 
 	{ "name": "b_norm_load_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_norm_load_1_out", "role": "ap_vld" }} , 
 	{ "name": "b_norm_load_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_norm_load_out", "role": "default" }} , 
 	{ "name": "b_norm_load_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b_norm_load_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_423_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_423_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_423_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_423_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_423_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_423_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_423_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_423_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	operator_1_Pipeline_VITIS_LOOP_791_1 {
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		b_norm_2_03_out {Type O LastRead -1 FirstWrite 9}
		b_norm_1_02_out {Type O LastRead -1 FirstWrite 9}
		b_norm_load_1_out {Type O LastRead -1 FirstWrite 9}
		b_norm_load_out {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "13"}
	, {"Name" : "Interval", "Min" : "13", "Max" : "13"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_read4 { ap_none {  { p_read4 in_data 0 32 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 32 } } }
	p_read { ap_none {  { p_read in_data 0 32 } } }
	b_norm_2_03_out { ap_vld {  { b_norm_2_03_out out_data 1 32 }  { b_norm_2_03_out_ap_vld out_vld 1 1 } } }
	b_norm_1_02_out { ap_vld {  { b_norm_1_02_out out_data 1 32 }  { b_norm_1_02_out_ap_vld out_vld 1 1 } } }
	b_norm_load_1_out { ap_vld {  { b_norm_load_1_out out_data 1 32 }  { b_norm_load_1_out_ap_vld out_vld 1 1 } } }
	b_norm_load_out { ap_vld {  { b_norm_load_out out_data 1 32 }  { b_norm_load_out_ap_vld out_vld 1 1 } } }
}
