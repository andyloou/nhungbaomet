set moduleName Radix2wECC_Pipeline_VITIS_LOOP_56_6
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
set C_modelName {Radix2wECC_Pipeline_VITIS_LOOP_56_6}
set C_modelType { void 0 }
set C_modelArgList {
	{ trunc_ln53_mid2 int 6 regular  }
	{ p_shl_mid2 int 8 regular  }
	{ scalar_V int 166 regular  }
	{ slice_V_1_out int 6 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "trunc_ln53_mid2", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_shl_mid2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "scalar_V", "interface" : "wire", "bitwidth" : 166, "direction" : "READONLY"} , 
 	{ "Name" : "slice_V_1_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ trunc_ln53_mid2 sc_in sc_lv 6 signal 0 } 
	{ p_shl_mid2 sc_in sc_lv 8 signal 1 } 
	{ scalar_V sc_in sc_lv 166 signal 2 } 
	{ slice_V_1_out sc_out sc_lv 6 signal 3 } 
	{ slice_V_1_out_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "trunc_ln53_mid2", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "trunc_ln53_mid2", "role": "default" }} , 
 	{ "name": "p_shl_mid2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_shl_mid2", "role": "default" }} , 
 	{ "name": "scalar_V", "direction": "in", "datatype": "sc_lv", "bitwidth":166, "type": "signal", "bundle":{"name": "scalar_V", "role": "default" }} , 
 	{ "name": "slice_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "slice_V_1_out", "role": "default" }} , 
 	{ "name": "slice_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "slice_V_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Radix2wECC_Pipeline_VITIS_LOOP_56_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln53_mid2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_shl_mid2", "Type" : "None", "Direction" : "I"},
			{"Name" : "scalar_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "slice_V_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Radix2wECC_Pipeline_VITIS_LOOP_56_6 {
		trunc_ln53_mid2 {Type I LastRead 0 FirstWrite -1}
		p_shl_mid2 {Type I LastRead 0 FirstWrite -1}
		scalar_V {Type I LastRead 0 FirstWrite -1}
		slice_V_1_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	trunc_ln53_mid2 { ap_none {  { trunc_ln53_mid2 in_data 0 6 } } }
	p_shl_mid2 { ap_none {  { p_shl_mid2 in_data 0 8 } } }
	scalar_V { ap_none {  { scalar_V in_data 0 166 } } }
	slice_V_1_out { ap_vld {  { slice_V_1_out out_data 1 6 }  { slice_V_1_out_ap_vld out_vld 1 1 } } }
}
