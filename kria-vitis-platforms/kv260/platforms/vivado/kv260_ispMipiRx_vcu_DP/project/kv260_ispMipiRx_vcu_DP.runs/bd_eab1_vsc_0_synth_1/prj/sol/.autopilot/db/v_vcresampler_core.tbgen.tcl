set moduleName v_vcresampler_core
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
set hasInterrupt 0
set C_modelName {v_vcresampler_core}
set C_modelType { void 0 }
set C_modelArgList {
	{ SrcYUV int 24 regular {fifo 0 volatile }  }
	{ height int 11 regular {fifo 0}  }
	{ width int 11 regular {fifo 0}  }
	{ inColorMode int 8 regular {fifo 0}  }
	{ outColorMode int 8 regular {fifo 0}  }
	{ SrcYUV422 int 24 regular {fifo 1 volatile }  }
	{ HwReg_HeightIn_c int 11 regular {fifo 1}  }
	{ HwReg_Width_c16 int 11 regular {fifo 1}  }
	{ ColorMode_vcr_c int 8 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "SrcYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "height", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "inColorMode", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "outColorMode", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "SrcYUV422", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_HeightIn_c", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_Width_c16", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ColorMode_vcr_c", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 52
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ SrcYUV_dout sc_in sc_lv 24 signal 0 } 
	{ SrcYUV_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ SrcYUV_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ SrcYUV_empty_n sc_in sc_logic 1 signal 0 } 
	{ SrcYUV_read sc_out sc_logic 1 signal 0 } 
	{ height_dout sc_in sc_lv 11 signal 1 } 
	{ height_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ height_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ height_empty_n sc_in sc_logic 1 signal 1 } 
	{ height_read sc_out sc_logic 1 signal 1 } 
	{ width_dout sc_in sc_lv 11 signal 2 } 
	{ width_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ width_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ width_empty_n sc_in sc_logic 1 signal 2 } 
	{ width_read sc_out sc_logic 1 signal 2 } 
	{ inColorMode_dout sc_in sc_lv 8 signal 3 } 
	{ inColorMode_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ inColorMode_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ inColorMode_empty_n sc_in sc_logic 1 signal 3 } 
	{ inColorMode_read sc_out sc_logic 1 signal 3 } 
	{ outColorMode_dout sc_in sc_lv 8 signal 4 } 
	{ outColorMode_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ outColorMode_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ outColorMode_empty_n sc_in sc_logic 1 signal 4 } 
	{ outColorMode_read sc_out sc_logic 1 signal 4 } 
	{ SrcYUV422_din sc_out sc_lv 24 signal 5 } 
	{ SrcYUV422_num_data_valid sc_in sc_lv 5 signal 5 } 
	{ SrcYUV422_fifo_cap sc_in sc_lv 5 signal 5 } 
	{ SrcYUV422_full_n sc_in sc_logic 1 signal 5 } 
	{ SrcYUV422_write sc_out sc_logic 1 signal 5 } 
	{ HwReg_HeightIn_c_din sc_out sc_lv 11 signal 6 } 
	{ HwReg_HeightIn_c_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ HwReg_HeightIn_c_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ HwReg_HeightIn_c_full_n sc_in sc_logic 1 signal 6 } 
	{ HwReg_HeightIn_c_write sc_out sc_logic 1 signal 6 } 
	{ HwReg_Width_c16_din sc_out sc_lv 11 signal 7 } 
	{ HwReg_Width_c16_num_data_valid sc_in sc_lv 2 signal 7 } 
	{ HwReg_Width_c16_fifo_cap sc_in sc_lv 2 signal 7 } 
	{ HwReg_Width_c16_full_n sc_in sc_logic 1 signal 7 } 
	{ HwReg_Width_c16_write sc_out sc_logic 1 signal 7 } 
	{ ColorMode_vcr_c_din sc_out sc_lv 8 signal 8 } 
	{ ColorMode_vcr_c_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ ColorMode_vcr_c_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ ColorMode_vcr_c_full_n sc_in sc_logic 1 signal 8 } 
	{ ColorMode_vcr_c_write sc_out sc_logic 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "SrcYUV_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "SrcYUV", "role": "dout" }} , 
 	{ "name": "SrcYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SrcYUV", "role": "num_data_valid" }} , 
 	{ "name": "SrcYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SrcYUV", "role": "fifo_cap" }} , 
 	{ "name": "SrcYUV_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SrcYUV", "role": "empty_n" }} , 
 	{ "name": "SrcYUV_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SrcYUV", "role": "read" }} , 
 	{ "name": "height_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "height", "role": "dout" }} , 
 	{ "name": "height_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "height", "role": "num_data_valid" }} , 
 	{ "name": "height_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "height", "role": "fifo_cap" }} , 
 	{ "name": "height_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height", "role": "empty_n" }} , 
 	{ "name": "height_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height", "role": "read" }} , 
 	{ "name": "width_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "width", "role": "dout" }} , 
 	{ "name": "width_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "width", "role": "num_data_valid" }} , 
 	{ "name": "width_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "width", "role": "fifo_cap" }} , 
 	{ "name": "width_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width", "role": "empty_n" }} , 
 	{ "name": "width_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width", "role": "read" }} , 
 	{ "name": "inColorMode_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inColorMode", "role": "dout" }} , 
 	{ "name": "inColorMode_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inColorMode", "role": "num_data_valid" }} , 
 	{ "name": "inColorMode_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inColorMode", "role": "fifo_cap" }} , 
 	{ "name": "inColorMode_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inColorMode", "role": "empty_n" }} , 
 	{ "name": "inColorMode_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inColorMode", "role": "read" }} , 
 	{ "name": "outColorMode_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outColorMode", "role": "dout" }} , 
 	{ "name": "outColorMode_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "outColorMode", "role": "num_data_valid" }} , 
 	{ "name": "outColorMode_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "outColorMode", "role": "fifo_cap" }} , 
 	{ "name": "outColorMode_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outColorMode", "role": "empty_n" }} , 
 	{ "name": "outColorMode_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outColorMode", "role": "read" }} , 
 	{ "name": "SrcYUV422_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "din" }} , 
 	{ "name": "SrcYUV422_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "num_data_valid" }} , 
 	{ "name": "SrcYUV422_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "fifo_cap" }} , 
 	{ "name": "SrcYUV422_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "full_n" }} , 
 	{ "name": "SrcYUV422_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "write" }} , 
 	{ "name": "HwReg_HeightIn_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "HwReg_HeightIn_c", "role": "din" }} , 
 	{ "name": "HwReg_HeightIn_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_HeightIn_c", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_HeightIn_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_HeightIn_c", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_HeightIn_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_HeightIn_c", "role": "full_n" }} , 
 	{ "name": "HwReg_HeightIn_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_HeightIn_c", "role": "write" }} , 
 	{ "name": "HwReg_Width_c16_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "HwReg_Width_c16", "role": "din" }} , 
 	{ "name": "HwReg_Width_c16_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_Width_c16", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_Width_c16_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "HwReg_Width_c16", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_Width_c16_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_Width_c16", "role": "full_n" }} , 
 	{ "name": "HwReg_Width_c16_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_Width_c16", "role": "write" }} , 
 	{ "name": "ColorMode_vcr_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ColorMode_vcr_c", "role": "din" }} , 
 	{ "name": "ColorMode_vcr_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ColorMode_vcr_c", "role": "num_data_valid" }} , 
 	{ "name": "ColorMode_vcr_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ColorMode_vcr_c", "role": "fifo_cap" }} , 
 	{ "name": "ColorMode_vcr_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ColorMode_vcr_c", "role": "full_n" }} , 
 	{ "name": "ColorMode_vcr_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ColorMode_vcr_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "v_vcresampler_core",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "1073872893",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "SrcYUV", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_v_vcresampler_core_Pipeline_VITIS_LOOP_1012_2_fu_176", "Port" : "SrcYUV", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inColorMode", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "inColorMode_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outColorMode", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "outColorMode_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SrcYUV422", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_v_vcresampler_core_Pipeline_VITIS_LOOP_1012_2_fu_176", "Port" : "SrcYUV422", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "HwReg_HeightIn_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_HeightIn_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_Width_c16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_Width_c16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ColorMode_vcr_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ColorMode_vcr_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1010_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_y_val_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_y_val_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_c_val_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_c_val_V_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_c_val_V_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_v_vcresampler_core_Pipeline_VITIS_LOOP_1012_2_fu_176", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "v_vcresampler_core_Pipeline_VITIS_LOOP_1012_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "32771",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_47", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_58", "FromFinalSV" : "2", "FromAddress" : "linebuf_y_val_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_60", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_60", "ToFinalSV" : "2", "ToAddress" : "linebuf_y_val_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.gen/sources_1/bd/kv260_ispMipiRx_vcu_DP/ip/kv260_ispMipiRx_vcu_DP_v_proc_ss_0_0/bd_0/ip/ip_1/src/hls/hls_video_mem.h:627:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_60", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_60", "FromFinalSV" : "2", "FromAddress" : "linebuf_y_val_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_47", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_58", "ToFinalSV" : "2", "ToAddress" : "linebuf_y_val_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.gen/sources_1/bd/kv260_ispMipiRx_vcu_DP/ip/kv260_ispMipiRx_vcu_DP_v_proc_ss_0_0/bd_0/ip/ip_1/src/hls/hls_video_mem.h:627:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_62", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_62", "FromFinalSV" : "2", "FromAddress" : "linebuf_y_val_V_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_59", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_84", "ToFinalSV" : "3", "ToAddress" : "linebuf_y_val_V_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:970:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_50", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_63", "FromFinalSV" : "2", "FromAddress" : "linebuf_c_val_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_67", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_67", "ToFinalSV" : "2", "ToAddress" : "linebuf_c_val_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.gen/sources_1/bd/kv260_ispMipiRx_vcu_DP/ip/kv260_ispMipiRx_vcu_DP_v_proc_ss_0_0/bd_0/ip/ip_1/src/hls/hls_video_mem.h:627:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_52", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_64", "FromFinalSV" : "2", "FromAddress" : "linebuf_c_val_V_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_71", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_71", "ToFinalSV" : "2", "ToAddress" : "linebuf_c_val_V_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:970:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_67", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_67", "FromFinalSV" : "2", "FromAddress" : "linebuf_c_val_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_50", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_63", "ToFinalSV" : "2", "ToAddress" : "linebuf_c_val_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.gen/sources_1/bd/kv260_ispMipiRx_vcu_DP/ip/kv260_ispMipiRx_vcu_DP_v_proc_ss_0_0/bd_0/ip/ip_1/src/hls/hls_video_mem.h:627:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_71", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_71", "FromFinalSV" : "2", "FromAddress" : "linebuf_c_val_V_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_52", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_64", "ToFinalSV" : "2", "ToAddress" : "linebuf_c_val_V_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:970:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_59", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_84", "FromFinalSV" : "3", "FromAddress" : "linebuf_y_val_V_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_62", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_62", "ToFinalSV" : "2", "ToAddress" : "linebuf_y_val_V_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:970:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "loopWidth", "Type" : "None", "Direction" : "I"},
			{"Name" : "sel_tmp1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sel_tmp4", "Type" : "None", "Direction" : "I"},
			{"Name" : "sel_tmp6", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp287", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp391", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp104", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp36", "Type" : "None", "Direction" : "I"},
			{"Name" : "linebuf_y_val_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_y_val_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_c_val_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_c_val_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "spec_select", "Type" : "None", "Direction" : "I"},
			{"Name" : "SrcYUV", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "SrcYUV_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "linebuf_c_val_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SrcYUV422", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "SrcYUV422_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "icmp_ln995", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_0878_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0423876_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_2_0_0_0874_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0872_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0423870_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1012_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_vcresampler_core_Pipeline_VITIS_LOOP_1012_2_fu_176.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"}]}


set ArgLastReadFirstWriteLatency {
	v_vcresampler_core {
		SrcYUV {Type I LastRead 1 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		inColorMode {Type I LastRead 0 FirstWrite -1}
		outColorMode {Type I LastRead 0 FirstWrite -1}
		SrcYUV422 {Type O LastRead -1 FirstWrite 2}
		HwReg_HeightIn_c {Type O LastRead -1 FirstWrite 0}
		HwReg_Width_c16 {Type O LastRead -1 FirstWrite 0}
		ColorMode_vcr_c {Type O LastRead -1 FirstWrite 0}}
	v_vcresampler_core_Pipeline_VITIS_LOOP_1012_2 {
		loopWidth {Type I LastRead 0 FirstWrite -1}
		sel_tmp1 {Type I LastRead 0 FirstWrite -1}
		sel_tmp4 {Type I LastRead 0 FirstWrite -1}
		sel_tmp6 {Type I LastRead 0 FirstWrite -1}
		cmp287 {Type I LastRead 0 FirstWrite -1}
		cmp391 {Type I LastRead 0 FirstWrite -1}
		cmp104 {Type I LastRead 0 FirstWrite -1}
		cmp36 {Type I LastRead 0 FirstWrite -1}
		linebuf_y_val_V {Type IO LastRead 1 FirstWrite 2}
		linebuf_y_val_V_1 {Type IO LastRead 2 FirstWrite 2}
		linebuf_c_val_V {Type IO LastRead 1 FirstWrite 2}
		linebuf_c_val_V_1 {Type IO LastRead 1 FirstWrite 2}
		spec_select {Type I LastRead 0 FirstWrite -1}
		SrcYUV {Type I LastRead 1 FirstWrite -1}
		linebuf_c_val_V_2 {Type I LastRead 1 FirstWrite -1}
		SrcYUV422 {Type O LastRead -1 FirstWrite 2}
		icmp_ln995 {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_0878_out {Type IO LastRead 2 FirstWrite 1}
		p_0_0_0_0_0423876_out {Type IO LastRead 2 FirstWrite 1}
		p_0_2_0_0_0874_out {Type IO LastRead 2 FirstWrite 1}
		p_0_1_0_0_0872_out {Type IO LastRead 2 FirstWrite 1}
		p_0_0_0_0_0423870_out {Type IO LastRead 2 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "1073872893"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "1073872893"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	SrcYUV { ap_fifo {  { SrcYUV_dout fifo_port_we 0 24 }  { SrcYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { SrcYUV_fifo_cap fifo_update 0 5 }  { SrcYUV_empty_n fifo_status 0 1 }  { SrcYUV_read fifo_data 1 1 } } }
	height { ap_fifo {  { height_dout fifo_port_we 0 11 }  { height_num_data_valid fifo_status_num_data_valid 0 2 }  { height_fifo_cap fifo_update 0 2 }  { height_empty_n fifo_status 0 1 }  { height_read fifo_data 1 1 } } }
	width { ap_fifo {  { width_dout fifo_port_we 0 11 }  { width_num_data_valid fifo_status_num_data_valid 0 2 }  { width_fifo_cap fifo_update 0 2 }  { width_empty_n fifo_status 0 1 }  { width_read fifo_data 1 1 } } }
	inColorMode { ap_fifo {  { inColorMode_dout fifo_port_we 0 8 }  { inColorMode_num_data_valid fifo_status_num_data_valid 0 2 }  { inColorMode_fifo_cap fifo_update 0 2 }  { inColorMode_empty_n fifo_status 0 1 }  { inColorMode_read fifo_data 1 1 } } }
	outColorMode { ap_fifo {  { outColorMode_dout fifo_port_we 0 8 }  { outColorMode_num_data_valid fifo_status_num_data_valid 0 2 }  { outColorMode_fifo_cap fifo_update 0 2 }  { outColorMode_empty_n fifo_status 0 1 }  { outColorMode_read fifo_data 1 1 } } }
	SrcYUV422 { ap_fifo {  { SrcYUV422_din fifo_port_we 1 24 }  { SrcYUV422_num_data_valid fifo_status_num_data_valid 0 5 }  { SrcYUV422_fifo_cap fifo_update 0 5 }  { SrcYUV422_full_n fifo_status 0 1 }  { SrcYUV422_write fifo_data 1 1 } } }
	HwReg_HeightIn_c { ap_fifo {  { HwReg_HeightIn_c_din fifo_port_we 1 11 }  { HwReg_HeightIn_c_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_HeightIn_c_fifo_cap fifo_update 0 2 }  { HwReg_HeightIn_c_full_n fifo_status 0 1 }  { HwReg_HeightIn_c_write fifo_data 1 1 } } }
	HwReg_Width_c16 { ap_fifo {  { HwReg_Width_c16_din fifo_port_we 1 11 }  { HwReg_Width_c16_num_data_valid fifo_status_num_data_valid 0 2 }  { HwReg_Width_c16_fifo_cap fifo_update 0 2 }  { HwReg_Width_c16_full_n fifo_status 0 1 }  { HwReg_Width_c16_write fifo_data 1 1 } } }
	ColorMode_vcr_c { ap_fifo {  { ColorMode_vcr_c_din fifo_port_we 1 8 }  { ColorMode_vcr_c_num_data_valid fifo_status_num_data_valid 0 3 }  { ColorMode_vcr_c_fifo_cap fifo_update 0 3 }  { ColorMode_vcr_c_full_n fifo_status 0 1 }  { ColorMode_vcr_c_write fifo_data 1 1 } } }
}
