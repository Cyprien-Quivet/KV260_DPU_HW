# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name stream_scaled \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_scaled \
    op interface \
    ports { stream_scaled_dout { I 24 vector } stream_scaled_num_data_valid { I 5 vector } stream_scaled_fifo_cap { I 5 vector } stream_scaled_empty_n { I 1 bit } stream_scaled_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
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
    id 244 \
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
    id 245 \
    name ColorMode \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ColorMode \
    op interface \
    ports { ColorMode_dout { I 8 vector } ColorMode_num_data_valid { I 3 vector } ColorMode_fifo_cap { I 3 vector } ColorMode_empty_n { I 1 bit } ColorMode_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
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
    id 247 \
    name stream_scaled_csc \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_scaled_csc \
    op interface \
    ports { stream_scaled_csc_din { O 24 vector } stream_scaled_csc_num_data_valid { I 5 vector } stream_scaled_csc_fifo_cap { I 5 vector } stream_scaled_csc_full_n { I 1 bit } stream_scaled_csc_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name Height_c18 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Height_c18 \
    op interface \
    ports { Height_c18_din { O 16 vector } Height_c18_num_data_valid { I 2 vector } Height_c18_fifo_cap { I 2 vector } Height_c18_full_n { I 1 bit } Height_c18_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name WidthOut_c22 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_WidthOut_c22 \
    op interface \
    ports { WidthOut_c22_din { O 16 vector } WidthOut_c22_num_data_valid { I 2 vector } WidthOut_c22_fifo_cap { I 2 vector } WidthOut_c22_full_n { I 1 bit } WidthOut_c22_write { O 1 bit } } \
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


