set moduleName vscale_core_polyphase_Pipeline_loop_width_for_procpix
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
set C_modelName {vscale_core_polyphase_Pipeline_loop_width_for_procpix}
set C_modelType { void 0 }
set C_modelArgList {
	{ FiltCoeff_5 int 16 regular {array 64 { 1 } 1 1 }  }
	{ idxprom11_i int 6 regular  }
	{ FiltCoeff_4 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_3 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_2 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff_1 int 16 regular {array 64 { 1 } 1 1 }  }
	{ FiltCoeff int 16 regular {array 64 { 1 } 1 1 }  }
	{ InPixels int 11 regular  }
	{ OutputWriteEn_1 int 1 regular  }
	{ LineBuf_val_V_5 int 24 regular {array 1920 { 0 1 } 1 1 }  }
	{ LineBuf_val_V_4 int 24 regular {array 1920 { 0 1 } 1 1 }  }
	{ LineBuf_val_V_3 int 24 regular {array 1920 { 0 1 } 1 1 }  }
	{ LineBuf_val_V_2 int 24 regular {array 1920 { 0 1 } 1 1 }  }
	{ LineBuf_val_V_1 int 24 regular {array 1920 { 0 1 } 1 1 }  }
	{ LineBuf_val_V int 24 regular {array 1920 { 2 3 } 1 1 }  }
	{ brmerge int 1 regular  }
	{ cmp159 int 1 regular  }
	{ cmp119 int 1 regular  }
	{ SrcYUV422 int 24 regular {fifo 0 volatile }  }
	{ OutYUV int 24 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "FiltCoeff_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "idxprom11_i", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "FiltCoeff", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "InPixels", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "OutputWriteEn_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "LineBuf_val_V_5", "interface" : "memory", "bitwidth" : 24, "direction" : "READWRITE"} , 
 	{ "Name" : "LineBuf_val_V_4", "interface" : "memory", "bitwidth" : 24, "direction" : "READWRITE"} , 
 	{ "Name" : "LineBuf_val_V_3", "interface" : "memory", "bitwidth" : 24, "direction" : "READWRITE"} , 
 	{ "Name" : "LineBuf_val_V_2", "interface" : "memory", "bitwidth" : 24, "direction" : "READWRITE"} , 
 	{ "Name" : "LineBuf_val_V_1", "interface" : "memory", "bitwidth" : 24, "direction" : "READWRITE"} , 
 	{ "Name" : "LineBuf_val_V", "interface" : "memory", "bitwidth" : 24, "direction" : "READWRITE"} , 
 	{ "Name" : "brmerge", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp159", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp119", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SrcYUV422", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "OutYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 80
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ SrcYUV422_dout sc_in sc_lv 24 signal 18 } 
	{ SrcYUV422_num_data_valid sc_in sc_lv 5 signal 18 } 
	{ SrcYUV422_fifo_cap sc_in sc_lv 5 signal 18 } 
	{ SrcYUV422_empty_n sc_in sc_logic 1 signal 18 } 
	{ SrcYUV422_read sc_out sc_logic 1 signal 18 } 
	{ OutYUV_din sc_out sc_lv 24 signal 19 } 
	{ OutYUV_num_data_valid sc_in sc_lv 5 signal 19 } 
	{ OutYUV_fifo_cap sc_in sc_lv 5 signal 19 } 
	{ OutYUV_full_n sc_in sc_logic 1 signal 19 } 
	{ OutYUV_write sc_out sc_logic 1 signal 19 } 
	{ FiltCoeff_5_address0 sc_out sc_lv 6 signal 0 } 
	{ FiltCoeff_5_ce0 sc_out sc_logic 1 signal 0 } 
	{ FiltCoeff_5_q0 sc_in sc_lv 16 signal 0 } 
	{ idxprom11_i sc_in sc_lv 6 signal 1 } 
	{ FiltCoeff_4_address0 sc_out sc_lv 6 signal 2 } 
	{ FiltCoeff_4_ce0 sc_out sc_logic 1 signal 2 } 
	{ FiltCoeff_4_q0 sc_in sc_lv 16 signal 2 } 
	{ FiltCoeff_3_address0 sc_out sc_lv 6 signal 3 } 
	{ FiltCoeff_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ FiltCoeff_3_q0 sc_in sc_lv 16 signal 3 } 
	{ FiltCoeff_2_address0 sc_out sc_lv 6 signal 4 } 
	{ FiltCoeff_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ FiltCoeff_2_q0 sc_in sc_lv 16 signal 4 } 
	{ FiltCoeff_1_address0 sc_out sc_lv 6 signal 5 } 
	{ FiltCoeff_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ FiltCoeff_1_q0 sc_in sc_lv 16 signal 5 } 
	{ FiltCoeff_address0 sc_out sc_lv 6 signal 6 } 
	{ FiltCoeff_ce0 sc_out sc_logic 1 signal 6 } 
	{ FiltCoeff_q0 sc_in sc_lv 16 signal 6 } 
	{ InPixels sc_in sc_lv 11 signal 7 } 
	{ OutputWriteEn_1 sc_in sc_lv 1 signal 8 } 
	{ LineBuf_val_V_5_address0 sc_out sc_lv 11 signal 9 } 
	{ LineBuf_val_V_5_ce0 sc_out sc_logic 1 signal 9 } 
	{ LineBuf_val_V_5_we0 sc_out sc_logic 1 signal 9 } 
	{ LineBuf_val_V_5_d0 sc_out sc_lv 24 signal 9 } 
	{ LineBuf_val_V_5_address1 sc_out sc_lv 11 signal 9 } 
	{ LineBuf_val_V_5_ce1 sc_out sc_logic 1 signal 9 } 
	{ LineBuf_val_V_5_q1 sc_in sc_lv 24 signal 9 } 
	{ LineBuf_val_V_4_address0 sc_out sc_lv 11 signal 10 } 
	{ LineBuf_val_V_4_ce0 sc_out sc_logic 1 signal 10 } 
	{ LineBuf_val_V_4_we0 sc_out sc_logic 1 signal 10 } 
	{ LineBuf_val_V_4_d0 sc_out sc_lv 24 signal 10 } 
	{ LineBuf_val_V_4_address1 sc_out sc_lv 11 signal 10 } 
	{ LineBuf_val_V_4_ce1 sc_out sc_logic 1 signal 10 } 
	{ LineBuf_val_V_4_q1 sc_in sc_lv 24 signal 10 } 
	{ LineBuf_val_V_3_address0 sc_out sc_lv 11 signal 11 } 
	{ LineBuf_val_V_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ LineBuf_val_V_3_we0 sc_out sc_logic 1 signal 11 } 
	{ LineBuf_val_V_3_d0 sc_out sc_lv 24 signal 11 } 
	{ LineBuf_val_V_3_address1 sc_out sc_lv 11 signal 11 } 
	{ LineBuf_val_V_3_ce1 sc_out sc_logic 1 signal 11 } 
	{ LineBuf_val_V_3_q1 sc_in sc_lv 24 signal 11 } 
	{ LineBuf_val_V_2_address0 sc_out sc_lv 11 signal 12 } 
	{ LineBuf_val_V_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ LineBuf_val_V_2_we0 sc_out sc_logic 1 signal 12 } 
	{ LineBuf_val_V_2_d0 sc_out sc_lv 24 signal 12 } 
	{ LineBuf_val_V_2_address1 sc_out sc_lv 11 signal 12 } 
	{ LineBuf_val_V_2_ce1 sc_out sc_logic 1 signal 12 } 
	{ LineBuf_val_V_2_q1 sc_in sc_lv 24 signal 12 } 
	{ LineBuf_val_V_1_address0 sc_out sc_lv 11 signal 13 } 
	{ LineBuf_val_V_1_ce0 sc_out sc_logic 1 signal 13 } 
	{ LineBuf_val_V_1_we0 sc_out sc_logic 1 signal 13 } 
	{ LineBuf_val_V_1_d0 sc_out sc_lv 24 signal 13 } 
	{ LineBuf_val_V_1_address1 sc_out sc_lv 11 signal 13 } 
	{ LineBuf_val_V_1_ce1 sc_out sc_logic 1 signal 13 } 
	{ LineBuf_val_V_1_q1 sc_in sc_lv 24 signal 13 } 
	{ LineBuf_val_V_address0 sc_out sc_lv 11 signal 14 } 
	{ LineBuf_val_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ LineBuf_val_V_we0 sc_out sc_logic 1 signal 14 } 
	{ LineBuf_val_V_d0 sc_out sc_lv 24 signal 14 } 
	{ LineBuf_val_V_q0 sc_in sc_lv 24 signal 14 } 
	{ brmerge sc_in sc_lv 1 signal 15 } 
	{ cmp159 sc_in sc_lv 1 signal 16 } 
	{ cmp119 sc_in sc_lv 1 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "SrcYUV422_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "dout" }} , 
 	{ "name": "SrcYUV422_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "num_data_valid" }} , 
 	{ "name": "SrcYUV422_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "fifo_cap" }} , 
 	{ "name": "SrcYUV422_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "empty_n" }} , 
 	{ "name": "SrcYUV422_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "read" }} , 
 	{ "name": "OutYUV_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "OutYUV", "role": "din" }} , 
 	{ "name": "OutYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "OutYUV", "role": "num_data_valid" }} , 
 	{ "name": "OutYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "OutYUV", "role": "fifo_cap" }} , 
 	{ "name": "OutYUV_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutYUV", "role": "full_n" }} , 
 	{ "name": "OutYUV_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutYUV", "role": "write" }} , 
 	{ "name": "FiltCoeff_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_5", "role": "address0" }} , 
 	{ "name": "FiltCoeff_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_5", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_5", "role": "q0" }} , 
 	{ "name": "idxprom11_i", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "idxprom11_i", "role": "default" }} , 
 	{ "name": "FiltCoeff_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_4", "role": "address0" }} , 
 	{ "name": "FiltCoeff_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_4", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_4", "role": "q0" }} , 
 	{ "name": "FiltCoeff_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_3", "role": "address0" }} , 
 	{ "name": "FiltCoeff_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_3", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_3", "role": "q0" }} , 
 	{ "name": "FiltCoeff_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_2", "role": "address0" }} , 
 	{ "name": "FiltCoeff_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_2", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_2", "role": "q0" }} , 
 	{ "name": "FiltCoeff_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff_1", "role": "address0" }} , 
 	{ "name": "FiltCoeff_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff_1", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff_1", "role": "q0" }} , 
 	{ "name": "FiltCoeff_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FiltCoeff", "role": "address0" }} , 
 	{ "name": "FiltCoeff_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FiltCoeff", "role": "ce0" }} , 
 	{ "name": "FiltCoeff_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "FiltCoeff", "role": "q0" }} , 
 	{ "name": "InPixels", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "InPixels", "role": "default" }} , 
 	{ "name": "OutputWriteEn_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OutputWriteEn_1", "role": "default" }} , 
 	{ "name": "LineBuf_val_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "LineBuf_val_V_5", "role": "address0" }} , 
 	{ "name": "LineBuf_val_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V_5", "role": "ce0" }} , 
 	{ "name": "LineBuf_val_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V_5", "role": "we0" }} , 
 	{ "name": "LineBuf_val_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "LineBuf_val_V_5", "role": "d0" }} , 
 	{ "name": "LineBuf_val_V_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "LineBuf_val_V_5", "role": "address1" }} , 
 	{ "name": "LineBuf_val_V_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V_5", "role": "ce1" }} , 
 	{ "name": "LineBuf_val_V_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "LineBuf_val_V_5", "role": "q1" }} , 
 	{ "name": "LineBuf_val_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "LineBuf_val_V_4", "role": "address0" }} , 
 	{ "name": "LineBuf_val_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V_4", "role": "ce0" }} , 
 	{ "name": "LineBuf_val_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V_4", "role": "we0" }} , 
 	{ "name": "LineBuf_val_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "LineBuf_val_V_4", "role": "d0" }} , 
 	{ "name": "LineBuf_val_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "LineBuf_val_V_4", "role": "address1" }} , 
 	{ "name": "LineBuf_val_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V_4", "role": "ce1" }} , 
 	{ "name": "LineBuf_val_V_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "LineBuf_val_V_4", "role": "q1" }} , 
 	{ "name": "LineBuf_val_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "LineBuf_val_V_3", "role": "address0" }} , 
 	{ "name": "LineBuf_val_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V_3", "role": "ce0" }} , 
 	{ "name": "LineBuf_val_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V_3", "role": "we0" }} , 
 	{ "name": "LineBuf_val_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "LineBuf_val_V_3", "role": "d0" }} , 
 	{ "name": "LineBuf_val_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "LineBuf_val_V_3", "role": "address1" }} , 
 	{ "name": "LineBuf_val_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V_3", "role": "ce1" }} , 
 	{ "name": "LineBuf_val_V_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "LineBuf_val_V_3", "role": "q1" }} , 
 	{ "name": "LineBuf_val_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "LineBuf_val_V_2", "role": "address0" }} , 
 	{ "name": "LineBuf_val_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V_2", "role": "ce0" }} , 
 	{ "name": "LineBuf_val_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V_2", "role": "we0" }} , 
 	{ "name": "LineBuf_val_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "LineBuf_val_V_2", "role": "d0" }} , 
 	{ "name": "LineBuf_val_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "LineBuf_val_V_2", "role": "address1" }} , 
 	{ "name": "LineBuf_val_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V_2", "role": "ce1" }} , 
 	{ "name": "LineBuf_val_V_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "LineBuf_val_V_2", "role": "q1" }} , 
 	{ "name": "LineBuf_val_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "LineBuf_val_V_1", "role": "address0" }} , 
 	{ "name": "LineBuf_val_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V_1", "role": "ce0" }} , 
 	{ "name": "LineBuf_val_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V_1", "role": "we0" }} , 
 	{ "name": "LineBuf_val_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "LineBuf_val_V_1", "role": "d0" }} , 
 	{ "name": "LineBuf_val_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "LineBuf_val_V_1", "role": "address1" }} , 
 	{ "name": "LineBuf_val_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V_1", "role": "ce1" }} , 
 	{ "name": "LineBuf_val_V_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "LineBuf_val_V_1", "role": "q1" }} , 
 	{ "name": "LineBuf_val_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "LineBuf_val_V", "role": "address0" }} , 
 	{ "name": "LineBuf_val_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V", "role": "ce0" }} , 
 	{ "name": "LineBuf_val_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LineBuf_val_V", "role": "we0" }} , 
 	{ "name": "LineBuf_val_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "LineBuf_val_V", "role": "d0" }} , 
 	{ "name": "LineBuf_val_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "LineBuf_val_V", "role": "q0" }} , 
 	{ "name": "brmerge", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brmerge", "role": "default" }} , 
 	{ "name": "cmp159", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp159", "role": "default" }} , 
 	{ "name": "cmp119", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp119", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "vscale_core_polyphase_Pipeline_loop_width_for_procpix",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "1932",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_58", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_58", "FromFinalSV" : "1", "FromAddress" : "LineBuf_val_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_43", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_64", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_43", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_64", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_58", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_58", "ToFinalSV" : "1", "ToAddress" : "LineBuf_val_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_45", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_68", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_117", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_117", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_47", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_72", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_112", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_112", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_49", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_76", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_107", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_107", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_51", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_80", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_4_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_102", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_102", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_4_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_53", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_84", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_5_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_97", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_97", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_5_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_97", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_97", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_5_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_53", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_84", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_5_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_102", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_102", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_4_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_51", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_80", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_4_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_107", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_107", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_49", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_76", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_3_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_112", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_112", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_47", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_72", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_117", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_117", "FromFinalSV" : "2", "FromAddress" : "LineBuf_val_V_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_45", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_68", "ToFinalSV" : "2", "ToAddress" : "LineBuf_val_V_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(/home/user/Documents/kria-vitis-platforms/kv260/platforms/vivado/kv260_ispMipiRx_vcu_DP/project/kv260_ispMipiRx_vcu_DP.runs/bd_eab1_vsc_0_synth_1/prj/sol/.autopilot/db/v_vscaler.cpp:252:12)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]}],
		"Port" : [
			{"Name" : "FiltCoeff_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "idxprom11_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "FiltCoeff_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FiltCoeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "InPixels", "Type" : "None", "Direction" : "I"},
			{"Name" : "OutputWriteEn_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "LineBuf_val_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LineBuf_val_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LineBuf_val_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LineBuf_val_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LineBuf_val_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "LineBuf_val_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "brmerge", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp159", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp119", "Type" : "None", "Direction" : "I"},
			{"Name" : "SrcYUV422", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "SrcYUV422_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OutYUV", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "OutYUV_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_width_for_procpix", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_12ns_24_4_1_U112", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_12ns_24_4_1_U113", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_12ns_24_4_1_U114", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_24s_25_4_1_U115", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_24s_25_4_1_U116", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_24s_25_4_1_U117", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_25s_26_4_1_U118", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_25s_26_4_1_U119", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_25s_26_4_1_U120", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_26s_26_4_1_U121", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_26s_26_4_1_U122", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_26s_26_4_1_U123", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_26s_27_4_1_U124", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_26s_27_4_1_U125", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_26s_27_4_1_U126", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_27s_27_4_1_U127", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_27s_27_4_1_U128", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_27s_27_4_1_U129", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	vscale_core_polyphase_Pipeline_loop_width_for_procpix {
		FiltCoeff_5 {Type I LastRead 6 FirstWrite -1}
		idxprom11_i {Type I LastRead 0 FirstWrite -1}
		FiltCoeff_4 {Type I LastRead 5 FirstWrite -1}
		FiltCoeff_3 {Type I LastRead 4 FirstWrite -1}
		FiltCoeff_2 {Type I LastRead 3 FirstWrite -1}
		FiltCoeff_1 {Type I LastRead 2 FirstWrite -1}
		FiltCoeff {Type I LastRead 1 FirstWrite -1}
		InPixels {Type I LastRead 0 FirstWrite -1}
		OutputWriteEn_1 {Type I LastRead 0 FirstWrite -1}
		LineBuf_val_V_5 {Type IO LastRead 1 FirstWrite 2}
		LineBuf_val_V_4 {Type IO LastRead 1 FirstWrite 2}
		LineBuf_val_V_3 {Type IO LastRead 1 FirstWrite 2}
		LineBuf_val_V_2 {Type IO LastRead 1 FirstWrite 2}
		LineBuf_val_V_1 {Type IO LastRead 1 FirstWrite 2}
		LineBuf_val_V {Type IO LastRead 1 FirstWrite 1}
		brmerge {Type I LastRead 0 FirstWrite -1}
		cmp159 {Type I LastRead 0 FirstWrite -1}
		cmp119 {Type I LastRead 0 FirstWrite -1}
		SrcYUV422 {Type I LastRead 1 FirstWrite -1}
		OutYUV {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "1932"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "1932"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	FiltCoeff_5 { ap_memory {  { FiltCoeff_5_address0 mem_address 1 6 }  { FiltCoeff_5_ce0 mem_ce 1 1 }  { FiltCoeff_5_q0 in_data 0 16 } } }
	idxprom11_i { ap_none {  { idxprom11_i in_data 0 6 } } }
	FiltCoeff_4 { ap_memory {  { FiltCoeff_4_address0 mem_address 1 6 }  { FiltCoeff_4_ce0 mem_ce 1 1 }  { FiltCoeff_4_q0 in_data 0 16 } } }
	FiltCoeff_3 { ap_memory {  { FiltCoeff_3_address0 mem_address 1 6 }  { FiltCoeff_3_ce0 mem_ce 1 1 }  { FiltCoeff_3_q0 in_data 0 16 } } }
	FiltCoeff_2 { ap_memory {  { FiltCoeff_2_address0 mem_address 1 6 }  { FiltCoeff_2_ce0 mem_ce 1 1 }  { FiltCoeff_2_q0 in_data 0 16 } } }
	FiltCoeff_1 { ap_memory {  { FiltCoeff_1_address0 mem_address 1 6 }  { FiltCoeff_1_ce0 mem_ce 1 1 }  { FiltCoeff_1_q0 in_data 0 16 } } }
	FiltCoeff { ap_memory {  { FiltCoeff_address0 mem_address 1 6 }  { FiltCoeff_ce0 mem_ce 1 1 }  { FiltCoeff_q0 in_data 0 16 } } }
	InPixels { ap_none {  { InPixels in_data 0 11 } } }
	OutputWriteEn_1 { ap_none {  { OutputWriteEn_1 in_data 0 1 } } }
	LineBuf_val_V_5 { ap_memory {  { LineBuf_val_V_5_address0 mem_address 1 11 }  { LineBuf_val_V_5_ce0 mem_ce 1 1 }  { LineBuf_val_V_5_we0 mem_we 1 1 }  { LineBuf_val_V_5_d0 mem_din 1 24 }  { LineBuf_val_V_5_address1 MemPortADDR2 1 11 }  { LineBuf_val_V_5_ce1 MemPortCE2 1 1 }  { LineBuf_val_V_5_q1 in_data 0 24 } } }
	LineBuf_val_V_4 { ap_memory {  { LineBuf_val_V_4_address0 mem_address 1 11 }  { LineBuf_val_V_4_ce0 mem_ce 1 1 }  { LineBuf_val_V_4_we0 mem_we 1 1 }  { LineBuf_val_V_4_d0 mem_din 1 24 }  { LineBuf_val_V_4_address1 MemPortADDR2 1 11 }  { LineBuf_val_V_4_ce1 MemPortCE2 1 1 }  { LineBuf_val_V_4_q1 in_data 0 24 } } }
	LineBuf_val_V_3 { ap_memory {  { LineBuf_val_V_3_address0 mem_address 1 11 }  { LineBuf_val_V_3_ce0 mem_ce 1 1 }  { LineBuf_val_V_3_we0 mem_we 1 1 }  { LineBuf_val_V_3_d0 mem_din 1 24 }  { LineBuf_val_V_3_address1 MemPortADDR2 1 11 }  { LineBuf_val_V_3_ce1 MemPortCE2 1 1 }  { LineBuf_val_V_3_q1 in_data 0 24 } } }
	LineBuf_val_V_2 { ap_memory {  { LineBuf_val_V_2_address0 mem_address 1 11 }  { LineBuf_val_V_2_ce0 mem_ce 1 1 }  { LineBuf_val_V_2_we0 mem_we 1 1 }  { LineBuf_val_V_2_d0 mem_din 1 24 }  { LineBuf_val_V_2_address1 MemPortADDR2 1 11 }  { LineBuf_val_V_2_ce1 MemPortCE2 1 1 }  { LineBuf_val_V_2_q1 in_data 0 24 } } }
	LineBuf_val_V_1 { ap_memory {  { LineBuf_val_V_1_address0 mem_address 1 11 }  { LineBuf_val_V_1_ce0 mem_ce 1 1 }  { LineBuf_val_V_1_we0 mem_we 1 1 }  { LineBuf_val_V_1_d0 mem_din 1 24 }  { LineBuf_val_V_1_address1 MemPortADDR2 1 11 }  { LineBuf_val_V_1_ce1 MemPortCE2 1 1 }  { LineBuf_val_V_1_q1 in_data 0 24 } } }
	LineBuf_val_V { ap_memory {  { LineBuf_val_V_address0 mem_address 1 11 }  { LineBuf_val_V_ce0 mem_ce 1 1 }  { LineBuf_val_V_we0 mem_we 1 1 }  { LineBuf_val_V_d0 mem_din 1 24 }  { LineBuf_val_V_q0 in_data 0 24 } } }
	brmerge { ap_none {  { brmerge in_data 0 1 } } }
	cmp159 { ap_none {  { cmp159 in_data 0 1 } } }
	cmp119 { ap_none {  { cmp119 in_data 0 1 } } }
	SrcYUV422 { ap_fifo {  { SrcYUV422_dout fifo_port_we 0 24 }  { SrcYUV422_num_data_valid fifo_status_num_data_valid 0 5 }  { SrcYUV422_fifo_cap fifo_update 0 5 }  { SrcYUV422_empty_n fifo_status 0 1 }  { SrcYUV422_read fifo_data 1 1 } } }
	OutYUV { ap_fifo {  { OutYUV_din fifo_port_we 1 24 }  { OutYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { OutYUV_fifo_cap fifo_update 0 5 }  { OutYUV_full_n fifo_status 0 1 }  { OutYUV_write fifo_data 1 1 } } }
}
