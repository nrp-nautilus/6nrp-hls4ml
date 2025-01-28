// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __myproject_mul_mul_18s_17ns_26_1_1__HH__
#define __myproject_mul_mul_18s_17ns_26_1_1__HH__
#include "myproject_mul_mul_18s_17ns_26_1_1_DSP48_0.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(myproject_mul_mul_18s_17ns_26_1_1) {
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    myproject_mul_mul_18s_17ns_26_1_1_DSP48_0 myproject_mul_mul_18s_17ns_26_1_1_DSP48_0_U;

    SC_CTOR(myproject_mul_mul_18s_17ns_26_1_1):  myproject_mul_mul_18s_17ns_26_1_1_DSP48_0_U ("myproject_mul_mul_18s_17ns_26_1_1_DSP48_0_U") {
        myproject_mul_mul_18s_17ns_26_1_1_DSP48_0_U.a(din0);
        myproject_mul_mul_18s_17ns_26_1_1_DSP48_0_U.b(din1);
        myproject_mul_mul_18s_17ns_26_1_1_DSP48_0_U.p(dout);

    }

};

#endif //
