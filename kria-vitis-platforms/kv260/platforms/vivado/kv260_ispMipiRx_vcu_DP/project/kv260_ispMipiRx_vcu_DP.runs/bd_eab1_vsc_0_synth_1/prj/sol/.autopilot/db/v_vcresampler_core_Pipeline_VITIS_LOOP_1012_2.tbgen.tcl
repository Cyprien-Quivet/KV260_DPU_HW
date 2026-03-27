set moduleName v_vcresampler_core_Pipeline_VITIS_LOOP_1012_2
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
set C_modelName {v_vcresampler_core_Pipeline_VITIS_LOOP_1012_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ loopWidth int 11 regular  }
	{ sel_tmp1 int 1 regular  }
	{ sel_tmp4 int 1 regular  }
	{ sel_tmp6 int 1 regular  }
	{ cmp287 int 1 regular  }
	{ cmp391 int 1 regular  }
	{ cmp104 int 1 regular  }
	{ cmp36 int 1 regular  }
	{ linebuf_y_val_V int 8 regular {array 1920 { 0 1 } 1 1 }  }
	{ linebuf_y_val_V_1 int 8 regular {array 1920 { 2 3 } 1 1 }  }
	{ linebuf_c_val_V int 8 regular {array 1920 { 0 1 } 1 1 }  }
	{ linebuf_c_val_V_1 int 8 regular {array 1920 { 0 1 } 1 1 }  }
	{ spec_select int 1 regular  }
	{ SrcYUV int 24 regular {fifo 0 volatile }  }
	{ linebuf_c_val_V_2 int 8 regular {array 1920 { 1 3 } 1 1 }  }
	{ SrcYUV422 int 24 regular {fifo 1 volatile }  }
	{ icmp_ln995 int 1 regular  }
	{ p_0_1_0_0_0878_out int 8 regular {pointer 2}  }
	{ p_0_0_0_0_0423876_out int 8 regular {pointer 2}  }
	{ p_0_2_0_0_0874_out int 8 regular {pointer 2}  }
	{ p_0_1_0_0_0872_out int 8 regular {pointer 2}  }
	{ p_0_0_0_0_0423870_out int 8 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "loopWidth", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "sel_tmp1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sel_tmp4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sel_tmp6", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp287", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp391", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp104", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp36", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "linebuf_y_val_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "linebuf_y_val_V_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "linebuf_c_val_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "linebuf_c_val_V_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "spec_select", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SrcYUV", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "linebuf_c_val_V_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "SrcYUV422", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "icmp_ln995", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_1_0_0_0878_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0423876_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_2_0_0_0874_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_1_0_0_0872_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "p_0_0_0_0_0423870_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ SrcYUV_dout sc_in sc_lv 24 signal 13 } 
	{ SrcYUV_num_data_valid sc_in sc_lv 5 signal 13 } 
	{ SrcYUV_fifo_cap sc_in sc_lv 5 signal 13 } 
	{ SrcYUV_empty_n sc_in sc_logic 1 signal 13 } 
	{ SrcYUV_read sc_out sc_logic 1 signal 13 } 
	{ SrcYUV422_din sc_out sc_lv 24 signal 15 } 
	{ SrcYUV422_num_data_valid sc_in sc_lv 5 signal 15 } 
	{ SrcYUV422_fifo_cap sc_in sc_lv 5 signal 15 } 
	{ SrcYUV422_full_n sc_in sc_logic 1 signal 15 } 
	{ SrcYUV422_write sc_out sc_logic 1 signal 15 } 
	{ loopWidth sc_in sc_lv 11 signal 0 } 
	{ sel_tmp1 sc_in sc_lv 1 signal 1 } 
	{ sel_tmp4 sc_in sc_lv 1 signal 2 } 
	{ sel_tmp6 sc_in sc_lv 1 signal 3 } 
	{ cmp287 sc_in sc_lv 1 signal 4 } 
	{ cmp391 sc_in sc_lv 1 signal 5 } 
	{ cmp104 sc_in sc_lv 1 signal 6 } 
	{ cmp36 sc_in sc_lv 1 signal 7 } 
	{ linebuf_y_val_V_address0 sc_out sc_lv 11 signal 8 } 
	{ linebuf_y_val_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ linebuf_y_val_V_we0 sc_out sc_logic 1 signal 8 } 
	{ linebuf_y_val_V_d0 sc_out sc_lv 8 signal 8 } 
	{ linebuf_y_val_V_address1 sc_out sc_lv 11 signal 8 } 
	{ linebuf_y_val_V_ce1 sc_out sc_logic 1 signal 8 } 
	{ linebuf_y_val_V_q1 sc_in sc_lv 8 signal 8 } 
	{ linebuf_y_val_V_1_address0 sc_out sc_lv 11 signal 9 } 
	{ linebuf_y_val_V_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ linebuf_y_val_V_1_we0 sc_out sc_logic 1 signal 9 } 
	{ linebuf_y_val_V_1_d0 sc_out sc_lv 8 signal 9 } 
	{ linebuf_y_val_V_1_q0 sc_in sc_lv 8 signal 9 } 
	{ linebuf_c_val_V_address0 sc_out sc_lv 11 signal 10 } 
	{ linebuf_c_val_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ linebuf_c_val_V_we0 sc_out sc_logic 1 signal 10 } 
	{ linebuf_c_val_V_d0 sc_out sc_lv 8 signal 10 } 
	{ linebuf_c_val_V_address1 sc_out sc_lv 11 signal 10 } 
	{ linebuf_c_val_V_ce1 sc_out sc_logic 1 signal 10 } 
	{ linebuf_c_val_V_q1 sc_in sc_lv 8 signal 10 } 
	{ linebuf_c_val_V_1_address0 sc_out sc_lv 11 signal 11 } 
	{ linebuf_c_val_V_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ linebuf_c_val_V_1_we0 sc_out sc_logic 1 signal 11 } 
	{ linebuf_c_val_V_1_d0 sc_out sc_lv 8 signal 11 } 
	{ linebuf_c_val_V_1_address1 sc_out sc_lv 11 signal 11 } 
	{ linebuf_c_val_V_1_ce1 sc_out sc_logic 1 signal 11 } 
	{ linebuf_c_val_V_1_q1 sc_in sc_lv 8 signal 11 } 
	{ spec_select sc_in sc_lv 1 signal 12 } 
	{ linebuf_c_val_V_2_address0 sc_out sc_lv 11 signal 14 } 
	{ linebuf_c_val_V_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ linebuf_c_val_V_2_q0 sc_in sc_lv 8 signal 14 } 
	{ icmp_ln995 sc_in sc_lv 1 signal 16 } 
	{ p_0_1_0_0_0878_out_i sc_in sc_lv 8 signal 17 } 
	{ p_0_1_0_0_0878_out_o sc_out sc_lv 8 signal 17 } 
	{ p_0_1_0_0_0878_out_o_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ p_0_0_0_0_0423876_out_i sc_in sc_lv 8 signal 18 } 
	{ p_0_0_0_0_0423876_out_o sc_out sc_lv 8 signal 18 } 
	{ p_0_0_0_0_0423876_out_o_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ p_0_2_0_0_0874_out_i sc_in sc_lv 8 signal 19 } 
	{ p_0_2_0_0_0874_out_o sc_out sc_lv 8 signal 19 } 
	{ p_0_2_0_0_0874_out_o_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ p_0_1_0_0_0872_out_i sc_in sc_lv 8 signal 20 } 
	{ p_0_1_0_0_0872_out_o sc_out sc_lv 8 signal 20 } 
	{ p_0_1_0_0_0872_out_o_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ p_0_0_0_0_0423870_out_i sc_in sc_lv 8 signal 21 } 
	{ p_0_0_0_0_0423870_out_o sc_out sc_lv 8 signal 21 } 
	{ p_0_0_0_0_0423870_out_o_ap_vld sc_out sc_logic 1 outvld 21 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "SrcYUV_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "SrcYUV", "role": "dout" }} , 
 	{ "name": "SrcYUV_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SrcYUV", "role": "num_data_valid" }} , 
 	{ "name": "SrcYUV_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SrcYUV", "role": "fifo_cap" }} , 
 	{ "name": "SrcYUV_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SrcYUV", "role": "empty_n" }} , 
 	{ "name": "SrcYUV_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SrcYUV", "role": "read" }} , 
 	{ "name": "SrcYUV422_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "din" }} , 
 	{ "name": "SrcYUV422_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "num_data_valid" }} , 
 	{ "name": "SrcYUV422_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "fifo_cap" }} , 
 	{ "name": "SrcYUV422_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "full_n" }} , 
 	{ "name": "SrcYUV422_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SrcYUV422", "role": "write" }} , 
 	{ "name": "loopWidth", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "loopWidth", "role": "default" }} , 
 	{ "name": "sel_tmp1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sel_tmp1", "role": "default" }} , 
 	{ "name": "sel_tmp4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sel_tmp4", "role": "default" }} , 
 	{ "name": "sel_tmp6", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sel_tmp6", "role": "default" }} , 
 	{ "name": "cmp287", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp287", "role": "default" }} , 
 	{ "name": "cmp391", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp391", "role": "default" }} , 
 	{ "name": "cmp104", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp104", "role": "default" }} , 
 	{ "name": "cmp36", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp36", "role": "default" }} , 
 	{ "name": "linebuf_y_val_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_y_val_V", "role": "address0" }} , 
 	{ "name": "linebuf_y_val_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_y_val_V", "role": "ce0" }} , 
 	{ "name": "linebuf_y_val_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_y_val_V", "role": "we0" }} , 
 	{ "name": "linebuf_y_val_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_y_val_V", "role": "d0" }} , 
 	{ "name": "linebuf_y_val_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_y_val_V", "role": "address1" }} , 
 	{ "name": "linebuf_y_val_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_y_val_V", "role": "ce1" }} , 
 	{ "name": "linebuf_y_val_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_y_val_V", "role": "q1" }} , 
 	{ "name": "linebuf_y_val_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_y_val_V_1", "role": "address0" }} , 
 	{ "name": "linebuf_y_val_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_y_val_V_1", "role": "ce0" }} , 
 	{ "name": "linebuf_y_val_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_y_val_V_1", "role": "we0" }} , 
 	{ "name": "linebuf_y_val_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_y_val_V_1", "role": "d0" }} , 
 	{ "name": "linebuf_y_val_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_y_val_V_1", "role": "q0" }} , 
 	{ "name": "linebuf_c_val_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c_val_V", "role": "address0" }} , 
 	{ "name": "linebuf_c_val_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_val_V", "role": "ce0" }} , 
 	{ "name": "linebuf_c_val_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_val_V", "role": "we0" }} , 
 	{ "name": "linebuf_c_val_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_c_val_V", "role": "d0" }} , 
 	{ "name": "linebuf_c_val_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c_val_V", "role": "address1" }} , 
 	{ "name": "linebuf_c_val_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_val_V", "role": "ce1" }} , 
 	{ "name": "linebuf_c_val_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_c_val_V", "role": "q1" }} , 
 	{ "name": "linebuf_c_val_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c_val_V_1", "role": "address0" }} , 
 	{ "name": "linebuf_c_val_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_val_V_1", "role": "ce0" }} , 
 	{ "name": "linebuf_c_val_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_val_V_1", "role": "we0" }} , 
 	{ "name": "linebuf_c_val_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_c_val_V_1", "role": "d0" }} , 
 	{ "name": "linebuf_c_val_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c_val_V_1", "role": "address1" }} , 
 	{ "name": "linebuf_c_val_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_val_V_1", "role": "ce1" }} , 
 	{ "name": "linebuf_c_val_V_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_c_val_V_1", "role": "q1" }} , 
 	{ "name": "spec_select", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "spec_select", "role": "default" }} , 
 	{ "name": "linebuf_c_val_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "linebuf_c_val_V_2", "role": "address0" }} , 
 	{ "name": "linebuf_c_val_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_c_val_V_2", "role": "ce0" }} , 
 	{ "name": "linebuf_c_val_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "linebuf_c_val_V_2", "role": "q0" }} , 
 	{ "name": "icmp_ln995", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln995", "role": "default" }} , 
 	{ "name": "p_0_1_0_0_0878_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_0878_out", "role": "i" }} , 
 	{ "name": "p_0_1_0_0_0878_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_0878_out", "role": "o" }} , 
 	{ "name": "p_0_1_0_0_0878_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_0878_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0423876_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0423876_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0423876_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0423876_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0423876_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0423876_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_2_0_0_0874_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_2_0_0_0874_out", "role": "i" }} , 
 	{ "name": "p_0_2_0_0_0874_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_2_0_0_0874_out", "role": "o" }} , 
 	{ "name": "p_0_2_0_0_0874_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_2_0_0_0874_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_1_0_0_0872_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_0872_out", "role": "i" }} , 
 	{ "name": "p_0_1_0_0_0872_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_1_0_0_0872_out", "role": "o" }} , 
 	{ "name": "p_0_1_0_0_0872_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_1_0_0_0872_out", "role": "o_ap_vld" }} , 
 	{ "name": "p_0_0_0_0_0423870_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0423870_out", "role": "i" }} , 
 	{ "name": "p_0_0_0_0_0423870_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_0_0_0423870_out", "role": "o" }} , 
 	{ "name": "p_0_0_0_0_0423870_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_0_0_0423870_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "3", "Max" : "32771"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "32771"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	loopWidth { ap_none {  { loopWidth in_data 0 11 } } }
	sel_tmp1 { ap_none {  { sel_tmp1 in_data 0 1 } } }
	sel_tmp4 { ap_none {  { sel_tmp4 in_data 0 1 } } }
	sel_tmp6 { ap_none {  { sel_tmp6 in_data 0 1 } } }
	cmp287 { ap_none {  { cmp287 in_data 0 1 } } }
	cmp391 { ap_none {  { cmp391 in_data 0 1 } } }
	cmp104 { ap_none {  { cmp104 in_data 0 1 } } }
	cmp36 { ap_none {  { cmp36 in_data 0 1 } } }
	linebuf_y_val_V { ap_memory {  { linebuf_y_val_V_address0 mem_address 1 11 }  { linebuf_y_val_V_ce0 mem_ce 1 1 }  { linebuf_y_val_V_we0 mem_we 1 1 }  { linebuf_y_val_V_d0 mem_din 1 8 }  { linebuf_y_val_V_address1 MemPortADDR2 1 11 }  { linebuf_y_val_V_ce1 MemPortCE2 1 1 }  { linebuf_y_val_V_q1 in_data 0 8 } } }
	linebuf_y_val_V_1 { ap_memory {  { linebuf_y_val_V_1_address0 mem_address 1 11 }  { linebuf_y_val_V_1_ce0 mem_ce 1 1 }  { linebuf_y_val_V_1_we0 mem_we 1 1 }  { linebuf_y_val_V_1_d0 mem_din 1 8 }  { linebuf_y_val_V_1_q0 in_data 0 8 } } }
	linebuf_c_val_V { ap_memory {  { linebuf_c_val_V_address0 mem_address 1 11 }  { linebuf_c_val_V_ce0 mem_ce 1 1 }  { linebuf_c_val_V_we0 mem_we 1 1 }  { linebuf_c_val_V_d0 mem_din 1 8 }  { linebuf_c_val_V_address1 MemPortADDR2 1 11 }  { linebuf_c_val_V_ce1 MemPortCE2 1 1 }  { linebuf_c_val_V_q1 in_data 0 8 } } }
	linebuf_c_val_V_1 { ap_memory {  { linebuf_c_val_V_1_address0 mem_address 1 11 }  { linebuf_c_val_V_1_ce0 mem_ce 1 1 }  { linebuf_c_val_V_1_we0 mem_we 1 1 }  { linebuf_c_val_V_1_d0 mem_din 1 8 }  { linebuf_c_val_V_1_address1 MemPortADDR2 1 11 }  { linebuf_c_val_V_1_ce1 MemPortCE2 1 1 }  { linebuf_c_val_V_1_q1 in_data 0 8 } } }
	spec_select { ap_none {  { spec_select in_data 0 1 } } }
	SrcYUV { ap_fifo {  { SrcYUV_dout fifo_port_we 0 24 }  { SrcYUV_num_data_valid fifo_status_num_data_valid 0 5 }  { SrcYUV_fifo_cap fifo_update 0 5 }  { SrcYUV_empty_n fifo_status 0 1 }  { SrcYUV_read fifo_data 1 1 } } }
	linebuf_c_val_V_2 { ap_memory {  { linebuf_c_val_V_2_address0 mem_address 1 11 }  { linebuf_c_val_V_2_ce0 mem_ce 1 1 }  { linebuf_c_val_V_2_q0 in_data 0 8 } } }
	SrcYUV422 { ap_fifo {  { SrcYUV422_din fifo_port_we 1 24 }  { SrcYUV422_num_data_valid fifo_status_num_data_valid 0 5 }  { SrcYUV422_fifo_cap fifo_update 0 5 }  { SrcYUV422_full_n fifo_status 0 1 }  { SrcYUV422_write fifo_data 1 1 } } }
	icmp_ln995 { ap_none {  { icmp_ln995 in_data 0 1 } } }
	p_0_1_0_0_0878_out { ap_ovld {  { p_0_1_0_0_0878_out_i in_data 0 8 }  { p_0_1_0_0_0878_out_o out_data 1 8 }  { p_0_1_0_0_0878_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0423876_out { ap_ovld {  { p_0_0_0_0_0423876_out_i in_data 0 8 }  { p_0_0_0_0_0423876_out_o out_data 1 8 }  { p_0_0_0_0_0423876_out_o_ap_vld out_vld 1 1 } } }
	p_0_2_0_0_0874_out { ap_ovld {  { p_0_2_0_0_0874_out_i in_data 0 8 }  { p_0_2_0_0_0874_out_o out_data 1 8 }  { p_0_2_0_0_0874_out_o_ap_vld out_vld 1 1 } } }
	p_0_1_0_0_0872_out { ap_ovld {  { p_0_1_0_0_0872_out_i in_data 0 8 }  { p_0_1_0_0_0872_out_o out_data 1 8 }  { p_0_1_0_0_0872_out_o_ap_vld out_vld 1 1 } } }
	p_0_0_0_0_0423870_out { ap_ovld {  { p_0_0_0_0_0423870_out_i in_data 0 8 }  { p_0_0_0_0_0423870_out_o out_data 1 8 }  { p_0_0_0_0_0423870_out_o_ap_vld out_vld 1 1 } } }
}
