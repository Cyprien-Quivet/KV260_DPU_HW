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
	{ stream_out_422 int 24 regular {fifo 0 volatile }  }
	{ Height int 16 regular {fifo 0}  }
	{ WidthOut int 16 regular {fifo 0}  }
	{ p_read int 1 regular  }
	{ stream_out_420 int 24 regular {fifo 1 volatile }  }
	{ Height_c int 16 regular {fifo 1}  }
	{ WidthOut_c int 16 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stream_out_422", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "Height", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "WidthOut", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_out_420", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Height_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "WidthOut_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ stream_out_422_dout sc_in sc_lv 24 signal 0 } 
	{ stream_out_422_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ stream_out_422_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ stream_out_422_empty_n sc_in sc_logic 1 signal 0 } 
	{ stream_out_422_read sc_out sc_logic 1 signal 0 } 
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
	{ stream_out_420_din sc_out sc_lv 24 signal 4 } 
	{ stream_out_420_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ stream_out_420_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ stream_out_420_full_n sc_in sc_logic 1 signal 4 } 
	{ stream_out_420_write sc_out sc_logic 1 signal 4 } 
	{ Height_c_din sc_out sc_lv 16 signal 5 } 
	{ Height_c_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ Height_c_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ Height_c_full_n sc_in sc_logic 1 signal 5 } 
	{ Height_c_write sc_out sc_logic 1 signal 5 } 
	{ WidthOut_c_din sc_out sc_lv 16 signal 6 } 
	{ WidthOut_c_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ WidthOut_c_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ WidthOut_c_full_n sc_in sc_logic 1 signal 6 } 
	{ WidthOut_c_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_out_422_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_out_422", "role": "dout" }} , 
 	{ "name": "stream_out_422_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_422", "role": "num_data_valid" }} , 
 	{ "name": "stream_out_422_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_422", "role": "fifo_cap" }} , 
 	{ "name": "stream_out_422_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_422", "role": "empty_n" }} , 
 	{ "name": "stream_out_422_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_422", "role": "read" }} , 
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
 	{ "name": "stream_out_420_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_out_420", "role": "din" }} , 
 	{ "name": "stream_out_420_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_420", "role": "num_data_valid" }} , 
 	{ "name": "stream_out_420_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_420", "role": "fifo_cap" }} , 
 	{ "name": "stream_out_420_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_420", "role": "full_n" }} , 
 	{ "name": "stream_out_420_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_420", "role": "write" }} , 
 	{ "name": "Height_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Height_c", "role": "din" }} , 
 	{ "name": "Height_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Height_c", "role": "num_data_valid" }} , 
 	{ "name": "Height_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Height_c", "role": "fifo_cap" }} , 
 	{ "name": "Height_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Height_c", "role": "full_n" }} , 
 	{ "name": "Height_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Height_c", "role": "write" }} , 
 	{ "name": "WidthOut_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "WidthOut_c", "role": "din" }} , 
 	{ "name": "WidthOut_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WidthOut_c", "role": "num_data_valid" }} , 
 	{ "name": "WidthOut_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "WidthOut_c", "role": "fifo_cap" }} , 
 	{ "name": "WidthOut_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthOut_c", "role": "full_n" }} , 
 	{ "name": "WidthOut_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WidthOut_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "v_vcresampler_core",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1073872892",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_out_422", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_v_vcresampler_core_Pipeline_VITIS_LOOP_1853_2_fu_142", "Port" : "stream_out_422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "Height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "1"},
			{"Name" : "stream_out_420", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_v_vcresampler_core_Pipeline_VITIS_LOOP_1853_2_fu_142", "Port" : "stream_out_420", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "Height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "Height_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "WidthOut_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "WidthOut_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1851_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_y_val_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_c_val_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_c_val_V_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_v_vcresampler_core_Pipeline_VITIS_LOOP_1853_2_fu_142", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "v_vcresampler_core_Pipeline_VITIS_LOOP_1853_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "32771",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_53", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_53", "FromFinalSV" : "2", "FromAddress" : "linebuf_y_val_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_52", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_78", "ToFinalSV" : "3", "ToAddress" : "linebuf_y_val_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.gen/sources_1/bd/kv260_ispMipiRx_vcu_DP/ip/kv260_ispMipiRx_vcu_DP_v_proc_ss_0_0/bd_0/ip/ip_2/src/hls/hls_video_mem.h:627:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_45", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_54", "FromFinalSV" : "2", "FromAddress" : "linebuf_c_val_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "2", "ToAddress" : "linebuf_c_val_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.gen/sources_1/bd/kv260_ispMipiRx_vcu_DP/ip/kv260_ispMipiRx_vcu_DP_v_proc_ss_0_0/bd_0/ip/ip_2/src/hls/hls_video_mem.h:627:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_47", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "2", "FromAddress" : "linebuf_c_val_V_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_62", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_62", "ToFinalSV" : "2", "ToAddress" : "linebuf_c_val_V_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_hsc_0_synth_1/prj/sol/.autopilot/db/v_hscaler.cpp:1813:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "2", "FromAddress" : "linebuf_c_val_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_45", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_54", "ToFinalSV" : "2", "ToAddress" : "linebuf_c_val_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.gen/sources_1/bd/kv260_ispMipiRx_vcu_DP/ip/kv260_ispMipiRx_vcu_DP_v_proc_ss_0_0/bd_0/ip/ip_2/src/hls/hls_video_mem.h:627:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_62", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_62", "FromFinalSV" : "2", "FromAddress" : "linebuf_c_val_V_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_47", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "2", "ToAddress" : "linebuf_c_val_V_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_hsc_0_synth_1/prj/sol/.autopilot/db/v_hscaler.cpp:1813:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_52", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_78", "FromFinalSV" : "3", "FromAddress" : "linebuf_y_val_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_53", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_53", "ToFinalSV" : "2", "ToAddress" : "linebuf_y_val_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.gen/sources_1/bd/kv260_ispMipiRx_vcu_DP/ip/kv260_ispMipiRx_vcu_DP_v_proc_ss_0_0/bd_0/ip/ip_2/src/hls/hls_video_mem.h:627:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "loopWidth", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cmp100", "Type" : "None", "Direction" : "I"},
			{"Name" : "linebuf_c_val_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "out_y_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp384", "Type" : "None", "Direction" : "I"},
			{"Name" : "linebuf_y_val_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "linebuf_c_val_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cmp33", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_out_422", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_out_422_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_420", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_out_420_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_1_0_0_0723_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0393721_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_2_0_0_0719_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_1_0_0_0717_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_0_0_0_0_0393715_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1853_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_vcresampler_core_Pipeline_VITIS_LOOP_1853_2_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
	v_vcresampler_core {
		stream_out_422 {Type I LastRead 1 FirstWrite -1}
		Height {Type I LastRead 0 FirstWrite -1}
		WidthOut {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		stream_out_420 {Type O LastRead -1 FirstWrite 2}
		Height_c {Type O LastRead -1 FirstWrite 0}
		WidthOut_c {Type O LastRead -1 FirstWrite 0}}
	v_vcresampler_core_Pipeline_VITIS_LOOP_1853_2 {
		loopWidth {Type I LastRead 0 FirstWrite -1}
		cmp100 {Type I LastRead 0 FirstWrite -1}
		linebuf_c_val_V_1 {Type IO LastRead 1 FirstWrite 2}
		out_y_cast {Type I LastRead 0 FirstWrite -1}
		cmp384 {Type I LastRead 0 FirstWrite -1}
		linebuf_y_val_V {Type IO LastRead 2 FirstWrite 2}
		linebuf_c_val_V {Type IO LastRead 1 FirstWrite 2}
		cmp33 {Type I LastRead 0 FirstWrite -1}
		stream_out_422 {Type I LastRead 1 FirstWrite -1}
		stream_out_420 {Type O LastRead -1 FirstWrite 2}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_0_1_0_0_0723_out {Type IO LastRead 2 FirstWrite 1}
		p_0_0_0_0_0393721_out {Type IO LastRead 2 FirstWrite 1}
		p_0_2_0_0_0719_out {Type IO LastRead 2 FirstWrite 1}
		p_0_1_0_0_0717_out {Type IO LastRead 2 FirstWrite 1}
		p_0_0_0_0_0393715_out {Type IO LastRead 2 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1073872892"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1073872892"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_out_422 { ap_fifo {  { stream_out_422_dout fifo_port_we 0 24 }  { stream_out_422_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_out_422_fifo_cap fifo_update 0 5 }  { stream_out_422_empty_n fifo_status 0 1 }  { stream_out_422_read fifo_data 1 1 } } }
	Height { ap_fifo {  { Height_dout fifo_port_we 0 16 }  { Height_num_data_valid fifo_status_num_data_valid 0 2 }  { Height_fifo_cap fifo_update 0 2 }  { Height_empty_n fifo_status 0 1 }  { Height_read fifo_data 1 1 } } }
	WidthOut { ap_fifo {  { WidthOut_dout fifo_port_we 0 16 }  { WidthOut_num_data_valid fifo_status_num_data_valid 0 2 }  { WidthOut_fifo_cap fifo_update 0 2 }  { WidthOut_empty_n fifo_status 0 1 }  { WidthOut_read fifo_data 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 1 } } }
	stream_out_420 { ap_fifo {  { stream_out_420_din fifo_port_we 1 24 }  { stream_out_420_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_out_420_fifo_cap fifo_update 0 5 }  { stream_out_420_full_n fifo_status 0 1 }  { stream_out_420_write fifo_data 1 1 } } }
	Height_c { ap_fifo {  { Height_c_din fifo_port_we 1 16 }  { Height_c_num_data_valid fifo_status_num_data_valid 0 2 }  { Height_c_fifo_cap fifo_update 0 2 }  { Height_c_full_n fifo_status 0 1 }  { Height_c_write fifo_data 1 1 } } }
	WidthOut_c { ap_fifo {  { WidthOut_c_din fifo_port_we 1 16 }  { WidthOut_c_num_data_valid fifo_status_num_data_valid 0 2 }  { WidthOut_c_fifo_cap fifo_update 0 2 }  { WidthOut_c_full_n fifo_status 0 1 }  { WidthOut_c_write fifo_data 1 1 } } }
}
