set moduleName v_vcresampler_core_Pipeline_VITIS_LOOP_1853_2
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
set C_modelName {v_vcresampler_core_Pipeline_VITIS_LOOP_1853_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ loopWidth int 16 regular {ap_stable 0} }
	{ cmp100 int 1 regular  }
	{ linebuf_c_val_V_1 int 8 regular {array 1920 { 0 1 } 1 1 }  }
	{ out_y_cast int 1 regular  }
	{ cmp384 int 1 regular  }
	{ linebuf_y_val_V int 8 regular {array 1920 { 2 3 } 1 1 }  }
	{ linebuf_c_val_V int 8 regular {array 1920 { 0 1 } 1 1 }  }
	{ cmp33 int 1 regular  }
	{ stream_out_422 int 24 regular {fifo 0 volatile }  }
	{ stream_out_420 int 24 regular {fifo 1 volatile }  }
	{ p_read int 1 regular  }
	{ p_0_1_0_0_0723_out int 8 regular {pointer 2}  }
	{ p_0_0_0_0_0393721_out int 8 regular {pointer 2}  }
	{ p_0_2_0_0_0719_out int 8 regular {pointer 2}  }
	{ p_0_1_0_0_0717_out int 8 regular {pointer 2}  }
	{ p_0_0_0_0_0393715_out int 8 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "loopWidth", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "cmp100", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "linebuf_c_val_V_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "out_y_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp384", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "linebuf_y_val_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "linebuf_c_val_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "cmp33", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_out_422", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "stream_out_420", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_1_0_0_0723_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0393721_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_2_0_0_0719_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_1_0_0_0717_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0393715_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_out_422_dout sc_in sc_lv 24 signal 8 } 
	{ stream_out_422_num_data_valid sc_in sc_lv 5 signal 8 } 
	{ stream_out_422_fifo_cap sc_in sc_lv 5 signal 8 } 
	{ stream_out_422_empty_n sc_in sc_logic 1 signal 8 } 
	{ stream_out_422_read sc_out sc_logic 1 signal 8 } 
	{ stream_out_420_din sc_out sc_lv 24 signal 9 } 
	{ stream_out_420_num_data_valid sc_in sc_lv 5 signal 9 } 
	{ stream_out_420_fifo_cap sc_in sc_lv 5 signal 9 } 
	{ stream_out_420_full_n sc_in sc_logic 1 signal 9 } 
	{ stream_out_420_write sc_out sc_logic 1 signal 9 } 
	{ loopWidth sc_in sc_lv 16 signal 0 } 
	{ cmp100 sc_in sc_lv 1 signal 1 } 
	{ linebuf_c_val_V_1_address0 sc_out sc_lv 11 signal 2 } 
	{ linebuf_c_val_V_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ linebuf_c_val_V_1_we0 sc_out sc_logic 1 signal 2 } 
	{ linebuf_c_val_V_1_d0 sc_out sc_lv 8 signal 2 } 
	{ linebuf_c_val_V_1_address1 sc_out sc_lv 11 signal 2 } 
	{ linebuf_c_val_V_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ linebuf_c_val_V_1_q1 sc_in sc_lv 8 signal 2 } 
	{ out_y_cast sc_in sc_lv 1 signal 3 } 
	{ cmp384 sc_in sc_lv 1 signal 4 } 
	{ linebuf_y_val_V_address0 sc_out sc_lv 11 signal 5 } 
	{ linebuf_y_val_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ linebuf_y_val_V_we0 sc_out sc_logic 1 signal 5 } 
	{ linebuf_y_val_V_d0 sc_out sc_lv 8 signal 5 } 
	{ linebuf_y_val_V_q0 sc_in sc_lv 8 signal 5 } 
	{ linebuf_c_val_V_address0 sc_out sc_lv 11 signal 6 } 
	{ linebuf_c_val_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ linebuf_c_val_V_we0 sc_out sc_logic 1 signal 6 } 
	{ linebuf_c_val_V_d0 sc_out sc_lv 8 signal 6 } 
	{ linebuf_c_val_V_address1 sc_out sc_lv 11 signal 6 } 
	{ linebuf_c_val_V_ce1 sc_out sc_logic 1 signal 6 } 
	{ linebuf_c_val_V_q1 sc_in sc_lv 8 signal 6 } 
	{ cmp33 sc_in sc_lv 1 signal 7 } 
	{ p_read sc_in sc_lv 1 signal 10 } 
	{ p_0_1_0_0_0723_out_i sc_in sc_lv 8 signal 11 } 
	{ p_0_1_0_0_0723_out_o sc_out sc_lv 8 signal 11 } 
	{ p_0_1_0_0_0723_out_o_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ p_0_0_0_0_0393721_out_i sc_in sc_lv 8 signal 12 } 
	{ p_0_0_0_0_0393721_out_o sc_out sc_lv 8 signal 12 } 
	{ p_0_0_0_0_0393721_out_o_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ p_0_2_0_0_0719_out_i sc_in sc_lv 8 signal 13 } 
	{ p_0_2_0_0_0719_out_o sc_out sc_lv 8 signal 13 } 
	{ p_0_2_0_0_0719_out_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ p_0_1_0_0_0717_out_i sc_in sc_lv 8 signal 14 } 
	{ p_0_1_0_0_0717_out_o sc_out sc_lv 8 signal 14 } 
	{ p_0_1_0_0_0717_out_o_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ p_0_0_0_0_0393715_out_i sc_in sc_lv 8 signal 15 } 
	{ p_0_0_0_0_0393715_out_o sc_out sc_lv 8 signal 15 } 
	{ p_0_0_0_0_0393715_out_o_ap_vld sc_out sc_logic 1 outvld 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_out_422_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_out_422", "role": "dout" }} , 
 	{ "name": "stream_out_422_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_422", "role": "num_data_valid" }} , 
 	{ "name": "stream_out_422_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_422", "role": "fifo_cap" }} , 
 	{ "name": "stream_out_422_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_422", "role": "empty_n" }} , 
 	{ "name": "stream_out_422_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_422", "role": "read" }} , 
 	{ "name": "stream_out_420_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "stream_out_420", "role": "din" }} , 
 	{ "name": "stream_out_420_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_420", "role": "num_data_valid" }} , 
 	{ "name": "stream_out_420_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "stream_out_420", "role": "fifo_cap" }} , 
 	{ "name": "stream_out_420_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_420", "role": "full_n" }} , 
 	{ "name": "stream_out_420_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_420", "role": "write" }} , 
 	{ "name": "loopWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "loopWidth", "role": "default" }} , 
 	{ "name": "cmp100", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp100", "role": "default" }} , 
 	{ "name": "linebuf_c_val_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c_val_V_1", "role": "address0" }} , 
 	{ "name": "linebuf_c_val_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_val_V_1", "role": "ce0" }} , 
 	{ "name": "linebuf_c_val_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_val_V_1", "role": "we0" }} , 
 	{ "name": "linebuf_c_val_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_c_val_V_1", "role": "d0" }} , 
 	{ "name": "linebuf_c_val_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c_val_V_1", "role": "address1" }} , 
 	{ "name": "linebuf_c_val_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_val_V_1", "role": "ce1" }} , 
 	{ "name": "linebuf_c_val_V_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_c_val_V_1", "role": "q1" }} , 
 	{ "name": "out_y_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_y_cast", "role": "default" }} , 
 	{ "name": "cmp384", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp384", "role": "default" }} , 
 	{ "name": "linebuf_y_val_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_y_val_V", "role": "address0" }} , 
 	{ "name": "linebuf_y_val_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_y_val_V", "role": "ce0" }} , 
 	{ "name": "linebuf_y_val_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_y_val_V", "role": "we0" }} , 
 	{ "name": "linebuf_y_val_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_y_val_V", "role": "d0" }} , 
 	{ "name": "linebuf_y_val_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_y_val_V", "role": "q0" }} , 
 	{ "name": "linebuf_c_val_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c_val_V", "role": "address0" }} , 
 	{ "name": "linebuf_c_val_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_val_V", "role": "ce0" }} , 
 	{ "name": "linebuf_c_val_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_val_V", "role": "we0" }} , 
 	{ "name": "linebuf_c_val_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_c_val_V", "role": "d0" }} , 
 	{ "name": "linebuf_c_val_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c_val_V", "role": "address1" }} , 
 	{ "name": "linebuf_c_val_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_val_V", "role": "ce1" }} , 
 	{ "name": "linebuf_c_val_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_c_val_V", "role": "q1" }} , 
 	{ "name": "cmp33", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp33", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_0_1_0_0_0723_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_0723_out", "role": "i" }} , 
 	{ "name": "p_0_1_0_0_0723_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_0723_out", "role": "o" }} , 
 	{ "name": "p_0_1_0_0_0723_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_0723_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0393721_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0393721_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0393721_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0393721_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0393721_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0393721_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_2_0_0_0719_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_2_0_0_0719_out", "role": "i" }} , 
 	{ "name": "p_0_2_0_0_0719_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_2_0_0_0719_out", "role": "o" }} , 
 	{ "name": "p_0_2_0_0_0719_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_2_0_0_0719_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_1_0_0_0717_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_0717_out", "role": "i" }} , 
 	{ "name": "p_0_1_0_0_0717_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_0717_out", "role": "o" }} , 
 	{ "name": "p_0_1_0_0_0717_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_0717_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0393715_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0393715_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0393715_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0393715_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0393715_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0393715_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "4", "Max" : "32771"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "32771"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	loopWidth { ap_stable {  { loopWidth in_data 0 16 } } }
	cmp100 { ap_none {  { cmp100 in_data 0 1 } } }
	linebuf_c_val_V_1 { ap_memory {  { linebuf_c_val_V_1_address0 mem_address 1 11 }  { linebuf_c_val_V_1_ce0 mem_ce 1 1 }  { linebuf_c_val_V_1_we0 mem_we 1 1 }  { linebuf_c_val_V_1_d0 mem_din 1 8 }  { linebuf_c_val_V_1_address1 MemPortADDR2 1 11 }  { linebuf_c_val_V_1_ce1 MemPortCE2 1 1 }  { linebuf_c_val_V_1_q1 in_data 0 8 } } }
	out_y_cast { ap_none {  { out_y_cast in_data 0 1 } } }
	cmp384 { ap_none {  { cmp384 in_data 0 1 } } }
	linebuf_y_val_V { ap_memory {  { linebuf_y_val_V_address0 mem_address 1 11 }  { linebuf_y_val_V_ce0 mem_ce 1 1 }  { linebuf_y_val_V_we0 mem_we 1 1 }  { linebuf_y_val_V_d0 mem_din 1 8 }  { linebuf_y_val_V_q0 in_data 0 8 } } }
	linebuf_c_val_V { ap_memory {  { linebuf_c_val_V_address0 mem_address 1 11 }  { linebuf_c_val_V_ce0 mem_ce 1 1 }  { linebuf_c_val_V_we0 mem_we 1 1 }  { linebuf_c_val_V_d0 mem_din 1 8 }  { linebuf_c_val_V_address1 MemPortADDR2 1 11 }  { linebuf_c_val_V_ce1 MemPortCE2 1 1 }  { linebuf_c_val_V_q1 in_data 0 8 } } }
	cmp33 { ap_none {  { cmp33 in_data 0 1 } } }
	stream_out_422 { ap_fifo {  { stream_out_422_dout fifo_port_we 0 24 }  { stream_out_422_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_out_422_fifo_cap fifo_update 0 5 }  { stream_out_422_empty_n fifo_status 0 1 }  { stream_out_422_read fifo_data 1 1 } } }
	stream_out_420 { ap_fifo {  { stream_out_420_din fifo_port_we 1 24 }  { stream_out_420_num_data_valid fifo_status_num_data_valid 0 5 }  { stream_out_420_fifo_cap fifo_update 0 5 }  { stream_out_420_full_n fifo_status 0 1 }  { stream_out_420_write fifo_data 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 1 } } }
	p_0_1_0_0_0723_out { ap_ovld {  { p_0_1_0_0_0723_out_i in_data 0 8 }  { p_0_1_0_0_0723_out_o out_data 1 8 }  { p_0_1_0_0_0723_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0393721_out { ap_ovld {  { p_0_0_0_0_0393721_out_i in_data 0 8 }  { p_0_0_0_0_0393721_out_o out_data 1 8 }  { p_0_0_0_0_0393721_out_o_ap_vld out_vld 1 1 } } }
	p_0_2_0_0_0719_out { ap_ovld {  { p_0_2_0_0_0719_out_i in_data 0 8 }  { p_0_2_0_0_0719_out_o out_data 1 8 }  { p_0_2_0_0_0719_out_o_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_0717_out { ap_ovld {  { p_0_1_0_0_0717_out_i in_data 0 8 }  { p_0_1_0_0_0717_out_o out_data 1 8 }  { p_0_1_0_0_0717_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0393715_out { ap_ovld {  { p_0_0_0_0_0393715_out_i in_data 0 8 }  { p_0_0_0_0_0393715_out_o out_data 1 8 }  { p_0_0_0_0_0393715_out_o_ap_vld out_vld 1 1 } } }
}
