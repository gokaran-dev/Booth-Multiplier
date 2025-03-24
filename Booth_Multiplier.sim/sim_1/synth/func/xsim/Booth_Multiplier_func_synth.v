// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Mar 24 14:34:50 2025
// Host        : DESKTOP-IJF0GJG running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Mtech/Vivado/Booth_Multiplier/Booth_Multiplier.sim/sim_1/synth/func/xsim/Booth_Multiplier_func_synth.v
// Design      : Booth_Multiplier
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module Booth_Multiplier
   (multi,
    multiplier,
    product);
  input [7:0]multi;
  input [7:0]multiplier;
  output [15:0]product;

  wire [7:0]multi;
  wire [7:0]multiplier;
  wire [15:0]product;
  wire [14:0]product_OBUF;

  IBUF \multi_IBUF[0]_inst 
       (.I(multi[0]),
        .O(product_OBUF[7]));
  IBUF \multi_IBUF[1]_inst 
       (.I(multi[1]),
        .O(product_OBUF[8]));
  IBUF \multi_IBUF[2]_inst 
       (.I(multi[2]),
        .O(product_OBUF[9]));
  IBUF \multi_IBUF[3]_inst 
       (.I(multi[3]),
        .O(product_OBUF[10]));
  IBUF \multi_IBUF[4]_inst 
       (.I(multi[4]),
        .O(product_OBUF[11]));
  IBUF \multi_IBUF[5]_inst 
       (.I(multi[5]),
        .O(product_OBUF[12]));
  IBUF \multi_IBUF[6]_inst 
       (.I(multi[6]),
        .O(product_OBUF[13]));
  IBUF \multi_IBUF[7]_inst 
       (.I(multi[7]),
        .O(product_OBUF[14]));
  IBUF \multiplier_IBUF[1]_inst 
       (.I(multiplier[1]),
        .O(product_OBUF[0]));
  IBUF \multiplier_IBUF[2]_inst 
       (.I(multiplier[2]),
        .O(product_OBUF[1]));
  IBUF \multiplier_IBUF[3]_inst 
       (.I(multiplier[3]),
        .O(product_OBUF[2]));
  IBUF \multiplier_IBUF[4]_inst 
       (.I(multiplier[4]),
        .O(product_OBUF[3]));
  IBUF \multiplier_IBUF[5]_inst 
       (.I(multiplier[5]),
        .O(product_OBUF[4]));
  IBUF \multiplier_IBUF[6]_inst 
       (.I(multiplier[6]),
        .O(product_OBUF[5]));
  IBUF \multiplier_IBUF[7]_inst 
       (.I(multiplier[7]),
        .O(product_OBUF[6]));
  OBUF \product_OBUF[0]_inst 
       (.I(product_OBUF[0]),
        .O(product[0]));
  OBUF \product_OBUF[10]_inst 
       (.I(product_OBUF[10]),
        .O(product[10]));
  OBUF \product_OBUF[11]_inst 
       (.I(product_OBUF[11]),
        .O(product[11]));
  OBUF \product_OBUF[12]_inst 
       (.I(product_OBUF[12]),
        .O(product[12]));
  OBUF \product_OBUF[13]_inst 
       (.I(product_OBUF[13]),
        .O(product[13]));
  OBUF \product_OBUF[14]_inst 
       (.I(product_OBUF[14]),
        .O(product[14]));
  OBUF \product_OBUF[15]_inst 
       (.I(product_OBUF[14]),
        .O(product[15]));
  OBUF \product_OBUF[1]_inst 
       (.I(product_OBUF[1]),
        .O(product[1]));
  OBUF \product_OBUF[2]_inst 
       (.I(product_OBUF[2]),
        .O(product[2]));
  OBUF \product_OBUF[3]_inst 
       (.I(product_OBUF[3]),
        .O(product[3]));
  OBUF \product_OBUF[4]_inst 
       (.I(product_OBUF[4]),
        .O(product[4]));
  OBUF \product_OBUF[5]_inst 
       (.I(product_OBUF[5]),
        .O(product[5]));
  OBUF \product_OBUF[6]_inst 
       (.I(product_OBUF[6]),
        .O(product[6]));
  OBUF \product_OBUF[7]_inst 
       (.I(product_OBUF[7]),
        .O(product[7]));
  OBUF \product_OBUF[8]_inst 
       (.I(product_OBUF[8]),
        .O(product[8]));
  OBUF \product_OBUF[9]_inst 
       (.I(product_OBUF[9]),
        .O(product[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
