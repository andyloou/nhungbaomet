set moduleName bf_inv_Pipeline_VITIS_LOOP_33_19
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
set C_modelName {bf_inv_Pipeline_VITIS_LOOP_33_19}
set C_modelType { void 0 }
set C_modelArgList {
	{ select_ln77 int 166 regular  }
	{ r_1 int 166 regular  }
	{ p_Val2_14_out int 166 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "select_ln77", "interface" : "wire", "bitwidth" : 166, "direction" : "READONLY"} , 
 	{ "Name" : "r_1", "interface" : "wire", "bitwidth" : 166, "direction" : "READONLY"} , 
 	{ "Name" : "p_Val2_14_out", "interface" : "wire", "bitwidth" : 166, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ select_ln77 sc_in sc_lv 166 signal 0 } 
	{ r_1 sc_in sc_lv 166 signal 1 } 
	{ p_Val2_14_out_i sc_in sc_lv 166 signal 2 } 
	{ p_Val2_14_out_o sc_out sc_lv 166 signal 2 } 
	{ p_Val2_14_out_o_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "select_ln77", "direction": "in", "datatype": "sc_lv", "bitwidth":166, "type": "signal", "bundle":{"name": "select_ln77", "role": "default" }} , 
 	{ "name": "r_1", "direction": "in", "datatype": "sc_lv", "bitwidth":166, "type": "signal", "bundle":{"name": "r_1", "role": "default" }} , 
 	{ "name": "p_Val2_14_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":166, "type": "signal", "bundle":{"name": "p_Val2_14_out", "role": "i" }} , 
 	{ "name": "p_Val2_14_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":166, "type": "signal", "bundle":{"name": "p_Val2_14_out", "role": "o" }} , 
 	{ "name": "p_Val2_14_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_Val2_14_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "bf_inv_Pipeline_VITIS_LOOP_33_19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "168", "EstimateLatencyMax" : "168",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "select_ln77", "Type" : "None", "Direction" : "I"},
			{"Name" : "r_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_Val2_14_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bf_inv_Pipeline_VITIS_LOOP_33_19 {
		select_ln77 {Type I LastRead 0 FirstWrite -1}
		r_1 {Type I LastRead 0 FirstWrite -1}
		p_Val2_14_out {Type IO LastRead 0 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "168", "Max" : "168"}
	, {"Name" : "Interval", "Min" : "168", "Max" : "168"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	select_ln77 { ap_none {  { select_ln77 in_data 0 166 } } }
	r_1 { ap_none {  { r_1 in_data 0 166 } } }
	p_Val2_14_out { ap_ovld {  { p_Val2_14_out_i in_data 0 166 }  { p_Val2_14_out_o out_data 1 166 }  { p_Val2_14_out_o_ap_vld out_vld 1 1 } } }
}
