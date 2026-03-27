# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler bd_eab1_vsc_0_v_vcresampler_core_linebuf_y_val_V_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler bd_eab1_vsc_0_v_vcresampler_core_linebuf_y_val_V_1_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler bd_eab1_vsc_0_v_vcresampler_core_linebuf_c_val_V_2_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 96 \
    name SrcYUV \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SrcYUV \
    op interface \
    ports { SrcYUV_dout { I 24 vector } SrcYUV_num_data_valid { I 5 vector } SrcYUV_fifo_cap { I 5 vector } SrcYUV_empty_n { I 1 bit } SrcYUV_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name height \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_height \
    op interface \
    ports { height_dout { I 11 vector } height_num_data_valid { I 2 vector } height_fifo_cap { I 2 vector } height_empty_n { I 1 bit } height_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name width \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_width \
    op interface \
    ports { width_dout { I 11 vector } width_num_data_valid { I 2 vector } width_fifo_cap { I 2 vector } width_empty_n { I 1 bit } width_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name inColorMode \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inColorMode \
    op interface \
    ports { inColorMode_dout { I 8 vector } inColorMode_num_data_valid { I 2 vector } inColorMode_fifo_cap { I 2 vector } inColorMode_empty_n { I 1 bit } inColorMode_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name outColorMode \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outColorMode \
    op interface \
    ports { outColorMode_dout { I 8 vector } outColorMode_num_data_valid { I 2 vector } outColorMode_fifo_cap { I 2 vector } outColorMode_empty_n { I 1 bit } outColorMode_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name SrcYUV422 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SrcYUV422 \
    op interface \
    ports { SrcYUV422_din { O 24 vector } SrcYUV422_num_data_valid { I 5 vector } SrcYUV422_fifo_cap { I 5 vector } SrcYUV422_full_n { I 1 bit } SrcYUV422_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name HwReg_HeightIn_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_HeightIn_c \
    op interface \
    ports { HwReg_HeightIn_c_din { O 11 vector } HwReg_HeightIn_c_num_data_valid { I 2 vector } HwReg_HeightIn_c_fifo_cap { I 2 vector } HwReg_HeightIn_c_full_n { I 1 bit } HwReg_HeightIn_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name HwReg_Width_c16 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_HwReg_Width_c16 \
    op interface \
    ports { HwReg_Width_c16_din { O 11 vector } HwReg_Width_c16_num_data_valid { I 2 vector } HwReg_Width_c16_fifo_cap { I 2 vector } HwReg_Width_c16_full_n { I 1 bit } HwReg_Width_c16_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name ColorMode_vcr_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ColorMode_vcr_c \
    op interface \
    ports { ColorMode_vcr_c_din { O 8 vector } ColorMode_vcr_c_num_data_valid { I 3 vector } ColorMode_vcr_c_fifo_cap { I 3 vector } ColorMode_vcr_c_full_n { I 1 bit } ColorMode_vcr_c_write { O 1 bit } } \
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


