# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler bd_eab1_vsc_0_vscale_core_polyphase_FiltCoeff_RAM_1P_LUTRAM_1R1W BINDTYPE {storage} TYPE {ram_1p} IMPL {lutram} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler bd_eab1_vsc_0_vscale_core_polyphase_LineBuf_val_V_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler bd_eab1_vsc_0_vscale_core_polyphase_LineBuf_val_V_1_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name vfltCoeff \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename vfltCoeff \
    op interface \
    ports { vfltCoeff_address0 { O 9 vector } vfltCoeff_ce0 { O 1 bit } vfltCoeff_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'vfltCoeff'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name SrcYUV422 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SrcYUV422 \
    op interface \
    ports { SrcYUV422_dout { I 24 vector } SrcYUV422_num_data_valid { I 5 vector } SrcYUV422_fifo_cap { I 5 vector } SrcYUV422_empty_n { I 1 bit } SrcYUV422_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name HeightIn \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HeightIn \
    op interface \
    ports { HeightIn_dout { I 11 vector } HeightIn_num_data_valid { I 2 vector } HeightIn_fifo_cap { I 2 vector } HeightIn_empty_n { I 1 bit } HeightIn_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name Width \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Width \
    op interface \
    ports { Width_dout { I 11 vector } Width_num_data_valid { I 2 vector } Width_fifo_cap { I 2 vector } Width_empty_n { I 1 bit } Width_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name HeightOut \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_HeightOut \
    op interface \
    ports { HeightOut_dout { I 11 vector } HeightOut_num_data_valid { I 2 vector } HeightOut_fifo_cap { I 2 vector } HeightOut_empty_n { I 1 bit } HeightOut_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name LineRate \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_LineRate \
    op interface \
    ports { LineRate_dout { I 32 vector } LineRate_num_data_valid { I 2 vector } LineRate_fifo_cap { I 2 vector } LineRate_empty_n { I 1 bit } LineRate_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name OutYUV \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_OutYUV \
    op interface \
    ports { OutYUV_din { O 24 vector } OutYUV_num_data_valid { I 5 vector } OutYUV_fifo_cap { I 5 vector } OutYUV_full_n { I 1 bit } OutYUV_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name HwReg_Width_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_Width_c \
    op interface \
    ports { HwReg_Width_c_din { O 11 vector } HwReg_Width_c_num_data_valid { I 2 vector } HwReg_Width_c_fifo_cap { I 2 vector } HwReg_Width_c_full_n { I 1 bit } HwReg_Width_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name HwReg_HeightOut_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_HeightOut_c \
    op interface \
    ports { HwReg_HeightOut_c_din { O 11 vector } HwReg_HeightOut_c_num_data_valid { I 2 vector } HwReg_HeightOut_c_fifo_cap { I 2 vector } HwReg_HeightOut_c_full_n { I 1 bit } HwReg_HeightOut_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


