# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler bd_eab1_hsc_0_hscale_core_polyphase_FiltCoeff_RAM_1P_LUTRAM_1R1W BINDTYPE {storage} TYPE {ram_1p} IMPL {lutram} LATENCY 2 ALLOW_PRAGMA 1
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
    id 216 \
    name hfltCoeff \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename hfltCoeff \
    op interface \
    ports { hfltCoeff_address0 { O 9 vector } hfltCoeff_ce0 { O 1 bit } hfltCoeff_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hfltCoeff'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 217 \
    name phasesH \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phasesH \
    op interface \
    ports { phasesH_address0 { O 11 vector } phasesH_ce0 { O 1 bit } phasesH_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phasesH'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name stream_upsampled \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_upsampled \
    op interface \
    ports { stream_upsampled_dout { I 24 vector } stream_upsampled_num_data_valid { I 5 vector } stream_upsampled_fifo_cap { I 5 vector } stream_upsampled_empty_n { I 1 bit } stream_upsampled_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name Height \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Height \
    op interface \
    ports { Height { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name WidthIn \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_WidthIn \
    op interface \
    ports { WidthIn { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name WidthOut \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_WidthOut \
    op interface \
    ports { WidthOut { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name stream_scaled \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_scaled \
    op interface \
    ports { stream_scaled_din { O 24 vector } stream_scaled_num_data_valid { I 5 vector } stream_scaled_fifo_cap { I 5 vector } stream_scaled_full_n { I 1 bit } stream_scaled_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name Height_c19 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Height_c19 \
    op interface \
    ports { Height_c19_din { O 16 vector } Height_c19_num_data_valid { I 2 vector } Height_c19_fifo_cap { I 2 vector } Height_c19_full_n { I 1 bit } Height_c19_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name WidthOut_c23 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_WidthOut_c23 \
    op interface \
    ports { WidthOut_c23_din { O 16 vector } WidthOut_c23_num_data_valid { I 2 vector } WidthOut_c23_fifo_cap { I 2 vector } WidthOut_c23_full_n { I 1 bit } WidthOut_c23_write { O 1 bit } } \
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


