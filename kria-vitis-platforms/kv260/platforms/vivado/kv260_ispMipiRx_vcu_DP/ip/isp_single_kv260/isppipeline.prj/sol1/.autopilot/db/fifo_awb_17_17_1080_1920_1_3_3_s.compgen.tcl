# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ISPPipeline_accel_fifo_w30_d3_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {impop_data_U}
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
    id 342 \
    name hist0_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename hist0_0 \
    op interface \
    ports { hist0_0_address0 { O 10 vector } hist0_0_ce0 { O 1 bit } hist0_0_d0 { O 32 vector } hist0_0_q0 { I 32 vector } hist0_0_we0 { O 1 bit } hist0_0_address1 { O 10 vector } hist0_0_ce1 { O 1 bit } hist0_0_d1 { O 32 vector } hist0_0_q1 { I 32 vector } hist0_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hist0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 343 \
    name hist0_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename hist0_1 \
    op interface \
    ports { hist0_1_address0 { O 10 vector } hist0_1_ce0 { O 1 bit } hist0_1_d0 { O 32 vector } hist0_1_q0 { I 32 vector } hist0_1_we0 { O 1 bit } hist0_1_address1 { O 10 vector } hist0_1_ce1 { O 1 bit } hist0_1_d1 { O 32 vector } hist0_1_q1 { I 32 vector } hist0_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hist0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 344 \
    name hist0_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename hist0_2 \
    op interface \
    ports { hist0_2_address0 { O 10 vector } hist0_2_ce0 { O 1 bit } hist0_2_d0 { O 32 vector } hist0_2_q0 { I 32 vector } hist0_2_we0 { O 1 bit } hist0_2_address1 { O 10 vector } hist0_2_ce1 { O 1 bit } hist0_2_d1 { O 32 vector } hist0_2_q1 { I 32 vector } hist0_2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hist0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 345 \
    name hist1_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename hist1_0 \
    op interface \
    ports { hist1_0_address0 { O 10 vector } hist1_0_ce0 { O 1 bit } hist1_0_d0 { O 32 vector } hist1_0_q0 { I 32 vector } hist1_0_we0 { O 1 bit } hist1_0_address1 { O 10 vector } hist1_0_ce1 { O 1 bit } hist1_0_d1 { O 32 vector } hist1_0_q1 { I 32 vector } hist1_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hist1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 346 \
    name hist1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename hist1_1 \
    op interface \
    ports { hist1_1_address0 { O 10 vector } hist1_1_ce0 { O 1 bit } hist1_1_d0 { O 32 vector } hist1_1_q0 { I 32 vector } hist1_1_we0 { O 1 bit } hist1_1_address1 { O 10 vector } hist1_1_ce1 { O 1 bit } hist1_1_d1 { O 32 vector } hist1_1_q1 { I 32 vector } hist1_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hist1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 347 \
    name hist1_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename hist1_2 \
    op interface \
    ports { hist1_2_address0 { O 10 vector } hist1_2_ce0 { O 1 bit } hist1_2_d0 { O 32 vector } hist1_2_q0 { I 32 vector } hist1_2_we0 { O 1 bit } hist1_2_address1 { O 10 vector } hist1_2_ce1 { O 1 bit } hist1_2_d1 { O 32 vector } hist1_2_q1 { I 32 vector } hist1_2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hist1_2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 16 vector } p_read_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 16 vector } p_read1_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name demosaic_out_data216 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_demosaic_out_data216 \
    op interface \
    ports { demosaic_out_data216_dout { I 30 vector } demosaic_out_data216_empty_n { I 1 bit } demosaic_out_data216_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 16 vector } p_read2_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 16 vector } p_read3_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name ltm_in_data217 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ltm_in_data217 \
    op interface \
    ports { ltm_in_data217_din { O 30 vector } ltm_in_data217_full_n { I 1 bit } ltm_in_data217_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name thresh \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_thresh \
    op interface \
    ports { thresh { I 32 vector } thresh_ap_vld { I 1 bit } } \
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


