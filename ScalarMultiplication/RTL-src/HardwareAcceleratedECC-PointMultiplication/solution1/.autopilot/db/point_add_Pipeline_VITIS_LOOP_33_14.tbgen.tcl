set moduleName point_add_Pipeline_VITIS_LOOP_33_14
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
set C_modelName {point_add_Pipeline_VITIS_LOOP_33_14}
set C_modelType { void 0 }
set C_modelArgList {
	{ y1_V_read int 166 regular  }
	{ y2_V_read int 166 regular  }
	{ p_Val2_4_out int 163 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y1_V_read", "interface" : "wire", "bitwidth" : 166, "direction" : "READONLY"} , 
 	{ "Name" : "y2_V_read", "interface" : "wire", "bitwidth" : 166, "direction" : "READONLY"} , 
 	{ "Name" : "p_Val2_4_out", "interface" : "wire", "bitwidth" : 163, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y1_V_read sc_in sc_lv 166 signal 0 } 
	{ y2_V_read sc_in sc_lv 166 signal 1 } 
	{ p_Val2_4_out sc_out sc_lv 163 signal 2 } 
	{ p_Val2_4_out_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":166, "type": "signal", "bundle":{"name": "y1_V_read", "role": "default" }} , 
 	{ "name": "y2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":166, "type": "signal", "bundle":{"name": "y2_V_read", "role": "default" }} , 
 	{ "name": "p_Val2_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":163, "type": "signal", "bundle":{"name": "p_Val2_4_out", "role": "default" }} , 
 	{ "name": "p_Val2_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_Val2_4_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "point_add_Pipeline_VITIS_LOOP_33_14",
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
			{"Name" : "y1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "y2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_Val2_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	point_add_Pipeline_VITIS_LOOP_33_14 {
		y1_V_read {Type I LastRead 0 FirstWrite -1}
		y2_V_read {Type I LastRead 0 FirstWrite -1}
		p_Val2_4_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "168", "Max" : "168"}
	, {"Name" : "Interval", "Min" : "168", "Max" : "168"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y1_V_read { ap_none {  { y1_V_read in_data 0 166 } } }
	y2_V_read { ap_none {  { y2_V_read in_data 0 166 } } }
	p_Val2_4_out { ap_vld {  { p_Val2_4_out out_data 1 163 }  { p_Val2_4_out_ap_vld out_vld 1 1 } } }
}
