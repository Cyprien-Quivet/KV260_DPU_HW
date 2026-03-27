set moduleName v_hcresampler_core_1
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
set C_modelName {v_hcresampler_core.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_scaled_csc int 24 regular {fifo 0 volatile }  }
	{ Height int 16 regular {fifo 0}  }
	{ WidthOut int 16 regular {fifo 0}  }
	{ p_read int 1 regular  }
	{ stream_out_422 int 24 regular {fifo 1 volatile }  }
	{ Height_c17 int 16 regular {fifo 1}  }
	{ WidthOut_c21 int 16 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stream_scaled_csc", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "Height", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "WidthOut", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_out_422", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Height_c17", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "WidthOut_c21", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_scaled_csc_dout sc_in sc_lv 24 signal 0 } 
	{ stream_scaled_csc_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ stream_scaled_csc_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ stream_scaled_csc_empty_n sc_in sc_logic 1 signal 0 } 
	{ stream_scaled_csc_read sc_out sc_logic 1 signal 0 } 
	{ Height_dout sc_in sc_lv 16 signal 1 } 
	{ Height_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ Height_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ Height_empty_n sc_in sc_logic 1 signal 1 } 
	{ Height_read sc_out sc_logic 1 signal 1 } 
	{ WidthOut_dout sc_in sc_lv 16 signal 2 } 
	{ WidthOut_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ WidthOut_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ WidthOut_empty_n sc_in sc_logic 1 signal 2 } 
	{ WidthOut_read sc_out sc_logic 1 signal 2 } 
	{ p_read sc_in sc_lv 1 signal 3 } 
	{ stream_out_422_din sc_out sc_lv 24 signal 4 } 
	{ stream_out_422_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ stream_out_422_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ stream_out_422_full_n sc_in sc_logic 1 signal 4 } 
	{ stream_out_422_write sc_out sc_logic 1 signal 4 } 
	{ Height_c17_din sc_out sc_lv 16 signal 5 } 
	{ Height_c17_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ Height_c17_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ Height_c17_full_n sc_in sc_logic 1 signal 5 } 
	{ Height_c17_write sc_out sc_logic 1 signal 5 } 
	{ WidthOut_c21_din sc_out sc_lv 16 signal 6 } 
	{ WidthOut_c21_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ WidthOut_c21_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ WidthOut_c21_full_n sc_in sc_logic 1 signal 6 } 
	{ WidthOut_c21_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_scaled_csc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_scaled_csc", "role": "dout" }} , 
 	{ "name": "stream_scaled_csc_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_scaled_csc", "role": "num_data_valid" }} , 
 	{ "name": "stream_scaled_csc_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_scaled_csc", "role": "fifo_cap" }} , 
 	{ "name": "stream_scaled_csc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_scaled_csc", "role": "empty_n" }} , 
 	{ "name": "stream_scaled_csc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_scaled_csc", "role": "read" }} , 
 	{ "name": "Height_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Height", "role": "dout" }} , 
 	{ "name": "Height_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Height", "role": "num_data_valid" }} , 
 	{ "name": "Height_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Height", "role": "fifo_cap" }} , 
 	{ "name": "Height_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Height", "role": "empty_n" }} , 
 	{ "name": "Height_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Height", "role": "read" }} , 
 	{ "name": "WidthOut_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "WidthOut", "role": "dout" }} , 
 	{ "name": "WidthOut_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WidthOut", "role": "num_data_valid" }} , 
 	{ "name": "WidthOut_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WidthOut", "role": "fifo_cap" }} , 
 	{ "name": "WidthOut_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthOut", "role": "empty_n" }} , 
 	{ "name": "WidthOut_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthOut", "role": "read" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "stream_out_422_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_out_422", "role": "din" }} , 
 	{ "name": "stream_out_422_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_422", "role": "num_data_valid" }} , 
 	{ "name": "stream_out_422_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_422", "role": "fifo_cap" }} , 
 	{ "name": "stream_out_422_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_422", "role": "full_n" }} , 
 	{ "name": "stream_out_422_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_422", "role": "write" }} , 
 	{ "name": "Height_c17_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Height_c17", "role": "din" }} , 
 	{ "name": "Height_c17_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Height_c17", "role": "num_data_valid" }} , 
 	{ "name": "Height_c17_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Height_c17", "role": "fifo_cap" }} , 
 	{ "name": "Height_c17_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Height_c17", "role": "full_n" }} , 
 	{ "name": "Height_c17_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Height_c17", "role": "write" }} , 
 	{ "name": "WidthOut_c21_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "WidthOut_c21", "role": "din" }} , 
 	{ "name": "WidthOut_c21_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WidthOut_c21", "role": "num_data_valid" }} , 
 	{ "name": "WidthOut_c21_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WidthOut_c21", "role": "fifo_cap" }} , 
 	{ "name": "WidthOut_c21_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthOut_c21", "role": "full_n" }} , 
 	{ "name": "WidthOut_c21_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthOut_c21", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "v_hcresampler_core_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "1073938427",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_scaled_csc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_198", "Port" : "stream_scaled_csc", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "1"},
			{"Name" : "stream_out_422", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_198", "Port" : "stream_out_422", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Height_c17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_c17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthOut_c21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthOut_c21_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1634_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_198", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "32771",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pixbuf_y_val_V_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_val_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_val_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_val_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_0_21084_lcssa1110", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_0524_21081_lcssa1107", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_01043_lcssa1068", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_01039_lcssa1065", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_0_0_05321037_lcssa1062", "Type" : "None", "Direction" : "I"},
			{"Name" : "loopWidth", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln1634", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln1632", "Type" : "None", "Direction" : "I"},
			{"Name" : "WidthOut_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "stream_scaled_csc", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_scaled_csc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_422", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_out_422_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "pixbuf_y_val_V_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_val_V_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_val_V_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pixbuf_y_val_V_6_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pixbuf_y_val_V_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_0_21086_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_0_0_0_0_0524_21083_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_2_0_0_01036_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_01034_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_05321032_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "filt_res1_1_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1636_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_198.mux_43_8_1_1_U250", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_198.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	v_hcresampler_core_1 {
		stream_scaled_csc {Type I LastRead 1 FirstWrite -1}
		Height {Type I LastRead 0 FirstWrite -1}
		WidthOut {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		stream_out_422 {Type O LastRead -1 FirstWrite 2}
		Height_c17 {Type O LastRead -1 FirstWrite 0}
		WidthOut_c21 {Type O LastRead -1 FirstWrite 0}}
	v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2 {
		pixbuf_y_val_V_4 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V_3 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V_2 {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_0_21084_lcssa1110 {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_0524_21081_lcssa1107 {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_01043_lcssa1068 {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_01039_lcssa1065 {Type I LastRead 0 FirstWrite -1}
		p_0_0_0_0_05321037_lcssa1062 {Type I LastRead 0 FirstWrite -1}
		loopWidth {Type I LastRead 0 FirstWrite -1}
		select_ln1634 {Type I LastRead 0 FirstWrite -1}
		select_ln1632 {Type I LastRead 0 FirstWrite -1}
		WidthOut_load {Type I LastRead 0 FirstWrite -1}
		stream_scaled_csc {Type I LastRead 1 FirstWrite -1}
		stream_out_422 {Type O LastRead -1 FirstWrite 2}
		p_read {Type I LastRead 0 FirstWrite -1}
		pixbuf_y_val_V_9_out {Type O LastRead -1 FirstWrite 2}
		pixbuf_y_val_V_8_out {Type O LastRead -1 FirstWrite 2}
		pixbuf_y_val_V_7_out {Type O LastRead -1 FirstWrite 2}
		pixbuf_y_val_V_6_out {Type IO LastRead 3 FirstWrite 3}
		pixbuf_y_val_V_5_out {Type O LastRead -1 FirstWrite 2}
		p_0_0_0_0_0_21086_out {Type O LastRead -1 FirstWrite 2}
		p_0_0_0_0_0524_21083_out {Type O LastRead -1 FirstWrite 2}
		p_out {Type IO LastRead 2 FirstWrite 2}
		p_out1 {Type IO LastRead 2 FirstWrite 2}
		p_out2 {Type IO LastRead 2 FirstWrite 2}
		p_out3 {Type IO LastRead 2 FirstWrite 2}
		p_0_2_0_0_01036_out {Type IO LastRead 2 FirstWrite 1}
		p_0_1_0_0_01034_out {Type IO LastRead 2 FirstWrite 1}
		p_0_0_0_0_05321032_out {Type IO LastRead 2 FirstWrite 1}
		filt_res1_1_out {Type IO LastRead 2 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "1073938427"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "1073938427"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_scaled_csc { ap_fifo {  { stream_scaled_csc_dout fifo_port_we 0 24 }  { stream_scaled_csc_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_scaled_csc_fifo_cap fifo_update 0 5 }  { stream_scaled_csc_empty_n fifo_status 0 1 }  { stream_scaled_csc_read fifo_data 1 1 } } }
	Height { ap_fifo {  { Height_dout fifo_port_we 0 16 }  { Height_num_data_valid fifo_status_num_data_valid 0 2 }  { Height_fifo_cap fifo_update 0 2 }  { Height_empty_n fifo_status 0 1 }  { Height_read fifo_data 1 1 } } }
	WidthOut { ap_fifo {  { WidthOut_dout fifo_port_we 0 16 }  { WidthOut_num_data_valid fifo_status_num_data_valid 0 2 }  { WidthOut_fifo_cap fifo_update 0 2 }  { WidthOut_empty_n fifo_status 0 1 }  { WidthOut_read fifo_data 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 1 } } }
	stream_out_422 { ap_fifo {  { stream_out_422_din fifo_port_we 1 24 }  { stream_out_422_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_out_422_fifo_cap fifo_update 0 5 }  { stream_out_422_full_n fifo_status 0 1 }  { stream_out_422_write fifo_data 1 1 } } }
	Height_c17 { ap_fifo {  { Height_c17_din fifo_port_we 1 16 }  { Height_c17_num_data_valid fifo_status_num_data_valid 0 2 }  { Height_c17_fifo_cap fifo_update 0 2 }  { Height_c17_full_n fifo_status 0 1 }  { Height_c17_write fifo_data 1 1 } } }
	WidthOut_c21 { ap_fifo {  { WidthOut_c21_din fifo_port_we 1 16 }  { WidthOut_c21_num_data_valid fifo_status_num_data_valid 0 2 }  { WidthOut_c21_fifo_cap fifo_update 0 2 }  { WidthOut_c21_full_n fifo_status 0 1 }  { WidthOut_c21_write fifo_data 1 1 } } }
}
