// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module myproject_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config13_s_invert_table_Rcud (
    address0, ce0, q0, 
    reset, clk);

parameter DataWidth = 18;
parameter AddressWidth = 10;
parameter AddressRange = 1024;
 
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;

input reset;
input clk;

 
reg [DataWidth-1:0] rom0[0:AddressRange-1];


initial begin
     
    $readmemh("./myproject_softmax_stable_ap_fixed_ap_fixed_16_6_5_3_0_softmax_config13_s_invert_table_Rcud.dat", rom0);
end

  
always @(posedge clk) 
begin 
    if (ce0) 
    begin
        q0 <= rom0[address0];
    end
end


endmodule

