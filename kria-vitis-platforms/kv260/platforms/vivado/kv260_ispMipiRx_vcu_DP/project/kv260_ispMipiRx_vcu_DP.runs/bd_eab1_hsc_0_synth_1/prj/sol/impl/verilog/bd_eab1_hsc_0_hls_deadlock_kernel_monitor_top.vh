
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [3:0] axis_block_sigs;
wire [14:0] inst_idle_sigs;
wire [7:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[1] = ~AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[2] = ~AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_230.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[3] = ~MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_154.m_axis_video_TDATA_blk_n;

assign inst_idle_sigs[0] = Block_entry1_proc_U0.ap_idle;
assign inst_block_sigs[0] = (Block_entry1_proc_U0.ap_done & ~Block_entry1_proc_U0.ap_continue) | ~Block_entry1_proc_U0.ColorMode_c_blk_n | ~Block_entry1_proc_U0.ColorModeOut_c_blk_n;
assign inst_idle_sigs[1] = AXIvideo2MultiPixStream_U0.ap_idle;
assign inst_block_sigs[1] = (AXIvideo2MultiPixStream_U0.ap_done & ~AXIvideo2MultiPixStream_U0.ap_continue) | ~AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200.stream_in_blk_n | ~AXIvideo2MultiPixStream_U0.Height_c20_blk_n | ~AXIvideo2MultiPixStream_U0.WidthIn_c_blk_n;
assign inst_idle_sigs[2] = v_hcresampler_core_U0.ap_idle;
assign inst_block_sigs[2] = (v_hcresampler_core_U0.ap_done & ~v_hcresampler_core_U0.ap_continue) | ~v_hcresampler_core_U0.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_162.stream_in_blk_n | ~v_hcresampler_core_U0.Height_blk_n | ~v_hcresampler_core_U0.WidthIn_blk_n | ~v_hcresampler_core_U0.grp_v_hcresampler_core_Pipeline_VITIS_LOOP_1636_2_fu_162.stream_upsampled_blk_n;
assign inst_idle_sigs[3] = hscale_core_polyphase_U0.ap_idle;
assign inst_block_sigs[3] = (hscale_core_polyphase_U0.ap_done & ~hscale_core_polyphase_U0.ap_continue) | ~hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.stream_upsampled_blk_n | ~hscale_core_polyphase_U0.grp_hscale_core_polyphase_Pipeline_loop_width_fu_264.stream_scaled_blk_n | ~hscale_core_polyphase_U0.Height_c19_blk_n | ~hscale_core_polyphase_U0.WidthOut_c23_blk_n;
assign inst_idle_sigs[4] = v_csc_core_U0.ap_idle;
assign inst_block_sigs[4] = (v_csc_core_U0.ap_done & ~v_csc_core_U0.ap_continue) | ~v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_2035_2_fu_114.stream_scaled_blk_n | ~v_csc_core_U0.Height_blk_n | ~v_csc_core_U0.WidthOut_blk_n | ~v_csc_core_U0.ColorMode_blk_n | ~v_csc_core_U0.grp_v_csc_core_Pipeline_VITIS_LOOP_2035_2_fu_114.stream_scaled_csc_blk_n | ~v_csc_core_U0.Height_c18_blk_n | ~v_csc_core_U0.WidthOut_c22_blk_n;
assign inst_idle_sigs[5] = v_hcresampler_core_1_U0.ap_idle;
assign inst_block_sigs[5] = (v_hcresampler_core_1_U0.ap_done & ~v_hcresampler_core_1_U0.ap_continue) | ~v_hcresampler_core_1_U0.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_198.stream_scaled_csc_blk_n | ~v_hcresampler_core_1_U0.Height_blk_n | ~v_hcresampler_core_1_U0.WidthOut_blk_n | ~v_hcresampler_core_1_U0.grp_v_hcresampler_core_1_Pipeline_VITIS_LOOP_1636_2_fu_198.stream_out_422_blk_n | ~v_hcresampler_core_1_U0.Height_c17_blk_n | ~v_hcresampler_core_1_U0.WidthOut_c21_blk_n;
assign inst_idle_sigs[6] = v_vcresampler_core_U0.ap_idle;
assign inst_block_sigs[6] = (v_vcresampler_core_U0.ap_done & ~v_vcresampler_core_U0.ap_continue) | ~v_vcresampler_core_U0.grp_v_vcresampler_core_Pipeline_VITIS_LOOP_1853_2_fu_142.stream_out_422_blk_n | ~v_vcresampler_core_U0.Height_blk_n | ~v_vcresampler_core_U0.WidthOut_blk_n | ~v_vcresampler_core_U0.grp_v_vcresampler_core_Pipeline_VITIS_LOOP_1853_2_fu_142.stream_out_420_blk_n | ~v_vcresampler_core_U0.Height_c_blk_n | ~v_vcresampler_core_U0.WidthOut_c_blk_n;
assign inst_idle_sigs[7] = MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_block_sigs[7] = (MultiPixStream2AXIvideo_U0.ap_done & ~MultiPixStream2AXIvideo_U0.ap_continue) | ~MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_154.stream_out_420_blk_n | ~MultiPixStream2AXIvideo_U0.Height_blk_n | ~MultiPixStream2AXIvideo_U0.WidthOut_blk_n | ~MultiPixStream2AXIvideo_U0.ColorModeOut_blk_n;

assign inst_idle_sigs[8] = 1'b0;
assign inst_idle_sigs[9] = AXIvideo2MultiPixStream_U0.ap_idle;
assign inst_idle_sigs[10] = AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180.ap_idle;
assign inst_idle_sigs[11] = AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200.ap_idle;
assign inst_idle_sigs[12] = AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_230.ap_idle;
assign inst_idle_sigs[13] = MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_idle_sigs[14] = MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_1544_3_fu_154.ap_idle;

bd_eab1_hsc_0_hls_deadlock_idx0_monitor bd_eab1_hsc_0_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
