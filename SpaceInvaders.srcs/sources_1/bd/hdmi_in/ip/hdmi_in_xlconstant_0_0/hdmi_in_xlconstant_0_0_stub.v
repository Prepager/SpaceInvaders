// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Jan  7 14:05:52 2019
// Host        : DESKTOP-2EJVHB6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {C:/Users/shuha/OneDrive/Skrivebord/Kurser/3.Semester/3 Ugers
//               Projekt/Zip
//               filer/Spaceinvaders/Spaceinvaders.srcs/sources_1/bd/hdmi_in/ip/hdmi_in_xlconstant_0_0/hdmi_in_xlconstant_0_0_stub.v}
// Design      : hdmi_in_xlconstant_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconstant_v1_1_3_xlconstant,Vivado 2017.2" *)
module hdmi_in_xlconstant_0_0(dout)
/* synthesis syn_black_box black_box_pad_pin="dout[0:0]" */;
  output [0:0]dout;
endmodule
