set moduleName xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL
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
set hasInterrupt 0
set C_modelName {xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_col_loop_bound int 16 regular  }
	{ bound int 32 regular  }
	{ aecin_data220 int 24 regular {fifo 1 volatile }  }
	{ offset_buffer_V_2 int 9 regular {array 1920 { 0 1 } 1 1 }  }
	{ offset_buffer_V_1 int 9 regular {array 1920 { 0 1 } 1 1 }  }
	{ sub238 int 17 regular  }
	{ offset_buffer_V int 9 regular {array 1920 { 0 1 } 1 1 }  }
	{ p_read1 int 16 regular  }
	{ lsc_out_data218 int 30 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_col_loop_bound", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aecin_data220", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "offset_buffer_V_2", "interface" : "memory", "bitwidth" : 9, "direction" : "READWRITE"} , 
 	{ "Name" : "offset_buffer_V_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READWRITE"} , 
 	{ "Name" : "sub238", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "offset_buffer_V", "interface" : "memory", "bitwidth" : 9, "direction" : "READWRITE"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "lsc_out_data218", "interface" : "fifo", "bitwidth" : 30, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ lsc_out_data218_dout sc_in sc_lv 30 signal 8 } 
	{ lsc_out_data218_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ lsc_out_data218_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ lsc_out_data218_empty_n sc_in sc_logic 1 signal 8 } 
	{ lsc_out_data218_read sc_out sc_logic 1 signal 8 } 
	{ aecin_data220_din sc_out sc_lv 24 signal 2 } 
	{ aecin_data220_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ aecin_data220_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ aecin_data220_full_n sc_in sc_logic 1 signal 2 } 
	{ aecin_data220_write sc_out sc_logic 1 signal 2 } 
	{ in_col_loop_bound sc_in sc_lv 16 signal 0 } 
	{ bound sc_in sc_lv 32 signal 1 } 
	{ offset_buffer_V_2_address0 sc_out sc_lv 11 signal 3 } 
	{ offset_buffer_V_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ offset_buffer_V_2_we0 sc_out sc_logic 1 signal 3 } 
	{ offset_buffer_V_2_d0 sc_out sc_lv 9 signal 3 } 
	{ offset_buffer_V_2_address1 sc_out sc_lv 11 signal 3 } 
	{ offset_buffer_V_2_ce1 sc_out sc_logic 1 signal 3 } 
	{ offset_buffer_V_2_q1 sc_in sc_lv 9 signal 3 } 
	{ offset_buffer_V_1_address0 sc_out sc_lv 11 signal 4 } 
	{ offset_buffer_V_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ offset_buffer_V_1_we0 sc_out sc_logic 1 signal 4 } 
	{ offset_buffer_V_1_d0 sc_out sc_lv 9 signal 4 } 
	{ offset_buffer_V_1_address1 sc_out sc_lv 11 signal 4 } 
	{ offset_buffer_V_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ offset_buffer_V_1_q1 sc_in sc_lv 9 signal 4 } 
	{ sub238 sc_in sc_lv 17 signal 5 } 
	{ offset_buffer_V_address0 sc_out sc_lv 11 signal 6 } 
	{ offset_buffer_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ offset_buffer_V_we0 sc_out sc_logic 1 signal 6 } 
	{ offset_buffer_V_d0 sc_out sc_lv 9 signal 6 } 
	{ offset_buffer_V_address1 sc_out sc_lv 11 signal 6 } 
	{ offset_buffer_V_ce1 sc_out sc_logic 1 signal 6 } 
	{ offset_buffer_V_q1 sc_in sc_lv 9 signal 6 } 
	{ p_read1 sc_in sc_lv 16 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "lsc_out_data218_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "lsc_out_data218", "role": "dout" }} , 
 	{ "name": "lsc_out_data218_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "lsc_out_data218", "role": "num_data_valid" }} , 
 	{ "name": "lsc_out_data218_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "lsc_out_data218", "role": "fifo_cap" }} , 
 	{ "name": "lsc_out_data218_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lsc_out_data218", "role": "empty_n" }} , 
 	{ "name": "lsc_out_data218_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lsc_out_data218", "role": "read" }} , 
 	{ "name": "aecin_data220_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "aecin_data220", "role": "din" }} , 
 	{ "name": "aecin_data220_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aecin_data220", "role": "num_data_valid" }} , 
 	{ "name": "aecin_data220_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aecin_data220", "role": "fifo_cap" }} , 
 	{ "name": "aecin_data220_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aecin_data220", "role": "full_n" }} , 
 	{ "name": "aecin_data220_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aecin_data220", "role": "write" }} , 
 	{ "name": "in_col_loop_bound", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_col_loop_bound", "role": "default" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "offset_buffer_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "offset_buffer_V_2", "role": "address0" }} , 
 	{ "name": "offset_buffer_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offset_buffer_V_2", "role": "ce0" }} , 
 	{ "name": "offset_buffer_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offset_buffer_V_2", "role": "we0" }} , 
 	{ "name": "offset_buffer_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "offset_buffer_V_2", "role": "d0" }} , 
 	{ "name": "offset_buffer_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "offset_buffer_V_2", "role": "address1" }} , 
 	{ "name": "offset_buffer_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offset_buffer_V_2", "role": "ce1" }} , 
 	{ "name": "offset_buffer_V_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "offset_buffer_V_2", "role": "q1" }} , 
 	{ "name": "offset_buffer_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "offset_buffer_V_1", "role": "address0" }} , 
 	{ "name": "offset_buffer_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offset_buffer_V_1", "role": "ce0" }} , 
 	{ "name": "offset_buffer_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offset_buffer_V_1", "role": "we0" }} , 
 	{ "name": "offset_buffer_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "offset_buffer_V_1", "role": "d0" }} , 
 	{ "name": "offset_buffer_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "offset_buffer_V_1", "role": "address1" }} , 
 	{ "name": "offset_buffer_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offset_buffer_V_1", "role": "ce1" }} , 
 	{ "name": "offset_buffer_V_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "offset_buffer_V_1", "role": "q1" }} , 
 	{ "name": "sub238", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "sub238", "role": "default" }} , 
 	{ "name": "offset_buffer_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "offset_buffer_V", "role": "address0" }} , 
 	{ "name": "offset_buffer_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offset_buffer_V", "role": "ce0" }} , 
 	{ "name": "offset_buffer_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offset_buffer_V", "role": "we0" }} , 
 	{ "name": "offset_buffer_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "offset_buffer_V", "role": "d0" }} , 
 	{ "name": "offset_buffer_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "offset_buffer_V", "role": "address1" }} , 
 	{ "name": "offset_buffer_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "offset_buffer_V", "role": "ce1" }} , 
 	{ "name": "offset_buffer_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "offset_buffer_V", "role": "q1" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2073604", "EstimateLatencyMax" : "2073604",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_47", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_65", "FromFinalSV" : "2", "FromAddress" : "offset_buffer_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state5_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_186", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_186", "ToFinalSV" : "4", "ToAddress" : "offset_buffer_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(../../../../../overlays/Vitis_Libraries/vision//L1/include/imgproc/xf_quantizationdithering.hpp:182:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_49", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_68", "FromFinalSV" : "2", "FromAddress" : "offset_buffer_V_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state5_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_215", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_215", "ToFinalSV" : "4", "ToAddress" : "offset_buffer_V_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(../../../../../overlays/Vitis_Libraries/vision//L1/include/imgproc/xf_quantizationdithering.hpp:182:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_51", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_71", "FromFinalSV" : "2", "FromAddress" : "offset_buffer_V_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state5_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_244", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_244", "ToFinalSV" : "4", "ToAddress" : "offset_buffer_V_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(../../../../../overlays/Vitis_Libraries/vision//L1/include/imgproc/xf_quantizationdithering.hpp:182:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state5_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_186", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_186", "FromFinalSV" : "4", "FromAddress" : "offset_buffer_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_47", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_65", "ToFinalSV" : "2", "ToAddress" : "offset_buffer_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(../../../../../overlays/Vitis_Libraries/vision//L1/include/imgproc/xf_quantizationdithering.hpp:182:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state5_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state5_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_215", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_215", "FromFinalSV" : "4", "FromAddress" : "offset_buffer_V_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_49", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_68", "ToFinalSV" : "2", "ToAddress" : "offset_buffer_V_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(../../../../../overlays/Vitis_Libraries/vision//L1/include/imgproc/xf_quantizationdithering.hpp:182:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state5_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state5_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_244", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_244", "FromFinalSV" : "4", "FromAddress" : "offset_buffer_V_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_51", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_71", "ToFinalSV" : "2", "ToAddress" : "offset_buffer_V_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(../../../../../overlays/Vitis_Libraries/vision//L1/include/imgproc/xf_quantizationdithering.hpp:182:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state5_pp0_iter4_stage0"]}],
		"Port" : [
			{"Name" : "in_col_loop_bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "aecin_data220", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aecin_data220_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "offset_buffer_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "offset_buffer_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sub238", "Type" : "None", "Direction" : "I"},
			{"Name" : "offset_buffer_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "lsc_out_data218", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "lsc_out_data218_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_ROW_LOOP_COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xf_QuatizationDithering_Pipeline_LOOP_ROW_LOOP_COL {
		in_col_loop_bound {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		aecin_data220 {Type O LastRead -1 FirstWrite 4}
		offset_buffer_V_2 {Type IO LastRead 1 FirstWrite 4}
		offset_buffer_V_1 {Type IO LastRead 1 FirstWrite 4}
		sub238 {Type I LastRead 0 FirstWrite -1}
		offset_buffer_V {Type IO LastRead 1 FirstWrite 4}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		lsc_out_data218 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2073604", "Max" : "2073604"}
	, {"Name" : "Interval", "Min" : "2073604", "Max" : "2073604"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_col_loop_bound { ap_none {  { in_col_loop_bound in_data 0 16 } } }
	bound { ap_none {  { bound in_data 0 32 } } }
	aecin_data220 { ap_fifo {  { aecin_data220_din fifo_port_we 1 24 }  { aecin_data220_num_data_valid fifo_status_num_data_valid 0 3 }  { aecin_data220_fifo_cap fifo_update 0 3 }  { aecin_data220_full_n fifo_status 0 1 }  { aecin_data220_write fifo_data 1 1 } } }
	offset_buffer_V_2 { ap_memory {  { offset_buffer_V_2_address0 mem_address 1 11 }  { offset_buffer_V_2_ce0 mem_ce 1 1 }  { offset_buffer_V_2_we0 mem_we 1 1 }  { offset_buffer_V_2_d0 mem_din 1 9 }  { offset_buffer_V_2_address1 MemPortADDR2 1 11 }  { offset_buffer_V_2_ce1 MemPortCE2 1 1 }  { offset_buffer_V_2_q1 in_data 0 9 } } }
	offset_buffer_V_1 { ap_memory {  { offset_buffer_V_1_address0 mem_address 1 11 }  { offset_buffer_V_1_ce0 mem_ce 1 1 }  { offset_buffer_V_1_we0 mem_we 1 1 }  { offset_buffer_V_1_d0 mem_din 1 9 }  { offset_buffer_V_1_address1 MemPortADDR2 1 11 }  { offset_buffer_V_1_ce1 MemPortCE2 1 1 }  { offset_buffer_V_1_q1 in_data 0 9 } } }
	sub238 { ap_none {  { sub238 in_data 0 17 } } }
	offset_buffer_V { ap_memory {  { offset_buffer_V_address0 mem_address 1 11 }  { offset_buffer_V_ce0 mem_ce 1 1 }  { offset_buffer_V_we0 mem_we 1 1 }  { offset_buffer_V_d0 mem_din 1 9 }  { offset_buffer_V_address1 MemPortADDR2 1 11 }  { offset_buffer_V_ce1 MemPortCE2 1 1 }  { offset_buffer_V_q1 in_data 0 9 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 16 } } }
	lsc_out_data218 { ap_fifo {  { lsc_out_data218_dout fifo_port_we 0 30 }  { lsc_out_data218_num_data_valid fifo_status_num_data_valid 0 3 }  { lsc_out_data218_fifo_cap fifo_update 0 3 }  { lsc_out_data218_empty_n fifo_status 0 1 }  { lsc_out_data218_read fifo_data 1 1 } } }
}
