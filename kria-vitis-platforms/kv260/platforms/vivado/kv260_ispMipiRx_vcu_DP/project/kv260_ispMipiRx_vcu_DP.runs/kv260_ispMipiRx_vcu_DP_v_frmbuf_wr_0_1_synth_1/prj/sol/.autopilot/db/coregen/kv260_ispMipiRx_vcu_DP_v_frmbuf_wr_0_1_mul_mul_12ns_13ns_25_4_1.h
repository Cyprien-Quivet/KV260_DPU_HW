// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __kv260_ispMipiRx_vcu_DP_v_frmbuf_wr_0_1_mul_mul_12ns_13ns_25_4_1__HH__
#define __kv260_ispMipiRx_vcu_DP_v_frmbuf_wr_0_1_mul_mul_12ns_13ns_25_4_1__HH__
#include "kv260_ispMipiRx_vcu_DP_v_frmbuf_wr_0_1_mul_mul_12ns_13ns_25_4_1_DSP48_0.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(kv260_ispMipiRx_vcu_DP_v_frmbuf_wr_0_1_mul_mul_12ns_13ns_25_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    kv260_ispMipiRx_vcu_DP_v_frmbuf_wr_0_1_mul_mul_12ns_13ns_25_4_1_DSP48_0 kv260_ispMipiRx_vcu_DP_v_frmbuf_wr_0_1_mul_mul_12ns_13ns_25_4_1_DSP48_0_U;

    SC_CTOR(kv260_ispMipiRx_vcu_DP_v_frmbuf_wr_0_1_mul_mul_12ns_13ns_25_4_1):  kv260_ispMipiRx_vcu_DP_v_frmbuf_wr_0_1_mul_mul_12ns_13ns_25_4_1_DSP48_0_U ("kv260_ispMipiRx_vcu_DP_v_frmbuf_wr_0_1_mul_mul_12ns_13ns_25_4_1_DSP48_0_U") {
        kv260_ispMipiRx_vcu_DP_v_frmbuf_wr_0_1_mul_mul_12ns_13ns_25_4_1_DSP48_0_U.clk(clk);
        kv260_ispMipiRx_vcu_DP_v_frmbuf_wr_0_1_mul_mul_12ns_13ns_25_4_1_DSP48_0_U.rst(reset);
        kv260_ispMipiRx_vcu_DP_v_frmbuf_wr_0_1_mul_mul_12ns_13ns_25_4_1_DSP48_0_U.ce(ce);
        kv260_ispMipiRx_vcu_DP_v_frmbuf_wr_0_1_mul_mul_12ns_13ns_25_4_1_DSP48_0_U.a(din0);
        kv260_ispMipiRx_vcu_DP_v_frmbuf_wr_0_1_mul_mul_12ns_13ns_25_4_1_DSP48_0_U.b(din1);
        kv260_ispMipiRx_vcu_DP_v_frmbuf_wr_0_1_mul_mul_12ns_13ns_25_4_1_DSP48_0_U.p(dout);

    }

};

#endif //
