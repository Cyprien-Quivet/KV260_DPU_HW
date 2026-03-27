# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler bd_eab1_hsc_0_v_vcresampler_core_linebuf_y_val_V_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler bd_eab1_hsc_0_v_vcresampler_core_linebuf_c_val_V_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name stream_out_422 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_out_422 \
    op interface \
    ports { stream_out_422_dout { I 24 vector } stream_out_422_num_data_valid { I 5 vector } stream_out_422_fifo_cap { I 5 vector } stream_out_422_empty_n { I 1 bit } stream_out_422_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name Height \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Height \
    op interface \
    ports { Height_dout { I 16 vector } Height_num_data_valid { I 2 vector } Height_fifo_cap { I 2 vector } Height_empty_n { I 1 bit } Height_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name WidthOut \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_WidthOut \
    op interface \
    ports { WidthOut_dout { I 16 vector } WidthOut_num_data_valid { I 2 vector } WidthOut_fifo_cap { I 2 vector } WidthOut_empty_n { I 1 bit } WidthOut_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name stream_out_420 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_out_420 \
    op interface \
    ports { stream_out_420_din { O 24 vector } stream_out_420_num_data_valid { I 5 vector } stream_out_420_fifo_cap { I 5 vector } stream_out_420_full_n { I 1 bit } stream_out_420_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name Height_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Height_c \
    op interface \
    ports { Height_c_din { O 16 vector } Height_c_num_data_valid { I 2 vector } Height_c_fifo_cap { I 2 vector } Height_c_full_n { I 1 bit } Height_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name WidthOut_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_WidthOut_c \
    op interface \
    ports { WidthOut_c_din { O 16 vector } WidthOut_c_num_data_valid { I 2 vector } WidthOut_c_fifo_cap { I 2 vector } WidthOut_c_full_n { I 1 bit } WidthOut_c_write { O 1 bit } } \
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


