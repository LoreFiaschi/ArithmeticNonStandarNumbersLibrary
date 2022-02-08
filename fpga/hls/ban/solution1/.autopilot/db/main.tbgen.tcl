set moduleName main
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
set C_modelName {main}
set C_modelType { int 32 }
set C_modelArgList {
}
set C_modelArgMapList {[ 
	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 9
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
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
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "12", "15", "18", "21", "24", "27", "30", "33", "36", "39", "42", "45", "47", "50", "53", "56", "63", "75", "94", "105", "119", "121", "123", "141", "144", "147", "149", "158", "177", "179", "181", "183", "186", "188", "190", "192", "194", "198", "200", "202", "204", "206", "208", "210", "212", "214", "216", "221", "230", "232", "234", "236", "238", "240", "242", "244", "246", "248", "250", "252", "254", "256", "258", "260", "262", "264", "284", "289", "291", "294", "297", "299", "302", "305", "345", "361", "366", "368", "371", "374", "376", "379", "382", "384", "386", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413"],
		"CDFG" : "main",
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
			{"Name" : "v", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_54_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "350", "FirstState" : "ap_ST_fsm_state44", "LastState" : ["ap_ST_fsm_state297"], "QuitState" : ["ap_ST_fsm_state44"], "PreState" : ["ap_ST_fsm_state43"], "PostState" : ["ap_ST_fsm_state39"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_50_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "350", "FirstState" : "ap_ST_fsm_state39", "LastState" : ["ap_ST_fsm_state44"], "QuitState" : ["ap_ST_fsm_state39"], "PreState" : ["ap_ST_fsm_state38"], "PostState" : ["ap_ST_fsm_state298"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_111_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "350", "FirstState" : "ap_ST_fsm_state347", "LastState" : ["ap_ST_fsm_state350"], "QuitState" : ["ap_ST_fsm_state347"], "PreState" : ["ap_ST_fsm_state346"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aux_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aux_3_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aux_4_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_p_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_num_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r_p_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r_num_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_1_fu_3381", "Parent" : "0", "Child" : ["10", "11"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_1",
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
			{"Name" : "b0_num_2_0888_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b0_num_1_0887_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b0_num_0_0886_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_1_fu_3381.mux_32_32_1_1_U1", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_1_fu_3381.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_125_fu_3388", "Parent" : "0", "Child" : ["13", "14"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_125",
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
			{"Name" : "b1_num_2_0891_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1_num_1_0890_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1_num_0_0889_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_125_fu_3388.mux_32_32_1_1_U6", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_125_fu_3388.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_126_fu_3395", "Parent" : "0", "Child" : ["16", "17"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_126",
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
			{"Name" : "b2_num_2_0894_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b2_num_1_0893_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b2_num_0_0892_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_126_fu_3395.mux_32_32_1_1_U10", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_126_fu_3395.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_127_fu_3402", "Parent" : "0", "Child" : ["19", "20"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_127",
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
			{"Name" : "this_num_2_read_assign_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_num_1_read_assign_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_num_0_read_assign_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_127_fu_3402.mux_32_32_1_1_U14", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_127_fu_3402.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_128_fu_3409", "Parent" : "0", "Child" : ["22", "23"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_128",
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
			{"Name" : "b4_num_2_0897_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b4_num_1_0896_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b4_num_0_0895_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_128_fu_3409.mux_32_32_1_1_U18", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_128_fu_3409.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_129_fu_3416", "Parent" : "0", "Child" : ["25", "26"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_129",
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
			{"Name" : "b5_num_load_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b5_num_load_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b5_num_load_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_129_fu_3416.mux_32_32_1_1_U22", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_129_fu_3416.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_130_fu_3423", "Parent" : "0", "Child" : ["28", "29"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_130",
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
			{"Name" : "b6_num_2_0900_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b6_num_1_0899_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b6_num_0_0898_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_130_fu_3423.mux_32_32_1_1_U26", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_130_fu_3423.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_131_fu_3430", "Parent" : "0", "Child" : ["31", "32"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_131",
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
			{"Name" : "b7_num_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b7_num_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b7_num_0_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_131_fu_3430.mux_32_32_1_1_U30", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_131_fu_3430.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_132_fu_3437", "Parent" : "0", "Child" : ["34", "35"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_132",
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
			{"Name" : "b8_num_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_load_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_load_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_load_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_132_fu_3437.mux_32_32_1_1_U34", "Parent" : "33"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_132_fu_3437.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_133_fu_3447", "Parent" : "0", "Child" : ["37", "38"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_133",
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
			{"Name" : "b9_num_2_0903_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b9_num_1_0902_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b9_num_0_0901_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_133_fu_3447.mux_32_32_1_1_U41", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_133_fu_3447.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_134_fu_3454", "Parent" : "0", "Child" : ["40", "41"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_134",
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
			{"Name" : "b10_num_2_0906_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b10_num_1_0905_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b10_num_0_0904_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_134_fu_3454.mux_32_32_1_1_U45", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_134_fu_3454.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_135_fu_3461", "Parent" : "0", "Child" : ["43", "44"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_135",
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
			{"Name" : "b11_num_2_0909_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b11_num_1_0908_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b11_num_0_0907_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_135_fu_3461.mux_32_32_1_1_U49", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_135_fu_3461.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_45_1_fu_3468", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_45_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4264", "EstimateLatencyMax" : "4264",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "r_num", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r_p", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_45_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_45_1_fu_3468.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_163_fu_3476", "Parent" : "0", "Child" : ["48", "49"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_163",
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
			{"Name" : "b1500_num_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1500_num_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1500_num_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1500_num_load_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_163_fu_3476.mux_32_32_1_1_U635", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_163_fu_3476.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_164_fu_3484", "Parent" : "0", "Child" : ["51", "52"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_164",
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
			{"Name" : "b1501_num_0_0921_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1501_num_1_0920_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1501_num_2_0919_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_164_fu_3484.mux_32_32_1_1_U640", "Parent" : "50"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_164_fu_3484.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_165_fu_3491", "Parent" : "0", "Child" : ["54", "55"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_165",
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
			{"Name" : "b1502_num_0_0918_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1502_num_1_0917_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1502_num_2_0916_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_165_fu_3491.mux_32_32_1_1_U644", "Parent" : "53"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_165_fu_3491.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_3498", "Parent" : "0", "Child" : ["57", "58", "59", "60", "61", "62"],
		"CDFG" : "sqrt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "149",
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
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1_offset", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state53", "ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_565_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state22"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state23"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state23", "LastState" : ["ap_ST_fsm_state39"], "QuitState" : ["ap_ST_fsm_state23"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state40"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state40", "LastState" : ["ap_ST_fsm_state41"], "QuitState" : ["ap_ST_fsm_state40"], "PreState" : ["ap_ST_fsm_state23"], "PostState" : ["ap_ST_fsm_state42"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state52", "LastState" : ["ap_ST_fsm_state52"], "QuitState" : ["ap_ST_fsm_state52"], "PreState" : ["ap_ST_fsm_state51"], "PostState" : ["ap_ST_fsm_state55"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state52_blk"}}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_3498.aux_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_3498.fsqrt_32ns_32ns_32_8_no_dsp_1_U63", "Parent" : "56"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_3498.mux_32_32_1_1_U64", "Parent" : "56"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_3498.mux_32_32_1_1_U65", "Parent" : "56"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_3498.mux_32_32_1_1_U66", "Parent" : "56"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fu_3498.mux_32_32_1_1_U67", "Parent" : "56"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_3509", "Parent" : "0", "Child" : ["64"],
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
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_p_sum_fu_207", "Port" : "b_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "this_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_3509.grp_p_sum_fu_207", "Parent" : "63", "Child" : ["65", "68", "71", "73", "74"],
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
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "diff_p", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_3509.grp_p_sum_fu_207.grp_p_sum_Pipeline_VITIS_LOOP_84_1_fu_303", "Parent" : "64", "Child" : ["66", "67"],
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
			{"Name" : "tmp_329", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_3509.grp_p_sum_fu_207.grp_p_sum_Pipeline_VITIS_LOOP_84_1_fu_303.mux_32_32_1_1_U77", "Parent" : "65"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_3509.grp_p_sum_fu_207.grp_p_sum_Pipeline_VITIS_LOOP_84_1_fu_303.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_3509.grp_p_sum_fu_207.grp_p_sum_Pipeline_VITIS_LOOP_92_2_fu_313", "Parent" : "64", "Child" : ["69", "70"],
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
			{"Name" : "tmp_329", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_3509.grp_p_sum_fu_207.grp_p_sum_Pipeline_VITIS_LOOP_92_2_fu_313.mux_32_32_1_1_U82", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_3509.grp_p_sum_fu_207.grp_p_sum_Pipeline_VITIS_LOOP_92_2_fu_313.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_3509.grp_p_sum_fu_207.grp_p_sum_Pipeline_VITIS_LOOP_104_3_fu_327", "Parent" : "64", "Child" : ["72"],
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
			{"Name" : "zext_ln104_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_3509.grp_p_sum_fu_207.grp_p_sum_Pipeline_VITIS_LOOP_104_3_fu_327.flow_control_loop_pipe_sequential_init_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_3509.grp_p_sum_fu_207.fadd_32ns_32ns_32_4_full_dsp_1_U99", "Parent" : "64"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_add_fu_3509.grp_p_sum_fu_207.fcmp_32ns_32ns_1_2_no_dsp_1_U100", "Parent" : "64"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520", "Parent" : "0", "Child" : ["76", "86", "89", "92"],
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
			{"Name" : "this_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_p_sum_1_fu_381", "Port" : "a_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "this_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_p_sum_1_fu_381", "Parent" : "75", "Child" : ["77", "80", "83", "85"],
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
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "diff_p", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_p_sum_1_fu_381.grp_p_sum_1_Pipeline_VITIS_LOOP_84_1_fu_293", "Parent" : "76", "Child" : ["78", "79"],
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
			{"Name" : "tmp_303", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_p_sum_1_fu_381.grp_p_sum_1_Pipeline_VITIS_LOOP_84_1_fu_293.mux_32_32_1_1_U113", "Parent" : "77"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_p_sum_1_fu_381.grp_p_sum_1_Pipeline_VITIS_LOOP_84_1_fu_293.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_p_sum_1_fu_381.grp_p_sum_1_Pipeline_VITIS_LOOP_92_2_fu_303", "Parent" : "76", "Child" : ["81", "82"],
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
			{"Name" : "tmp_303", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_p_sum_1_fu_381.grp_p_sum_1_Pipeline_VITIS_LOOP_92_2_fu_303.mux_32_32_1_1_U118", "Parent" : "80"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_p_sum_1_fu_381.grp_p_sum_1_Pipeline_VITIS_LOOP_92_2_fu_303.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_p_sum_1_fu_381.grp_p_sum_1_Pipeline_VITIS_LOOP_104_3_fu_317", "Parent" : "76", "Child" : ["84"],
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
			{"Name" : "zext_ln104_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_p_sum_1_fu_381.grp_p_sum_1_Pipeline_VITIS_LOOP_104_3_fu_317.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_p_sum_1_fu_381.mux_32_32_1_1_U137", "Parent" : "76"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_operator_2_Pipeline_VITIS_LOOP_84_1_fu_393", "Parent" : "75", "Child" : ["87", "88"],
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
			{"Name" : "agg_result_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_112_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_94", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_operator_2_Pipeline_VITIS_LOOP_84_1_fu_393.mux_32_32_1_1_U147", "Parent" : "86"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_operator_2_Pipeline_VITIS_LOOP_84_1_fu_393.flow_control_loop_pipe_sequential_init_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_operator_2_Pipeline_VITIS_LOOP_92_2_fu_403", "Parent" : "75", "Child" : ["90", "91"],
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
			{"Name" : "agg_result_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_112_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_94", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_112_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_12_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_operator_2_Pipeline_VITIS_LOOP_92_2_fu_403.mux_32_32_1_1_U152", "Parent" : "89"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_operator_2_Pipeline_VITIS_LOOP_92_2_fu_403.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_operator_2_Pipeline_VITIS_LOOP_104_3_fu_417", "Parent" : "75", "Child" : ["93"],
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
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_fu_3520.grp_operator_2_Pipeline_VITIS_LOOP_104_3_fu_417.flow_control_loop_pipe_sequential_init_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_3531", "Parent" : "0", "Child" : ["95", "96", "99", "102", "104"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "this_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_offset", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state21"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_state21", "LastState" : ["ap_ST_fsm_state22"], "QuitState" : ["ap_ST_fsm_state21"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state23"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_state23", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state23"], "PreState" : ["ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state24"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state23_blk"}}]},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_3531.aux_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_3531.grp_mul_body_Pipeline_VITIS_LOOP_84_1_fu_383", "Parent" : "94", "Child" : ["97", "98"],
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
			{"Name" : "agg_result_num_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num12_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_3531.grp_mul_body_Pipeline_VITIS_LOOP_84_1_fu_383.mux_32_32_1_1_U180", "Parent" : "96"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_3531.grp_mul_body_Pipeline_VITIS_LOOP_84_1_fu_383.flow_control_loop_pipe_sequential_init_U", "Parent" : "96"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_3531.grp_mul_body_Pipeline_VITIS_LOOP_92_2_fu_391", "Parent" : "94", "Child" : ["100", "101"],
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
			{"Name" : "agg_result_num_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num12_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num12_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_3531.grp_mul_body_Pipeline_VITIS_LOOP_92_2_fu_391.mux_32_32_1_1_U185", "Parent" : "99"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_3531.grp_mul_body_Pipeline_VITIS_LOOP_92_2_fu_391.flow_control_loop_pipe_sequential_init_U", "Parent" : "99"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_3531.grp_mul_body_Pipeline_VITIS_LOOP_104_3_fu_403", "Parent" : "94", "Child" : ["103"],
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
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_3531.grp_mul_body_Pipeline_VITIS_LOOP_104_3_fu_403.flow_control_loop_pipe_sequential_init_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_fu_3531.mux_32_32_1_1_U207", "Parent" : "94"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_fu_3543", "Parent" : "0", "Child" : ["106", "111", "114", "117"],
		"CDFG" : "operator_1_1",
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
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_p_mul_fu_318", "Port" : "num_b", "Inst_start_state" : "5", "Inst_end_state" : "17"}]},
			{"Name" : "this_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_offset", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_215_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "45", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state17"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_fu_3543.grp_p_mul_fu_318", "Parent" : "105", "Child" : ["107", "108", "109", "110"],
		"CDFG" : "p_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "94", "EstimateLatencyMax" : "94",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "num_a_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_a_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "num_b_offset", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state20"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_fu_3543.grp_p_mul_fu_318.aux_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_fu_3543.grp_p_mul_fu_318.mux_32_32_1_1_U221", "Parent" : "106"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_fu_3543.grp_p_mul_fu_318.mux_32_32_1_1_U222", "Parent" : "106"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_fu_3543.grp_p_mul_fu_318.mux_32_32_1_1_U223", "Parent" : "106"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_fu_3543.grp_operator_1_1_Pipeline_VITIS_LOOP_84_1_fu_344", "Parent" : "105", "Child" : ["112", "113"],
		"CDFG" : "operator_1_1_Pipeline_VITIS_LOOP_84_1",
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
			{"Name" : "tmp_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_fu_3543.grp_operator_1_1_Pipeline_VITIS_LOOP_84_1_fu_344.mux_32_32_1_1_U245", "Parent" : "111"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_fu_3543.grp_operator_1_1_Pipeline_VITIS_LOOP_84_1_fu_344.flow_control_loop_pipe_sequential_init_U", "Parent" : "111"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_fu_3543.grp_operator_1_1_Pipeline_VITIS_LOOP_92_2_fu_352", "Parent" : "105", "Child" : ["115", "116"],
		"CDFG" : "operator_1_1_Pipeline_VITIS_LOOP_92_2",
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
			{"Name" : "tmp_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_num_load_221_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_num_load15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_assign_load9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_fu_3543.grp_operator_1_1_Pipeline_VITIS_LOOP_92_2_fu_352.mux_32_32_1_1_U250", "Parent" : "114"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_fu_3543.grp_operator_1_1_Pipeline_VITIS_LOOP_92_2_fu_352.flow_control_loop_pipe_sequential_init_U", "Parent" : "114"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_fu_3543.grp_operator_1_1_Pipeline_VITIS_LOOP_104_3_fu_364", "Parent" : "105", "Child" : ["118"],
		"CDFG" : "operator_1_1_Pipeline_VITIS_LOOP_104_3",
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
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_1_fu_3543.grp_operator_1_1_Pipeline_VITIS_LOOP_104_3_fu_364.flow_control_loop_pipe_sequential_init_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_53_1_fu_3552", "Parent" : "0", "Child" : ["120"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_53_1",
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
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub_ln155", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_53_1_fu_3552.flow_control_loop_pipe_sequential_init_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_458_1_fu_3560", "Parent" : "0", "Child" : ["122"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_458_1",
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
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub_ln155", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_458_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_458_1_fu_3560.flow_control_loop_pipe_sequential_init_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568", "Parent" : "0", "Child" : ["124", "126", "130", "133", "135", "138", "139", "140"],
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_operator_1_Pipeline_VITIS_LOOP_627_1_fu_380", "Port" : "this_1", "Inst_start_state" : "2", "Inst_end_state" : "16"}]},
			{"Name" : "this_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.grp_operator_1_Pipeline_VITIS_LOOP_627_1_fu_380", "Parent" : "123", "Child" : ["125"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_627_1",
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
			{"Name" : "this_p_read_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln643", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "num_res_1_02_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_res_2_01_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_627_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.grp_operator_1_Pipeline_VITIS_LOOP_627_1_fu_380.flow_control_loop_pipe_sequential_init_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.grp_operator_1_Pipeline_VITIS_LOOP_84_1_fu_391", "Parent" : "123", "Child" : ["127", "128", "129"],
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
			{"Name" : "agg_result_num_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num16_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.grp_operator_1_Pipeline_VITIS_LOOP_84_1_fu_391.fcmp_32ns_32ns_1_2_no_dsp_1_U295", "Parent" : "126"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.grp_operator_1_Pipeline_VITIS_LOOP_84_1_fu_391.mux_32_32_1_1_U296", "Parent" : "126"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.grp_operator_1_Pipeline_VITIS_LOOP_84_1_fu_391.flow_control_loop_pipe_sequential_init_U", "Parent" : "126"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.grp_operator_1_Pipeline_VITIS_LOOP_92_2_fu_402", "Parent" : "123", "Child" : ["131", "132"],
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
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.grp_operator_1_Pipeline_VITIS_LOOP_92_2_fu_402.mux_32_32_1_1_U301", "Parent" : "130"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.grp_operator_1_Pipeline_VITIS_LOOP_92_2_fu_402.flow_control_loop_pipe_sequential_init_U", "Parent" : "130"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.grp_operator_1_Pipeline_VITIS_LOOP_104_3_fu_417", "Parent" : "123", "Child" : ["134"],
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
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.grp_operator_1_Pipeline_VITIS_LOOP_104_3_fu_417.flow_control_loop_pipe_sequential_init_U", "Parent" : "133"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.grp_operator_1_Pipeline_VITIS_LOOP_21_1_fu_433", "Parent" : "123", "Child" : ["136", "137"],
		"CDFG" : "operator_1_Pipeline_VITIS_LOOP_21_1",
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
			{"Name" : "write_flag4_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "write_flag8_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "write_flag_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.grp_operator_1_Pipeline_VITIS_LOOP_21_1_fu_433.mux_32_32_1_1_U324", "Parent" : "135"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.grp_operator_1_Pipeline_VITIS_LOOP_21_1_fu_433.flow_control_loop_pipe_sequential_init_U", "Parent" : "135"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.fadd_32ns_32ns_32_4_full_dsp_1_U334", "Parent" : "123"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.fcmp_32ns_32ns_1_2_no_dsp_1_U335", "Parent" : "123"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_fu_3568.mux_32_32_1_1_U336", "Parent" : "123"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_1_fu_3579", "Parent" : "0", "Child" : ["142", "143"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_84_1",
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
			{"Name" : "tmp_305", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_306", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_307", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_22_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_1_fu_3579.mux_32_32_1_1_U345", "Parent" : "141"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_1_fu_3579.flow_control_loop_pipe_sequential_init_U", "Parent" : "141"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_2_fu_3587", "Parent" : "0", "Child" : ["145", "146"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_92_2",
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
			{"Name" : "tmp_305", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_306", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_307", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load_21005_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load_1999_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load993_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_2_fu_3587.mux_32_32_1_1_U350", "Parent" : "144"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_2_fu_3587.flow_control_loop_pipe_sequential_init_U", "Parent" : "144"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_3_fu_3599", "Parent" : "0", "Child" : ["148"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_104_3",
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
			{"Name" : "res_num_load_21003", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load_1997", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load991", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln104_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_num_load_21002_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load_1996_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "res_num_load990_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_3_fu_3599.flow_control_loop_pipe_sequential_init_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_fu_3615", "Parent" : "0", "Child" : ["150", "153", "156"],
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
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_fu_3615.grp_operator_1_2_Pipeline_VITIS_LOOP_84_1_fu_251", "Parent" : "149", "Child" : ["151", "152"],
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
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_fu_3615.grp_operator_1_2_Pipeline_VITIS_LOOP_84_1_fu_251.mux_32_32_1_1_U368", "Parent" : "150"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_fu_3615.grp_operator_1_2_Pipeline_VITIS_LOOP_84_1_fu_251.flow_control_loop_pipe_sequential_init_U", "Parent" : "150"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_fu_3615.grp_operator_1_2_Pipeline_VITIS_LOOP_92_2_fu_259", "Parent" : "149", "Child" : ["154", "155"],
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
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_fu_3615.grp_operator_1_2_Pipeline_VITIS_LOOP_92_2_fu_259.mux_32_32_1_1_U373", "Parent" : "153"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_fu_3615.grp_operator_1_2_Pipeline_VITIS_LOOP_92_2_fu_259.flow_control_loop_pipe_sequential_init_U", "Parent" : "153"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_fu_3615.grp_operator_1_2_Pipeline_VITIS_LOOP_104_3_fu_271", "Parent" : "149", "Child" : ["157"],
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
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_2_fu_3615.grp_operator_1_2_Pipeline_VITIS_LOOP_104_3_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "156"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623", "Parent" : "0", "Child" : ["159", "160", "161", "164", "167", "169", "170", "171", "172", "173", "174", "175", "176"],
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
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1_offset", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state3_blk"}},
			{"Name" : "VITIS_LOOP_791_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state17"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state17", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state17"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state21"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state21", "LastState" : ["ap_ST_fsm_state37"], "QuitState" : ["ap_ST_fsm_state21"], "PreState" : ["ap_ST_fsm_state17"], "PostState" : ["ap_ST_fsm_state38"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state38", "LastState" : ["ap_ST_fsm_state39"], "QuitState" : ["ap_ST_fsm_state38"], "PreState" : ["ap_ST_fsm_state21"], "PostState" : ["ap_ST_fsm_state40"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state40", "LastState" : ["ap_ST_fsm_state56"], "QuitState" : ["ap_ST_fsm_state40"], "PreState" : ["ap_ST_fsm_state38"], "PostState" : ["ap_ST_fsm_state57"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state57", "LastState" : ["ap_ST_fsm_state58"], "QuitState" : ["ap_ST_fsm_state57"], "PreState" : ["ap_ST_fsm_state40"], "PostState" : ["ap_ST_fsm_state59"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.aux_U", "Parent" : "158"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.aux_2_U", "Parent" : "158"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.grp_operator_Pipeline_VITIS_LOOP_84_1_fu_432", "Parent" : "158", "Child" : ["162", "163"],
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
			{"Name" : "tmp_115", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_116", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_117", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.grp_operator_Pipeline_VITIS_LOOP_84_1_fu_432.mux_32_32_1_1_U399", "Parent" : "161"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.grp_operator_Pipeline_VITIS_LOOP_84_1_fu_432.flow_control_loop_pipe_sequential_init_U", "Parent" : "161"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.grp_operator_Pipeline_VITIS_LOOP_92_2_fu_440", "Parent" : "158", "Child" : ["165", "166"],
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
			{"Name" : "tmp_117", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_116", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_115", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_num_load_1243_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_num_load_1137_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_num_load_1031_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.grp_operator_Pipeline_VITIS_LOOP_92_2_fu_440.mux_32_32_1_1_U404", "Parent" : "164"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.grp_operator_Pipeline_VITIS_LOOP_92_2_fu_440.flow_control_loop_pipe_sequential_init_U", "Parent" : "164"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.grp_operator_Pipeline_VITIS_LOOP_104_3_fu_452", "Parent" : "158", "Child" : ["168"],
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
			{"Name" : "this_num_load_1241", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_num_load_1135", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_num_load_1029", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_num_load_1240_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_num_load_1134_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_num_load_1028_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.grp_operator_Pipeline_VITIS_LOOP_104_3_fu_452.flow_control_loop_pipe_sequential_init_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.mux_32_32_1_1_U429", "Parent" : "158"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.mux_32_32_1_1_U430", "Parent" : "158"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.mux_32_32_1_1_U431", "Parent" : "158"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.mux_32_32_1_1_U432", "Parent" : "158"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.mux_32_32_1_1_U433", "Parent" : "158"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.mux_32_32_1_1_U434", "Parent" : "158"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.mux_32_32_1_1_U435", "Parent" : "158"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_div_fu_3623.mux_32_32_1_1_U436", "Parent" : "158"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_68_1_fu_3631", "Parent" : "0", "Child" : ["178"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_68_1",
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
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_68_1_fu_3631.flow_control_loop_pipe_sequential_init_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_497_1_fu_3638", "Parent" : "0", "Child" : ["180"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_497_1",
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
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_497_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_497_1_fu_3638.flow_control_loop_pipe_sequential_init_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_311_1_fu_3645", "Parent" : "0", "Child" : ["182"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_311_1",
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
			{"Name" : "num_aux_2_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_1_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_0_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "num_aux_2_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_aux_1_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_aux_0_1_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_311_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_311_1_fu_3645.flow_control_loop_pipe_sequential_init_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_315_2_fu_3657", "Parent" : "0", "Child" : ["184", "185"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_315_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sub_ln290", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub11_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln297_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_0_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_1_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_2_1_2_reload", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_315_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_315_2_fu_3657.mux_32_32_1_1_U460", "Parent" : "183"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_315_2_fu_3657.flow_control_loop_pipe_sequential_init_U", "Parent" : "183"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_136_fu_3669", "Parent" : "0", "Child" : ["187"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_84_136",
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
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "idx_tmp_30_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_136_fu_3669.flow_control_loop_pipe_sequential_init_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_237_fu_3676", "Parent" : "0", "Child" : ["189"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_92_237",
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
			{"Name" : "zext_ln92_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln92_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_237_fu_3676.flow_control_loop_pipe_sequential_init_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_338_fu_3684", "Parent" : "0", "Child" : ["191"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_104_338",
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
			{"Name" : "zext_ln104_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln104_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_338_fu_3684.flow_control_loop_pipe_sequential_init_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_311_139_fu_3693", "Parent" : "0", "Child" : ["193"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_311_139",
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
			{"Name" : "num_aux_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "num_aux_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_aux_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_aux_0_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_311_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_311_139_fu_3693.flow_control_loop_pipe_sequential_init_U", "Parent" : "192"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_315_240_fu_3705", "Parent" : "0", "Child" : ["195", "196", "197"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_315_240",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub11_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_309", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_310", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_311", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln297_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_2_2_reload", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_315_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_315_240_fu_3705.mux_32_32_1_1_U490", "Parent" : "194"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_315_240_fu_3705.mux_32_32_1_1_U491", "Parent" : "194"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_315_240_fu_3705.flow_control_loop_pipe_sequential_init_U", "Parent" : "194"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_141_fu_3719", "Parent" : "0", "Child" : ["199"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_84_141",
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
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "idx_tmp_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_141_fu_3719.flow_control_loop_pipe_sequential_init_U", "Parent" : "198"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_242_fu_3726", "Parent" : "0", "Child" : ["201"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_92_242",
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
			{"Name" : "zext_ln92_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln92_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_242_fu_3726.flow_control_loop_pipe_sequential_init_U", "Parent" : "200"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_343_fu_3734", "Parent" : "0", "Child" : ["203"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_104_343",
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
			{"Name" : "zext_ln104_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln104_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_343_fu_3734.flow_control_loop_pipe_sequential_init_U", "Parent" : "202"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_169_1_fu_3743", "Parent" : "0", "Child" : ["205"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_169_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_num_load_77", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num_load_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num_load_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "aux_4", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_169_1_fu_3743.flow_control_loop_pipe_sequential_init_U", "Parent" : "204"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_187_1_fu_3753", "Parent" : "0", "Child" : ["207"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_187_1",
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
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "aux_4", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_187_1_fu_3753.flow_control_loop_pipe_sequential_init_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_144_fu_3760", "Parent" : "0", "Child" : ["209"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_84_144",
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
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "idx_tmp_36_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_144_fu_3760.flow_control_loop_pipe_sequential_init_U", "Parent" : "208"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_245_fu_3767", "Parent" : "0", "Child" : ["211"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_92_245",
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
			{"Name" : "zext_ln92_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln92_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_245_fu_3767.flow_control_loop_pipe_sequential_init_U", "Parent" : "210"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_346_fu_3775", "Parent" : "0", "Child" : ["213"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_104_346",
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
			{"Name" : "zext_ln104_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln104_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_346_fu_3775.flow_control_loop_pipe_sequential_init_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_215_1_fu_3784", "Parent" : "0", "Child" : ["215"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_215_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "den_norm_2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "den_norm_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "den_norm_28591024", "Type" : "None", "Direction" : "I"},
			{"Name" : "den_norm_18581019", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln290", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "normalizer", "Type" : "None", "Direction" : "I"},
			{"Name" : "den_norm_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den_norm_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den_norm_2852_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den_norm_1851_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_215_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_215_1_fu_3784.flow_control_loop_pipe_sequential_init_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_3799", "Parent" : "0", "Child" : ["217", "218", "219", "220"],
		"CDFG" : "p_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "94", "EstimateLatencyMax" : "94",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "num_a_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_a_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "num_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_res_2_read", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state20"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_3799.aux_U", "Parent" : "216"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_3799.mux_32_32_1_1_U557", "Parent" : "216"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_3799.mux_32_32_1_1_U558", "Parent" : "216"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_1_fu_3799.mux_32_32_1_1_U559", "Parent" : "216"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_161_fu_3810", "Parent" : "0", "Child" : ["222", "223", "224", "225", "226", "227", "228", "229"],
		"CDFG" : "p_mul_161",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "94", "EstimateLatencyMax" : "94",
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
			{"Name" : "num_res_2_read", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state19", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state19"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_161_fu_3810.aux_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_161_fu_3810.fadd_32ns_32ns_32_4_full_dsp_1_U228", "Parent" : "221"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_161_fu_3810.fmul_32ns_32ns_32_3_max_dsp_1_U229", "Parent" : "221"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_161_fu_3810.fmul_32ns_32ns_32_3_max_dsp_1_U230", "Parent" : "221"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_161_fu_3810.fmul_32ns_32ns_32_3_max_dsp_1_U231", "Parent" : "221"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_161_fu_3810.mux_32_32_1_1_U232", "Parent" : "221"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_161_fu_3810.mux_32_32_1_1_U233", "Parent" : "221"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_mul_161_fu_3810.mux_32_32_1_1_U234", "Parent" : "221"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_147_fu_3824", "Parent" : "0", "Child" : ["231"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_84_147",
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
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "idx_tmp_39_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_147_fu_3824.flow_control_loop_pipe_sequential_init_U", "Parent" : "230"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_248_fu_3831", "Parent" : "0", "Child" : ["233"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_92_248",
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
			{"Name" : "zext_ln92_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln92_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_248_fu_3831.flow_control_loop_pipe_sequential_init_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_349_fu_3839", "Parent" : "0", "Child" : ["235"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_104_349",
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
			{"Name" : "zext_ln104_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln104_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_349_fu_3839.flow_control_loop_pipe_sequential_init_U", "Parent" : "234"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_150_fu_3848", "Parent" : "0", "Child" : ["237"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_84_150",
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
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "idx_tmp_42_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_150_fu_3848.flow_control_loop_pipe_sequential_init_U", "Parent" : "236"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_251_fu_3855", "Parent" : "0", "Child" : ["239"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_92_251",
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
			{"Name" : "zext_ln92_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln92_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_251_fu_3855.flow_control_loop_pipe_sequential_init_U", "Parent" : "238"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_352_fu_3863", "Parent" : "0", "Child" : ["241"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_104_352",
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
			{"Name" : "zext_ln104_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln104_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_352_fu_3863.flow_control_loop_pipe_sequential_init_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_627_1_fu_3872", "Parent" : "0", "Child" : ["243"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_627_1",
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
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sub_ln629", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln56", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_627_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_627_1_fu_3872.flow_control_loop_pipe_sequential_init_U", "Parent" : "242"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_153_fu_3880", "Parent" : "0", "Child" : ["245"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_84_153",
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
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "idx_tmp_45_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_153_fu_3880.flow_control_loop_pipe_sequential_init_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_254_fu_3887", "Parent" : "0", "Child" : ["247"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_92_254",
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
			{"Name" : "zext_ln92_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln92_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_254_fu_3887.flow_control_loop_pipe_sequential_init_U", "Parent" : "246"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_355_fu_3895", "Parent" : "0", "Child" : ["249"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_104_355",
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
			{"Name" : "zext_ln104_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln104_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_355_fu_3895.flow_control_loop_pipe_sequential_init_U", "Parent" : "248"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_627_156_fu_3904", "Parent" : "0", "Child" : ["251"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_627_156",
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
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sub_ln629_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln57", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_627_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_627_156_fu_3904.flow_control_loop_pipe_sequential_init_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_157_fu_3912", "Parent" : "0", "Child" : ["253"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_84_157",
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
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "idx_tmp_48_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_157_fu_3912.flow_control_loop_pipe_sequential_init_U", "Parent" : "252"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_258_fu_3919", "Parent" : "0", "Child" : ["255"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_92_258",
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
			{"Name" : "zext_ln92_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln92_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_258_fu_3919.flow_control_loop_pipe_sequential_init_U", "Parent" : "254"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_359_fu_3927", "Parent" : "0", "Child" : ["257"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_104_359",
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
			{"Name" : "zext_ln104_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln104_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_359_fu_3927.flow_control_loop_pipe_sequential_init_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_160_fu_3936", "Parent" : "0", "Child" : ["259"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_84_160",
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
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "idx_tmp_51_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_160_fu_3936.flow_control_loop_pipe_sequential_init_U", "Parent" : "258"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_261_fu_3943", "Parent" : "0", "Child" : ["261"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_92_261",
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
			{"Name" : "zext_ln92_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln92_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_261_fu_3943.flow_control_loop_pipe_sequential_init_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_362_fu_3951", "Parent" : "0", "Child" : ["263"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_104_362",
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
			{"Name" : "zext_ln104_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln104_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln542", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_362_fu_3951.flow_control_loop_pipe_sequential_init_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960", "Parent" : "0", "Child" : ["265", "266", "271", "273", "276", "279", "282"],
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
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.aux_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_169_1_fu_248", "Parent" : "264", "Child" : ["267", "268", "269", "270"],
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
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_169_1_fu_248.mux_32_32_1_1_U654", "Parent" : "266"},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_169_1_fu_248.mux_32_32_1_1_U655", "Parent" : "266"},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_169_1_fu_248.mux_32_32_1_1_U656", "Parent" : "266"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_169_1_fu_248.flow_control_loop_pipe_sequential_init_U", "Parent" : "266"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_187_1_fu_266", "Parent" : "264", "Child" : ["272"],
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
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_187_1_fu_266.flow_control_loop_pipe_sequential_init_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_21_1_fu_274", "Parent" : "264", "Child" : ["274", "275"],
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
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_21_1_fu_274.mux_32_32_1_1_U668", "Parent" : "273"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_21_1_fu_274.flow_control_loop_pipe_sequential_init_U", "Parent" : "273"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_84_1_fu_284", "Parent" : "264", "Child" : ["277", "278"],
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
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_84_1_fu_284.mux_32_32_1_1_U676", "Parent" : "276"},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_84_1_fu_284.flow_control_loop_pipe_sequential_init_U", "Parent" : "276"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_92_2_fu_292", "Parent" : "264", "Child" : ["280", "281"],
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
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_92_2_fu_292.mux_32_32_1_1_U681", "Parent" : "279"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_92_2_fu_292.flow_control_loop_pipe_sequential_init_U", "Parent" : "279"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_104_3_fu_304", "Parent" : "264", "Child" : ["283"],
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
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_body_1_fu_3960.grp_mul_body_1_Pipeline_VITIS_LOOP_104_3_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "282"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_169_166_fu_3970", "Parent" : "0", "Child" : ["285", "286", "287", "288"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_169_166",
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
			{"Name" : "b1500_num_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1500_num_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1500_num_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1502_num_0_0918_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1502_num_1_0917_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1502_num_2_0916_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "aux_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_169_166_fu_3970.mux_32_32_1_1_U718", "Parent" : "284"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_169_166_fu_3970.mux_32_32_1_1_U719", "Parent" : "284"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_169_166_fu_3970.mux_32_32_1_1_U720", "Parent" : "284"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_169_166_fu_3970.flow_control_loop_pipe_sequential_init_U", "Parent" : "284"},
	{"ID" : "289", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_187_167_fu_3981", "Parent" : "0", "Child" : ["290"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_187_167",
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
			{"Name" : "b1500_num_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1500_num_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1500_num_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "aux_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b1500_num_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1500_num_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1500_num_0_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_187_167_fu_3981.flow_control_loop_pipe_sequential_init_U", "Parent" : "289"},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_168_fu_3992", "Parent" : "0", "Child" : ["292", "293"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_84_168",
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
			{"Name" : "b1500_num_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1500_num_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1500_num_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_19_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_168_fu_3992.mux_32_32_1_1_U736", "Parent" : "291"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_168_fu_3992.flow_control_loop_pipe_sequential_init_U", "Parent" : "291"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_269_fu_4000", "Parent" : "0", "Child" : ["295", "296"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_92_269",
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
			{"Name" : "b1500_num_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1500_num_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1500_num_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1500_num_2_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1500_num_1_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1500_num_0_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_269_fu_4000.mux_32_32_1_1_U741", "Parent" : "294"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_269_fu_4000.flow_control_loop_pipe_sequential_init_U", "Parent" : "294"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_370_fu_4012", "Parent" : "0", "Child" : ["298"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_104_370",
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
			{"Name" : "b1500_num_2_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1500_num_1_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1500_num_0_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1500_num_2_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1500_num_1_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1500_num_0_7_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_370_fu_4012.flow_control_loop_pipe_sequential_init_U", "Parent" : "297"},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_171_fu_4028", "Parent" : "0", "Child" : ["300", "301"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_21_171",
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
			{"Name" : "b1503_num_0_0915_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1503_num_1_0914_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b1503_num_2_0913_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_171_fu_4028.mux_32_32_1_1_U758", "Parent" : "299"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_21_171_fu_4028.flow_control_loop_pipe_sequential_init_U", "Parent" : "299"},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_362_1_fu_4035", "Parent" : "0", "Child" : ["303", "304"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_362_1",
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
			{"Name" : "b8_num_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_2170_0885_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_aux_1169_0884_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_aux_0_0883_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_362_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_362_1_fu_4035.mux_32_32_1_1_U910", "Parent" : "302"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_362_1_fu_4035.flow_control_loop_pipe_sequential_init_U", "Parent" : "302"},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045", "Parent" : "0", "Child" : ["306", "307", "308", "311", "313", "316", "321", "323", "328", "330", "333", "336", "338", "339", "340", "341", "342", "343", "344"],
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
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.aux_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.aux_1_U", "Parent" : "305"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_21_1_s_fu_304", "Parent" : "305", "Child" : ["309", "310"],
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
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_21_1_s_fu_304.mux_32_32_1_1_U762", "Parent" : "308"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_21_1_s_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "308"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_791_1_fu_310", "Parent" : "305", "Child" : ["312"],
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
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_791_1_fu_310.flow_control_loop_pipe_sequential_init_U", "Parent" : "311"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_34_1_fu_324", "Parent" : "305", "Child" : ["314", "315"],
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
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_34_1_fu_324.mux_32_32_1_1_U774", "Parent" : "313"},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_34_1_fu_324.flow_control_loop_pipe_sequential_init_U", "Parent" : "313"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_169_1_fu_336", "Parent" : "305", "Child" : ["317", "318", "319", "320"],
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
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_169_1_fu_336.mux_32_32_1_1_U789", "Parent" : "316"},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_169_1_fu_336.mux_32_32_1_1_U790", "Parent" : "316"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_169_1_fu_336.mux_32_32_1_1_U791", "Parent" : "316"},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_169_1_fu_336.flow_control_loop_pipe_sequential_init_U", "Parent" : "316"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_187_1_fu_346", "Parent" : "305", "Child" : ["322"],
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
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_187_1_fu_346.flow_control_loop_pipe_sequential_init_U", "Parent" : "321"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_169_123_fu_357", "Parent" : "305", "Child" : ["324", "325", "326", "327"],
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
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_169_123_fu_357.mux_32_32_1_1_U811", "Parent" : "323"},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_169_123_fu_357.mux_32_32_1_1_U812", "Parent" : "323"},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_169_123_fu_357.mux_32_32_1_1_U813", "Parent" : "323"},
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_169_123_fu_357.flow_control_loop_pipe_sequential_init_U", "Parent" : "323"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_187_124_fu_367", "Parent" : "305", "Child" : ["329"],
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
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_187_124_fu_367.flow_control_loop_pipe_sequential_init_U", "Parent" : "328"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_84_1_s_fu_378", "Parent" : "305", "Child" : ["331", "332"],
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
	{"ID" : "331", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_84_1_s_fu_378.mux_32_32_1_1_U828", "Parent" : "330"},
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_84_1_s_fu_378.flow_control_loop_pipe_sequential_init_U", "Parent" : "330"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_92_2_s_fu_386", "Parent" : "305", "Child" : ["334", "335"],
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
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_92_2_s_fu_386.mux_32_32_1_1_U833", "Parent" : "333"},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_92_2_s_fu_386.flow_control_loop_pipe_sequential_init_U", "Parent" : "333"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_104_3_s_fu_398", "Parent" : "305", "Child" : ["337"],
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
	{"ID" : "337", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.grp_operator_1_Pipeline_VITIS_LOOP_104_3_s_fu_398.flow_control_loop_pipe_sequential_init_U", "Parent" : "336"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.fadd_32ns_32ns_32_4_full_dsp_1_U850", "Parent" : "305"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.fadd_32ns_32ns_32_4_full_dsp_1_U851", "Parent" : "305"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.fmul_32ns_32ns_32_3_max_dsp_1_U855", "Parent" : "305"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.fadd_32ns_32ns_32_4_full_dsp_1_U857", "Parent" : "305"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.fadd_32ns_32ns_32_4_full_dsp_1_U858", "Parent" : "305"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.fmul_32ns_32ns_32_3_max_dsp_1_U859", "Parent" : "305"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_1_s_fu_4045.fmul_32ns_32ns_32_3_max_dsp_1_U860", "Parent" : "305"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_4052", "Parent" : "0", "Child" : ["346", "348", "351", "354", "356", "357", "358", "359", "360"],
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
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_4052.grp_operator_2_Pipeline_VITIS_LOOP_215_1_fu_236", "Parent" : "345", "Child" : ["347"],
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
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_4052.grp_operator_2_Pipeline_VITIS_LOOP_215_1_fu_236.flow_control_loop_pipe_sequential_init_U", "Parent" : "346"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_4052.grp_operator_2_Pipeline_VITIS_LOOP_84_1_s_fu_271", "Parent" : "345", "Child" : ["349", "350"],
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
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_4052.grp_operator_2_Pipeline_VITIS_LOOP_84_1_s_fu_271.mux_32_32_1_1_U874", "Parent" : "348"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_4052.grp_operator_2_Pipeline_VITIS_LOOP_84_1_s_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "348"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_4052.grp_operator_2_Pipeline_VITIS_LOOP_92_2_s_fu_279", "Parent" : "345", "Child" : ["352", "353"],
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
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_4052.grp_operator_2_Pipeline_VITIS_LOOP_92_2_s_fu_279.mux_32_32_1_1_U879", "Parent" : "351"},
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_4052.grp_operator_2_Pipeline_VITIS_LOOP_92_2_s_fu_279.flow_control_loop_pipe_sequential_init_U", "Parent" : "351"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_4052.grp_operator_2_Pipeline_VITIS_LOOP_104_3_s_fu_291", "Parent" : "345", "Child" : ["355"],
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
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_4052.grp_operator_2_Pipeline_VITIS_LOOP_104_3_s_fu_291.flow_control_loop_pipe_sequential_init_U", "Parent" : "354"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_4052.fadd_32ns_32ns_32_4_full_dsp_1_U896", "Parent" : "345"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_4052.fadd_32ns_32ns_32_4_full_dsp_1_U897", "Parent" : "345"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_4052.fadd_32ns_32ns_32_4_full_dsp_1_U898", "Parent" : "345"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_4052.fdiv_32ns_32ns_32_9_no_dsp_1_U900", "Parent" : "345"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_2_s_fu_4052.fdiv_32ns_32ns_32_9_no_dsp_1_U901", "Parent" : "345"},
	{"ID" : "361", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_169_172_fu_4062", "Parent" : "0", "Child" : ["362", "363", "364", "365"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_169_172",
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
			{"Name" : "b8_num_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_0_0883_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_1169_0884_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_aux_2170_0885_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "aux", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_169_172_fu_4062.mux_32_32_1_1_U923", "Parent" : "361"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_169_172_fu_4062.mux_32_32_1_1_U924", "Parent" : "361"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_169_172_fu_4062.mux_32_32_1_1_U925", "Parent" : "361"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_169_172_fu_4062.flow_control_loop_pipe_sequential_init_U", "Parent" : "361"},
	{"ID" : "366", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_187_173_fu_4073", "Parent" : "0", "Child" : ["367"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_187_173",
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
			{"Name" : "b8_num_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "aux", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b8_num_2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_load_6970_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_load_5962_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_load_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_187_173_fu_4073.flow_control_loop_pipe_sequential_init_U", "Parent" : "366"},
	{"ID" : "368", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_174_fu_4090", "Parent" : "0", "Child" : ["369", "370"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_84_174",
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
			{"Name" : "b8_num_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_25_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_174_fu_4090.mux_32_32_1_1_U947", "Parent" : "368"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_174_fu_4090.flow_control_loop_pipe_sequential_init_U", "Parent" : "368"},
	{"ID" : "371", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_275_fu_4098", "Parent" : "0", "Child" : ["372", "373"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_92_275",
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
			{"Name" : "b8_num_2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_1_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_6970_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_5962_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_6967_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_load_5959_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_load_4953_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_275_fu_4098.mux_32_32_1_1_U952", "Parent" : "371"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_275_fu_4098.flow_control_loop_pipe_sequential_init_U", "Parent" : "371"},
	{"ID" : "374", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_376_fu_4113", "Parent" : "0", "Child" : ["375"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_104_376",
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
			{"Name" : "b8_num_load_6966", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_5958", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_4952", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "b8_num_load_6964_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_load_5956_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b8_num_load_4950_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_376_fu_4113.flow_control_loop_pipe_sequential_init_U", "Parent" : "374"},
	{"ID" : "376", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_177_fu_4129", "Parent" : "0", "Child" : ["377", "378"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_84_177",
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
			{"Name" : "tmp_314", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_315", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_316", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_177_fu_4129.mux_32_32_1_1_U973", "Parent" : "376"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_84_177_fu_4129.flow_control_loop_pipe_sequential_init_U", "Parent" : "376"},
	{"ID" : "379", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_278_fu_4137", "Parent" : "0", "Child" : ["380", "381"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_92_278",
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
			{"Name" : "tmp_316", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_315", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_314", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "b5_num_load_7987_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b5_num_load_6981_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b5_num_load_5975_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_278_fu_4137.mux_32_32_1_1_U978", "Parent" : "379"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_92_278_fu_4137.flow_control_loop_pipe_sequential_init_U", "Parent" : "379"},
	{"ID" : "382", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_379_fu_4149", "Parent" : "0", "Child" : ["383"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_104_379",
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
			{"Name" : "b5_num_load_7985", "Type" : "None", "Direction" : "I"},
			{"Name" : "b5_num_load_6979", "Type" : "None", "Direction" : "I"},
			{"Name" : "b5_num_load_5973", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln104_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "b5_num_load_7984_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b5_num_load_6978_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b5_num_load_5972_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_104_379_fu_4149.flow_control_loop_pipe_sequential_init_U", "Parent" : "382"},
	{"ID" : "384", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_44_1_fu_4165", "Parent" : "0", "Child" : ["385"],
		"CDFG" : "main_Pipeline_VITIS_LOOP_44_1",
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
			{"Name" : "f_num_1_0_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "f_num_2_0_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_44_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_Pipeline_VITIS_LOOP_44_1_fu_4165.flow_control_loop_pipe_sequential_init_U", "Parent" : "384"},
	{"ID" : "386", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_4171", "Parent" : "0", "Child" : ["387", "396"],
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
			{"Name" : "this_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "387", "SubInstance" : "grp_p_sum_2_fu_209", "Port" : "b_num", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_num_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_4171.grp_p_sum_2_fu_209", "Parent" : "386", "Child" : ["388", "391", "394"],
		"CDFG" : "p_sum_2",
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
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_num", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_num_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "diff_p", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_4171.grp_p_sum_2_fu_209.grp_p_sum_2_Pipeline_VITIS_LOOP_84_1_fu_285", "Parent" : "387", "Child" : ["389", "390"],
		"CDFG" : "p_sum_2_Pipeline_VITIS_LOOP_84_1",
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
			{"Name" : "tmp_321", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_tmp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "389", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_4171.grp_p_sum_2_fu_209.grp_p_sum_2_Pipeline_VITIS_LOOP_84_1_fu_285.mux_32_32_1_1_U998", "Parent" : "388"},
	{"ID" : "390", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_4171.grp_p_sum_2_fu_209.grp_p_sum_2_Pipeline_VITIS_LOOP_84_1_fu_285.flow_control_loop_pipe_sequential_init_U", "Parent" : "388"},
	{"ID" : "391", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_4171.grp_p_sum_2_fu_209.grp_p_sum_2_Pipeline_VITIS_LOOP_92_2_fu_295", "Parent" : "387", "Child" : ["392", "393"],
		"CDFG" : "p_sum_2_Pipeline_VITIS_LOOP_92_2",
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
			{"Name" : "tmp_321", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln92", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "392", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_4171.grp_p_sum_2_fu_209.grp_p_sum_2_Pipeline_VITIS_LOOP_92_2_fu_295.mux_32_32_1_1_U1003", "Parent" : "391"},
	{"ID" : "393", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_4171.grp_p_sum_2_fu_209.grp_p_sum_2_Pipeline_VITIS_LOOP_92_2_fu_295.flow_control_loop_pipe_sequential_init_U", "Parent" : "391"},
	{"ID" : "394", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_4171.grp_p_sum_2_fu_209.grp_p_sum_2_Pipeline_VITIS_LOOP_104_3_fu_309", "Parent" : "387", "Child" : ["395"],
		"CDFG" : "p_sum_2_Pipeline_VITIS_LOOP_104_3",
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
			{"Name" : "zext_ln104_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "agg_result_num_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num16_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_result_num2_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_104_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "395", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_4171.grp_p_sum_2_fu_209.grp_p_sum_2_Pipeline_VITIS_LOOP_104_3_fu_309.flow_control_loop_pipe_sequential_init_U", "Parent" : "394"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_3_fu_4171.mux_32_32_1_1_U1031", "Parent" : "386"},
	{"ID" : "397", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_4_full_dsp_1_U1039", "Parent" : "0"},
	{"ID" : "398", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U1040", "Parent" : "0"},
	{"ID" : "399", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U1041", "Parent" : "0"},
	{"ID" : "400", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U1042", "Parent" : "0"},
	{"ID" : "401", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U1043", "Parent" : "0"},
	{"ID" : "402", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_9_no_dsp_1_U1044", "Parent" : "0"},
	{"ID" : "403", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_9_no_dsp_1_U1045", "Parent" : "0"},
	{"ID" : "404", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_9_no_dsp_1_U1046", "Parent" : "0"},
	{"ID" : "405", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.uitofp_32ns_32_4_no_dsp_1_U1047", "Parent" : "0"},
	{"ID" : "406", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U1048", "Parent" : "0"},
	{"ID" : "407", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U1049", "Parent" : "0"},
	{"ID" : "408", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U1050", "Parent" : "0"},
	{"ID" : "409", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U1051", "Parent" : "0"},
	{"ID" : "410", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U1052", "Parent" : "0"},
	{"ID" : "411", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U1053", "Parent" : "0"},
	{"ID" : "412", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U1054", "Parent" : "0"},
	{"ID" : "413", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U1055", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	main {
		v {Type I LastRead -1 FirstWrite -1}}
	main_Pipeline_VITIS_LOOP_21_1 {
		b0_num_2_0888_out {Type O LastRead -1 FirstWrite 0}
		b0_num_1_0887_out {Type O LastRead -1 FirstWrite 0}
		b0_num_0_0886_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_21_125 {
		b1_num_2_0891_out {Type O LastRead -1 FirstWrite 0}
		b1_num_1_0890_out {Type O LastRead -1 FirstWrite 0}
		b1_num_0_0889_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_21_126 {
		b2_num_2_0894_out {Type O LastRead -1 FirstWrite 0}
		b2_num_1_0893_out {Type O LastRead -1 FirstWrite 0}
		b2_num_0_0892_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_21_127 {
		this_num_2_read_assign_out {Type O LastRead -1 FirstWrite 0}
		this_num_1_read_assign_out {Type O LastRead -1 FirstWrite 0}
		this_num_0_read_assign_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_21_128 {
		b4_num_2_0897_out {Type O LastRead -1 FirstWrite 0}
		b4_num_1_0896_out {Type O LastRead -1 FirstWrite 0}
		b4_num_0_0895_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_21_129 {
		b5_num_load_2_out {Type O LastRead -1 FirstWrite 0}
		b5_num_load_1_out {Type O LastRead -1 FirstWrite 0}
		b5_num_load_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_21_130 {
		b6_num_2_0900_out {Type O LastRead -1 FirstWrite 0}
		b6_num_1_0899_out {Type O LastRead -1 FirstWrite 0}
		b6_num_0_0898_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_21_131 {
		b7_num_2_0_out {Type O LastRead -1 FirstWrite 0}
		b7_num_1_0_out {Type O LastRead -1 FirstWrite 0}
		b7_num_0_0_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_21_132 {
		b8_num_2_0_out {Type O LastRead -1 FirstWrite 0}
		b8_num_1_0_out {Type O LastRead -1 FirstWrite 0}
		b8_num_0_0_out {Type O LastRead -1 FirstWrite 0}
		b8_num_load_2_out {Type O LastRead -1 FirstWrite 0}
		b8_num_load_1_out {Type O LastRead -1 FirstWrite 0}
		b8_num_load_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_21_133 {
		b9_num_2_0903_out {Type O LastRead -1 FirstWrite 0}
		b9_num_1_0902_out {Type O LastRead -1 FirstWrite 0}
		b9_num_0_0901_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_21_134 {
		b10_num_2_0906_out {Type O LastRead -1 FirstWrite 0}
		b10_num_1_0905_out {Type O LastRead -1 FirstWrite 0}
		b10_num_0_0904_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_21_135 {
		b11_num_2_0909_out {Type O LastRead -1 FirstWrite 0}
		b11_num_1_0908_out {Type O LastRead -1 FirstWrite 0}
		b11_num_0_0907_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_45_1 {
		r_num {Type O LastRead -1 FirstWrite 0}
		r_p {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_21_163 {
		b1500_num_2_0_out {Type O LastRead -1 FirstWrite 0}
		b1500_num_1_0_out {Type O LastRead -1 FirstWrite 0}
		b1500_num_0_0_out {Type O LastRead -1 FirstWrite 0}
		b1500_num_load_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_21_164 {
		b1501_num_0_0921_out {Type O LastRead -1 FirstWrite 0}
		b1501_num_1_0920_out {Type O LastRead -1 FirstWrite 0}
		b1501_num_2_0919_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_21_165 {
		b1502_num_0_0918_out {Type O LastRead -1 FirstWrite 0}
		b1502_num_1_0917_out {Type O LastRead -1 FirstWrite 0}
		b1502_num_2_0916_out {Type O LastRead -1 FirstWrite 0}}
	sqrt {
		p_read {Type I LastRead 1 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		p_read2 {Type I LastRead 1 FirstWrite -1}
		b_p_read {Type I LastRead 1 FirstWrite -1}
		b_1 {Type I LastRead 18 FirstWrite -1}
		b_1_offset {Type I LastRead 0 FirstWrite -1}}
	operator_add {
		this_p_read {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 11 FirstWrite -1}
		this_1_offset {Type I LastRead 0 FirstWrite -1}
		b_p_read {Type I LastRead 0 FirstWrite -1}
		b_1_offset {Type I LastRead 0 FirstWrite -1}}
	p_sum {
		p_read13 {Type I LastRead 1 FirstWrite -1}
		b_1 {Type I LastRead 11 FirstWrite -1}
		a_1_offset {Type I LastRead 0 FirstWrite -1}
		b_1_offset {Type I LastRead 1 FirstWrite -1}
		diff_p {Type I LastRead 1 FirstWrite -1}}
	p_sum_Pipeline_VITIS_LOOP_84_1 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_6 {Type I LastRead 0 FirstWrite -1}
		tmp_329 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	p_sum_Pipeline_VITIS_LOOP_92_2 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_6 {Type I LastRead 0 FirstWrite -1}
		tmp_329 {Type I LastRead 0 FirstWrite -1}
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
		zext_ln104_25 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_4_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num16_3_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_3_out {Type O LastRead -1 FirstWrite 1}}
	operator_2 {
		this_p_read {Type I LastRead 0 FirstWrite -1}
		this_1 {Type I LastRead 24 FirstWrite -1}
		this_1_offset {Type I LastRead 0 FirstWrite -1}
		b_p_read {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}}
	p_sum_1 {
		p_read13 {Type I LastRead 2 FirstWrite -1}
		a_1 {Type I LastRead 2 FirstWrite -1}
		a_1_offset {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 2 FirstWrite -1}
		p_read10 {Type I LastRead 2 FirstWrite -1}
		p_read11 {Type I LastRead 2 FirstWrite -1}
		diff_p {Type I LastRead 2 FirstWrite -1}}
	p_sum_1_Pipeline_VITIS_LOOP_84_1 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_6 {Type I LastRead 0 FirstWrite -1}
		tmp_303 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	p_sum_1_Pipeline_VITIS_LOOP_92_2 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_6 {Type I LastRead 0 FirstWrite -1}
		tmp_303 {Type I LastRead 0 FirstWrite -1}
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
		zext_ln104_23 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_4_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num16_3_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_3_out {Type O LastRead -1 FirstWrite 1}}
	operator_2_Pipeline_VITIS_LOOP_84_1 {
		agg_result_1_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_112_5 {Type I LastRead 0 FirstWrite -1}
		tmp_94 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	operator_2_Pipeline_VITIS_LOOP_92_2 {
		agg_result_1_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_112_5 {Type I LastRead 0 FirstWrite -1}
		tmp_94 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		agg_result_1_1_out {Type O LastRead -1 FirstWrite 1}
		agg_result_112_0_out {Type O LastRead -1 FirstWrite 1}
		agg_result_12_0_out {Type O LastRead -1 FirstWrite 1}}
	operator_2_Pipeline_VITIS_LOOP_104_3 {
		agg_result_1_3 {Type I LastRead 0 FirstWrite -1}
		agg_result_112_2 {Type I LastRead 0 FirstWrite -1}
		agg_result_12_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_8 {Type I LastRead 0 FirstWrite -1}
		agg_result_1_4_out {Type O LastRead -1 FirstWrite 1}
		agg_result_112_3_out {Type O LastRead -1 FirstWrite 1}
		agg_result_12_3_out {Type O LastRead -1 FirstWrite 1}}
	mul_body {
		p_read {Type I LastRead 1 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		p_read2 {Type I LastRead 1 FirstWrite -1}
		this_p_read {Type I LastRead 1 FirstWrite -1}
		b_1 {Type I LastRead 3 FirstWrite -1}
		this_1_offset {Type I LastRead 1 FirstWrite -1}
		b_p_read {Type I LastRead 1 FirstWrite -1}
		b_1_offset {Type I LastRead 0 FirstWrite -1}}
	mul_body_Pipeline_VITIS_LOOP_84_1 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num12_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_0 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	mul_body_Pipeline_VITIS_LOOP_92_2 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num12_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_0 {Type I LastRead 0 FirstWrite -1}
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
		agg_result_num2_5_out {Type O LastRead -1 FirstWrite 1}}
	operator_1_1 {
		this_p_read {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 4 FirstWrite -1}
		this_1_offset {Type I LastRead 0 FirstWrite -1}
		b_p_read {Type I LastRead 0 FirstWrite -1}
		b_1_offset {Type I LastRead 0 FirstWrite -1}}
	p_mul {
		num_a_1_read {Type I LastRead 1 FirstWrite -1}
		num_a_2_read {Type I LastRead 1 FirstWrite -1}
		num_b {Type I LastRead 1 FirstWrite -1}
		num_b_offset {Type I LastRead 0 FirstWrite -1}}
	operator_1_1_Pipeline_VITIS_LOOP_84_1 {
		tmp_63 {Type I LastRead 0 FirstWrite -1}
		tmp_64 {Type I LastRead 0 FirstWrite -1}
		tmp_65 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	operator_1_1_Pipeline_VITIS_LOOP_92_2 {
		tmp_65 {Type I LastRead 0 FirstWrite -1}
		tmp_64 {Type I LastRead 0 FirstWrite -1}
		tmp_63 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		c_num_load_221_out {Type O LastRead -1 FirstWrite 1}
		c_num_load15_out {Type O LastRead -1 FirstWrite 1}
		num_res_assign_load9_out {Type O LastRead -1 FirstWrite 1}}
	operator_1_1_Pipeline_VITIS_LOOP_104_3 {
		c_num_load_219 {Type I LastRead 0 FirstWrite -1}
		c_num_load13 {Type I LastRead 0 FirstWrite -1}
		num_res_assign_load7 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_6 {Type I LastRead 0 FirstWrite -1}
		c_num_load_218_out {Type O LastRead -1 FirstWrite 1}
		c_num_load12_out {Type O LastRead -1 FirstWrite 1}
		num_res_assign_load6_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_53_1 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 1 FirstWrite -1}
		sub_ln155 {Type I LastRead 0 FirstWrite -1}
		res_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_458_1 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 1 FirstWrite -1}
		sub_ln155 {Type I LastRead 0 FirstWrite -1}
		res_3_out {Type O LastRead -1 FirstWrite 1}}
	operator_1 {
		p_read {Type I LastRead 1 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		p_read2 {Type I LastRead 1 FirstWrite -1}
		this_p_read {Type I LastRead 1 FirstWrite -1}
		this_1 {Type I LastRead 13 FirstWrite -1}
		this_1_offset {Type I LastRead 1 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}}
	operator_1_Pipeline_VITIS_LOOP_627_1 {
		sub_i1 {Type I LastRead 0 FirstWrite -1}
		this_p_read_cast {Type I LastRead 0 FirstWrite -1}
		sub_ln643 {Type I LastRead 0 FirstWrite -1}
		this_1 {Type I LastRead 0 FirstWrite -1}
		num_res_1_02_out {Type O LastRead -1 FirstWrite 0}
		num_res_2_01_out {Type O LastRead -1 FirstWrite 0}}
	operator_1_Pipeline_VITIS_LOOP_84_1 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_0 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	operator_1_Pipeline_VITIS_LOOP_92_2 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_0 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_1_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num16_1_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_1_out {Type O LastRead -1 FirstWrite 1}}
	operator_1_Pipeline_VITIS_LOOP_104_3 {
		agg_result_num_3 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_3 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_10 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_4_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num16_4_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_4_out {Type O LastRead -1 FirstWrite 1}}
	operator_1_Pipeline_VITIS_LOOP_21_1 {
		n {Type I LastRead 0 FirstWrite -1}
		num_res_1_02_reload {Type I LastRead 0 FirstWrite -1}
		num_res_2_01_reload {Type I LastRead 0 FirstWrite -1}
		write_flag4_6_out {Type O LastRead -1 FirstWrite 0}
		agg_result_num_6_out {Type O LastRead -1 FirstWrite 0}
		agg_result_num16_6_out {Type O LastRead -1 FirstWrite 0}
		write_flag8_6_out {Type O LastRead -1 FirstWrite 0}
		write_flag_6_out {Type O LastRead -1 FirstWrite 0}
		agg_result_num2_6_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_84_1 {
		tmp_305 {Type I LastRead 0 FirstWrite -1}
		tmp_306 {Type I LastRead 0 FirstWrite -1}
		tmp_307 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_22_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_92_2 {
		tmp_305 {Type I LastRead 0 FirstWrite -1}
		tmp_306 {Type I LastRead 0 FirstWrite -1}
		tmp_307 {Type I LastRead 0 FirstWrite -1}
		zext_ln92_1 {Type I LastRead 0 FirstWrite -1}
		select_ln92 {Type I LastRead 0 FirstWrite -1}
		res_num_load_21005_out {Type O LastRead -1 FirstWrite 1}
		res_num_load_1999_out {Type O LastRead -1 FirstWrite 1}
		res_num_load993_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_104_3 {
		res_num_load_21003 {Type I LastRead 0 FirstWrite -1}
		res_num_load_1997 {Type I LastRead 0 FirstWrite -1}
		res_num_load991 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_7 {Type I LastRead 0 FirstWrite -1}
		select_ln104_1 {Type I LastRead 0 FirstWrite -1}
		res_num_load_21002_out {Type O LastRead -1 FirstWrite 0}
		res_num_load_1996_out {Type O LastRead -1 FirstWrite 0}
		res_num_load990_out {Type O LastRead -1 FirstWrite 0}}
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
		res_num_load2_out {Type O LastRead -1 FirstWrite 1}}
	operator_div {
		n {Type I LastRead 0 FirstWrite -1}
		b_p_read {Type I LastRead 1 FirstWrite -1}
		b_1 {Type I LastRead 4 FirstWrite -1}
		b_1_offset {Type I LastRead 1 FirstWrite -1}}
	operator_Pipeline_VITIS_LOOP_84_1 {
		tmp_115 {Type I LastRead 0 FirstWrite -1}
		tmp_116 {Type I LastRead 0 FirstWrite -1}
		tmp_117 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	operator_Pipeline_VITIS_LOOP_92_2 {
		tmp_117 {Type I LastRead 0 FirstWrite -1}
		tmp_116 {Type I LastRead 0 FirstWrite -1}
		tmp_115 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		this_num_load_1243_out {Type O LastRead -1 FirstWrite 1}
		this_num_load_1137_out {Type O LastRead -1 FirstWrite 1}
		this_num_load_1031_out {Type O LastRead -1 FirstWrite 1}}
	operator_Pipeline_VITIS_LOOP_104_3 {
		this_num_load_1241 {Type I LastRead 0 FirstWrite -1}
		this_num_load_1135 {Type I LastRead 0 FirstWrite -1}
		this_num_load_1029 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_4 {Type I LastRead 0 FirstWrite -1}
		this_num_load_1240_out {Type O LastRead -1 FirstWrite 1}
		this_num_load_1134_out {Type O LastRead -1 FirstWrite 1}
		this_num_load_1028_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_68_1 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 0 FirstWrite -1}
		res_4_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_497_1 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 0 FirstWrite -1}
		res_6_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_311_1 {
		num_aux_2_1_1 {Type I LastRead 0 FirstWrite -1}
		num_aux_1_1_1 {Type I LastRead 0 FirstWrite -1}
		num_aux_0_1_1 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 0 FirstWrite -1}
		num_aux_2_1_2_out {Type O LastRead -1 FirstWrite 0}
		num_aux_1_1_2_out {Type O LastRead -1 FirstWrite 0}
		num_aux_0_1_2_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_315_2 {
		sub_ln290 {Type I LastRead 0 FirstWrite -1}
		b_num {Type IO LastRead 0 FirstWrite 6}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		sub11_i {Type I LastRead 0 FirstWrite -1}
		trunc_ln297_1 {Type I LastRead 0 FirstWrite -1}
		num_aux_0_1_2_reload {Type I LastRead 0 FirstWrite -1}
		num_aux_1_1_2_reload {Type I LastRead 0 FirstWrite -1}
		num_aux_2_1_2_reload {Type I LastRead 0 FirstWrite -1}}
	main_Pipeline_VITIS_LOOP_84_136 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 0 FirstWrite -1}
		idx_tmp_30_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_92_237 {
		zext_ln92_4 {Type I LastRead 0 FirstWrite -1}
		select_ln92_1 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type IO LastRead 1 FirstWrite 2}}
	main_Pipeline_VITIS_LOOP_104_338 {
		zext_ln104_12 {Type I LastRead 0 FirstWrite -1}
		select_ln104_4 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_311_139 {
		num_aux_2_16 {Type I LastRead 0 FirstWrite -1}
		num_aux_1_14 {Type I LastRead 0 FirstWrite -1}
		num_aux_0_12 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 0 FirstWrite -1}
		num_aux_2_2_out {Type O LastRead -1 FirstWrite 0}
		num_aux_1_2_out {Type O LastRead -1 FirstWrite 0}
		num_aux_0_2_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_315_240 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type O LastRead -1 FirstWrite 5}
		sub11_i_i {Type I LastRead 0 FirstWrite -1}
		tmp_309 {Type I LastRead 0 FirstWrite -1}
		tmp_310 {Type I LastRead 0 FirstWrite -1}
		tmp_311 {Type I LastRead 0 FirstWrite -1}
		trunc_ln297_3 {Type I LastRead 0 FirstWrite -1}
		num_aux_0_2_reload {Type I LastRead 0 FirstWrite -1}
		num_aux_1_2_reload {Type I LastRead 0 FirstWrite -1}
		num_aux_2_2_reload {Type I LastRead 0 FirstWrite -1}}
	main_Pipeline_VITIS_LOOP_84_141 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 0 FirstWrite -1}
		idx_tmp_33_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_92_242 {
		zext_ln92_5 {Type I LastRead 0 FirstWrite -1}
		select_ln92_2 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type IO LastRead 1 FirstWrite 2}}
	main_Pipeline_VITIS_LOOP_104_343 {
		zext_ln104_13 {Type I LastRead 0 FirstWrite -1}
		select_ln104_5 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_169_1 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 1 FirstWrite -1}
		b_num_load_77 {Type I LastRead 0 FirstWrite -1}
		b_num_load_37 {Type I LastRead 0 FirstWrite -1}
		b_num_load_38 {Type I LastRead 0 FirstWrite -1}
		aux_4 {Type O LastRead -1 FirstWrite 17}}
	main_Pipeline_VITIS_LOOP_187_1 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type O LastRead -1 FirstWrite 1}
		aux_4 {Type I LastRead 0 FirstWrite -1}}
	main_Pipeline_VITIS_LOOP_84_144 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 0 FirstWrite -1}
		idx_tmp_36_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_92_245 {
		zext_ln92_6 {Type I LastRead 0 FirstWrite -1}
		select_ln92_3 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type IO LastRead 1 FirstWrite 2}}
	main_Pipeline_VITIS_LOOP_104_346 {
		zext_ln104_14 {Type I LastRead 0 FirstWrite -1}
		select_ln104_6 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_215_1 {
		den_norm_2_1 {Type I LastRead 0 FirstWrite -1}
		den_norm_1_1 {Type I LastRead 0 FirstWrite -1}
		den_norm_28591024 {Type I LastRead 0 FirstWrite -1}
		den_norm_18581019 {Type I LastRead 0 FirstWrite -1}
		sub_ln290 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 0 FirstWrite -1}
		normalizer {Type I LastRead 0 FirstWrite -1}
		den_norm_2_2_out {Type O LastRead -1 FirstWrite 10}
		den_norm_1_2_out {Type O LastRead -1 FirstWrite 10}
		den_norm_2852_out {Type O LastRead -1 FirstWrite 10}
		den_norm_1851_out {Type O LastRead -1 FirstWrite 10}}
	p_mul_1 {
		num_a_1_read {Type I LastRead 1 FirstWrite -1}
		num_a_2_read {Type I LastRead 1 FirstWrite -1}
		num_b {Type I LastRead 1 FirstWrite -1}
		num_b_offset {Type I LastRead 0 FirstWrite -1}
		num_res_0_read {Type I LastRead 1 FirstWrite -1}
		num_res_1_read {Type I LastRead 1 FirstWrite -1}
		num_res_2_read {Type I LastRead 1 FirstWrite -1}}
	p_mul_161 {
		num_a_0_read {Type I LastRead 0 FirstWrite -1}
		num_a_1_read {Type I LastRead 0 FirstWrite -1}
		num_a_2_read {Type I LastRead 0 FirstWrite -1}
		num_b_0_read {Type I LastRead 0 FirstWrite -1}
		num_b_1_read {Type I LastRead 0 FirstWrite -1}
		num_b_2_read {Type I LastRead 0 FirstWrite -1}
		num_res_0_read {Type I LastRead 0 FirstWrite -1}
		num_res_1_read {Type I LastRead 0 FirstWrite -1}
		num_res_2_read {Type I LastRead 0 FirstWrite -1}}
	main_Pipeline_VITIS_LOOP_84_147 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 0 FirstWrite -1}
		idx_tmp_39_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_92_248 {
		zext_ln92_7 {Type I LastRead 0 FirstWrite -1}
		select_ln92_4 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type IO LastRead 1 FirstWrite 2}}
	main_Pipeline_VITIS_LOOP_104_349 {
		zext_ln104_15 {Type I LastRead 0 FirstWrite -1}
		select_ln104_7 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_84_150 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 0 FirstWrite -1}
		idx_tmp_42_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_92_251 {
		zext_ln92_8 {Type I LastRead 0 FirstWrite -1}
		select_ln92_5 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type IO LastRead 1 FirstWrite 2}}
	main_Pipeline_VITIS_LOOP_104_352 {
		zext_ln104_16 {Type I LastRead 0 FirstWrite -1}
		select_ln104_8 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_627_1 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type IO LastRead 1 FirstWrite 2}
		sub_ln629 {Type I LastRead 0 FirstWrite -1}
		trunc_ln56 {Type I LastRead 0 FirstWrite -1}}
	main_Pipeline_VITIS_LOOP_84_153 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 0 FirstWrite -1}
		idx_tmp_45_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_92_254 {
		zext_ln92_9 {Type I LastRead 0 FirstWrite -1}
		select_ln92_6 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type IO LastRead 1 FirstWrite 2}}
	main_Pipeline_VITIS_LOOP_104_355 {
		zext_ln104_17 {Type I LastRead 0 FirstWrite -1}
		select_ln104_9 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_627_156 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type IO LastRead 1 FirstWrite 2}
		sub_ln629_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln57 {Type I LastRead 0 FirstWrite -1}}
	main_Pipeline_VITIS_LOOP_84_157 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 0 FirstWrite -1}
		idx_tmp_48_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_92_258 {
		zext_ln92_10 {Type I LastRead 0 FirstWrite -1}
		select_ln92_7 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type IO LastRead 1 FirstWrite 2}}
	main_Pipeline_VITIS_LOOP_104_359 {
		zext_ln104_18 {Type I LastRead 0 FirstWrite -1}
		select_ln104_10 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_84_160 {
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 0 FirstWrite -1}
		idx_tmp_51_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_92_261 {
		zext_ln92_11 {Type I LastRead 0 FirstWrite -1}
		select_ln92_8 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type IO LastRead 1 FirstWrite 2}}
	main_Pipeline_VITIS_LOOP_104_362 {
		zext_ln104_19 {Type I LastRead 0 FirstWrite -1}
		select_ln104_11 {Type I LastRead 0 FirstWrite -1}
		sub_ln542 {Type I LastRead 0 FirstWrite -1}
		b_num {Type O LastRead -1 FirstWrite 0}}
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
		agg_result_num2_5_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_169_166 {
		b1500_num_0_0_reload {Type I LastRead 0 FirstWrite -1}
		b1500_num_1_0_reload {Type I LastRead 0 FirstWrite -1}
		b1500_num_2_0_reload {Type I LastRead 0 FirstWrite -1}
		b1502_num_0_0918_reload {Type I LastRead 0 FirstWrite -1}
		b1502_num_1_0917_reload {Type I LastRead 0 FirstWrite -1}
		b1502_num_2_0916_reload {Type I LastRead 0 FirstWrite -1}
		aux_3 {Type O LastRead -1 FirstWrite 16}}
	main_Pipeline_VITIS_LOOP_187_167 {
		b1500_num_2_0_reload {Type I LastRead 0 FirstWrite -1}
		b1500_num_1_0_reload {Type I LastRead 0 FirstWrite -1}
		b1500_num_0_0_reload {Type I LastRead 0 FirstWrite -1}
		aux_3 {Type I LastRead 0 FirstWrite -1}
		b1500_num_2_2_out {Type O LastRead -1 FirstWrite 0}
		b1500_num_1_2_out {Type O LastRead -1 FirstWrite 0}
		b1500_num_0_2_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_84_168 {
		b1500_num_0_2_reload {Type I LastRead 0 FirstWrite -1}
		b1500_num_1_2_reload {Type I LastRead 0 FirstWrite -1}
		b1500_num_2_2_reload {Type I LastRead 0 FirstWrite -1}
		idx_tmp_19_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_92_269 {
		b1500_num_2_2_reload {Type I LastRead 0 FirstWrite -1}
		b1500_num_1_2_reload {Type I LastRead 0 FirstWrite -1}
		b1500_num_0_2_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		b1500_num_2_4_out {Type O LastRead -1 FirstWrite 1}
		b1500_num_1_4_out {Type O LastRead -1 FirstWrite 1}
		b1500_num_0_4_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_104_370 {
		b1500_num_2_6 {Type I LastRead 0 FirstWrite -1}
		b1500_num_1_6 {Type I LastRead 0 FirstWrite -1}
		b1500_num_0_6 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_6 {Type I LastRead 0 FirstWrite -1}
		b1500_num_2_7_out {Type O LastRead -1 FirstWrite 1}
		b1500_num_1_7_out {Type O LastRead -1 FirstWrite 1}
		b1500_num_0_7_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_21_171 {
		b1503_num_0_0915_out {Type O LastRead -1 FirstWrite 0}
		b1503_num_1_0914_out {Type O LastRead -1 FirstWrite 0}
		b1503_num_2_0913_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_362_1 {
		b8_num_0_0_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_1_0_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_2_0_reload {Type I LastRead 0 FirstWrite -1}
		num_aux_2170_0885_out {Type O LastRead -1 FirstWrite 0}
		num_aux_1169_0884_out {Type O LastRead -1 FirstWrite 0}
		num_aux_0_0883_out {Type O LastRead -1 FirstWrite 0}}
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
		agg_result_1_0_028_out {Type O LastRead -1 FirstWrite 1}}
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
		agg_result_1_0_06_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_169_172 {
		b8_num_0_0_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_1_0_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_2_0_reload {Type I LastRead 0 FirstWrite -1}
		num_aux_0_0883_reload {Type I LastRead 0 FirstWrite -1}
		num_aux_1169_0884_reload {Type I LastRead 0 FirstWrite -1}
		num_aux_2170_0885_reload {Type I LastRead 0 FirstWrite -1}
		aux {Type O LastRead -1 FirstWrite 16}}
	main_Pipeline_VITIS_LOOP_187_173 {
		b8_num_2_0_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_1_0_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_0_0_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_load_2_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_load_1_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_load_reload {Type I LastRead 0 FirstWrite -1}
		aux {Type I LastRead 0 FirstWrite -1}
		b8_num_2_2_out {Type O LastRead -1 FirstWrite 0}
		b8_num_1_2_out {Type O LastRead -1 FirstWrite 0}
		b8_num_0_2_out {Type O LastRead -1 FirstWrite 0}
		b8_num_load_6970_out {Type O LastRead -1 FirstWrite 0}
		b8_num_load_5962_out {Type O LastRead -1 FirstWrite 0}
		b8_num_load_3_out {Type O LastRead -1 FirstWrite 0}}
	main_Pipeline_VITIS_LOOP_84_174 {
		b8_num_0_2_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_1_2_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_2_2_reload {Type I LastRead 0 FirstWrite -1}
		idx_tmp_25_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_92_275 {
		b8_num_2_2_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_1_2_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_0_2_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_load_6970_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_load_5962_reload {Type I LastRead 0 FirstWrite -1}
		b8_num_load_3_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln92_2 {Type I LastRead 0 FirstWrite -1}
		xor_ln92_2 {Type I LastRead 0 FirstWrite -1}
		b8_num_load_6967_out {Type O LastRead -1 FirstWrite 1}
		b8_num_load_5959_out {Type O LastRead -1 FirstWrite 1}
		b8_num_load_4953_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_104_376 {
		b8_num_load_6966 {Type I LastRead 0 FirstWrite -1}
		b8_num_load_5958 {Type I LastRead 0 FirstWrite -1}
		b8_num_load_4952 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_9 {Type I LastRead 0 FirstWrite -1}
		b8_num_load_6964_out {Type O LastRead -1 FirstWrite 1}
		b8_num_load_5956_out {Type O LastRead -1 FirstWrite 1}
		b8_num_load_4950_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_84_177 {
		tmp_314 {Type I LastRead 0 FirstWrite -1}
		tmp_315 {Type I LastRead 0 FirstWrite -1}
		tmp_316 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_92_278 {
		tmp_316 {Type I LastRead 0 FirstWrite -1}
		tmp_315 {Type I LastRead 0 FirstWrite -1}
		tmp_314 {Type I LastRead 0 FirstWrite -1}
		zext_ln92_3 {Type I LastRead 0 FirstWrite -1}
		xor_ln92_3 {Type I LastRead 0 FirstWrite -1}
		b5_num_load_7987_out {Type O LastRead -1 FirstWrite 1}
		b5_num_load_6981_out {Type O LastRead -1 FirstWrite 1}
		b5_num_load_5975_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_104_379 {
		b5_num_load_7985 {Type I LastRead 0 FirstWrite -1}
		b5_num_load_6979 {Type I LastRead 0 FirstWrite -1}
		b5_num_load_5973 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_11 {Type I LastRead 0 FirstWrite -1}
		b5_num_load_7984_out {Type O LastRead -1 FirstWrite 1}
		b5_num_load_6978_out {Type O LastRead -1 FirstWrite 1}
		b5_num_load_5972_out {Type O LastRead -1 FirstWrite 1}}
	main_Pipeline_VITIS_LOOP_44_1 {
		f_num_1_0_out {Type IO LastRead 0 FirstWrite 0}
		f_num_2_0_out {Type IO LastRead 0 FirstWrite 0}}
	operator_3 {
		this_p_read {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		b_p_read {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 10 FirstWrite -1}
		b_num_offset {Type I LastRead 0 FirstWrite -1}}
	p_sum_2 {
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		b_num {Type I LastRead 10 FirstWrite -1}
		b_num_offset {Type I LastRead 0 FirstWrite -1}
		diff_p {Type I LastRead 0 FirstWrite -1}}
	p_sum_2_Pipeline_VITIS_LOOP_84_1 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_6 {Type I LastRead 0 FirstWrite -1}
		tmp_321 {Type I LastRead 0 FirstWrite -1}
		idx_tmp_out {Type O LastRead -1 FirstWrite 1}}
	p_sum_2_Pipeline_VITIS_LOOP_92_2 {
		agg_result_num_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_6 {Type I LastRead 0 FirstWrite -1}
		tmp_321 {Type I LastRead 0 FirstWrite -1}
		zext_ln92 {Type I LastRead 0 FirstWrite -1}
		xor_ln92 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_1_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num16_0_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_0_out {Type O LastRead -1 FirstWrite 1}}
	p_sum_2_Pipeline_VITIS_LOOP_104_3 {
		agg_result_num_3 {Type I LastRead 0 FirstWrite -1}
		agg_result_num16_2 {Type I LastRead 0 FirstWrite -1}
		agg_result_num2_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln104 {Type I LastRead 0 FirstWrite -1}
		zext_ln104_21 {Type I LastRead 0 FirstWrite -1}
		agg_result_num_4_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num16_3_out {Type O LastRead -1 FirstWrite 1}
		agg_result_num2_3_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
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
