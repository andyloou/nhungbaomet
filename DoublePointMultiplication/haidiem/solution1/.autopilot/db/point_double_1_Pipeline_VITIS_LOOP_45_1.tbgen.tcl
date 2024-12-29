set moduleName point_double_1_Pipeline_VITIS_LOOP_45_1
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
set C_modelName {point_double.1_Pipeline_VITIS_LOOP_45_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ lambda_V int 166 regular  }
	{ lambda_V_1 int 165 regular  }
	{ p_Val2_s int 163 regular  }
	{ lambda_V_12_out int 166 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "lambda_V", "interface" : "wire", "bitwidth" : 166, "direction" : "READONLY"} , 
 	{ "Name" : "lambda_V_1", "interface" : "wire", "bitwidth" : 165, "direction" : "READONLY"} , 
 	{ "Name" : "p_Val2_s", "interface" : "wire", "bitwidth" : 163, "direction" : "READONLY"} , 
 	{ "Name" : "lambda_V_12_out", "interface" : "wire", "bitwidth" : 166, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ lambda_V sc_in sc_lv 166 signal 0 } 
	{ lambda_V_1 sc_in sc_lv 165 signal 1 } 
	{ p_Val2_s sc_in sc_lv 163 signal 2 } 
	{ lambda_V_12_out sc_out sc_lv 166 signal 3 } 
	{ lambda_V_12_out_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "lambda_V", "direction": "in", "datatype": "sc_lv", "bitwidth":166, "type": "signal", "bundle":{"name": "lambda_V", "role": "default" }} , 
 	{ "name": "lambda_V_1", "direction": "in", "datatype": "sc_lv", "bitwidth":165, "type": "signal", "bundle":{"name": "lambda_V_1", "role": "default" }} , 
 	{ "name": "p_Val2_s", "direction": "in", "datatype": "sc_lv", "bitwidth":163, "type": "signal", "bundle":{"name": "p_Val2_s", "role": "default" }} , 
 	{ "name": "lambda_V_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":166, "type": "signal", "bundle":{"name": "lambda_V_12_out", "role": "default" }} , 
 	{ "name": "lambda_V_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "lambda_V_12_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "point_double_1_Pipeline_VITIS_LOOP_45_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "164", "EstimateLatencyMax" : "164",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "lambda_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "lambda_V_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_Val2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "lambda_V_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_45_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	point_double_1_Pipeline_VITIS_LOOP_45_1 {
		lambda_V {Type I LastRead 0 FirstWrite -1}
		lambda_V_1 {Type I LastRead 0 FirstWrite -1}
		p_Val2_s {Type I LastRead 0 FirstWrite -1}
		lambda_V_12_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "164", "Max" : "164"}
	, {"Name" : "Interval", "Min" : "164", "Max" : "164"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	lambda_V { ap_none {  { lambda_V in_data 0 166 } } }
	lambda_V_1 { ap_none {  { lambda_V_1 in_data 0 165 } } }
	p_Val2_s { ap_none {  { p_Val2_s in_data 0 163 } } }
	lambda_V_12_out { ap_vld {  { lambda_V_12_out out_data 1 166 }  { lambda_V_12_out_ap_vld out_vld 1 1 } } }
}
