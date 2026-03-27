// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __bd_eab1_hsc_0_mul_mul_9s_10ns_20_4_1__HH__
#define __bd_eab1_hsc_0_mul_mul_9s_10ns_20_4_1__HH__
#include "bd_eab1_hsc_0_mul_mul_9s_10ns_20_4_1_DSP48_12.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(bd_eab1_hsc_0_mul_mul_9s_10ns_20_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    bd_eab1_hsc_0_mul_mul_9s_10ns_20_4_1_DSP48_12 bd_eab1_hsc_0_mul_mul_9s_10ns_20_4_1_DSP48_12_U;

    SC_CTOR(bd_eab1_hsc_0_mul_mul_9s_10ns_20_4_1):  bd_eab1_hsc_0_mul_mul_9s_10ns_20_4_1_DSP48_12_U ("bd_eab1_hsc_0_mul_mul_9s_10ns_20_4_1_DSP48_12_U") {
        bd_eab1_hsc_0_mul_mul_9s_10ns_20_4_1_DSP48_12_U.clk(clk);
        bd_eab1_hsc_0_mul_mul_9s_10ns_20_4_1_DSP48_12_U.rst(reset);
        bd_eab1_hsc_0_mul_mul_9s_10ns_20_4_1_DSP48_12_U.ce(ce);
        bd_eab1_hsc_0_mul_mul_9s_10ns_20_4_1_DSP48_12_U.a(din0);
        bd_eab1_hsc_0_mul_mul_9s_10ns_20_4_1_DSP48_12_U.b(din1);
        bd_eab1_hsc_0_mul_mul_9s_10ns_20_4_1_DSP48_12_U.p(dout);

    }

};

#endif //
