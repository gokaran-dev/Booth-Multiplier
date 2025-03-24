// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Mar 24 20:44:40 2025
// Host        : DESKTOP-IJF0GJG running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Mtech/Vivado/Booth_Multiplier/Booth_Multiplier.sim/sim_1/synth/func/xsim/Booth_Multiplier_TB_func_synth.v
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
    rst,
    clk,
    done,
    product);
  input [7:0]multi;
  input [7:0]multiplier;
  input rst;
  input clk;
  output done;
  output [15:0]product;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [0:0]count0;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire [3:0]count_reg;
  wire done;
  wire done_OBUF;
  wire done_i_1_n_0;
  wire [7:0]multi;
  wire [7:0]multi_IBUF;
  wire [7:0]multiplier;
  wire [7:0]multiplier_IBUF;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in1_in;
  wire p_3_out0;
  wire [15:0]product;
  wire [15:0]product_OBUF;
  wire [7:0]q2_out;
  wire \q[0]_i_1_n_0 ;
  wire \q[10]_i_1_n_0 ;
  wire \q[11]_i_1_n_0 ;
  wire \q[12]_i_1_n_0 ;
  wire \q[13]_i_1_n_0 ;
  wire \q[14]_i_1_n_0 ;
  wire \q[15]_i_1_n_0 ;
  wire \q[16]_i_3_n_0 ;
  wire \q[16]_i_4_n_0 ;
  wire \q[16]_i_5_n_0 ;
  wire \q[16]_i_6_n_0 ;
  wire \q[1]_i_1_n_0 ;
  wire \q[2]_i_1_n_0 ;
  wire \q[3]_i_1_n_0 ;
  wire \q[4]_i_1_n_0 ;
  wire \q[5]_i_1_n_0 ;
  wire \q[6]_i_1_n_0 ;
  wire \q[7]_i_1_n_0 ;
  wire \q[8]_i_1_n_0 ;
  wire \q[8]_i_2_n_0 ;
  wire \q[8]_i_4_n_0 ;
  wire \q[8]_i_5_n_0 ;
  wire \q[8]_i_6_n_0 ;
  wire \q[8]_i_7_n_0 ;
  wire \q[9]_i_1_n_0 ;
  wire \q_reg[16]_i_2_n_1 ;
  wire \q_reg[16]_i_2_n_2 ;
  wire \q_reg[16]_i_2_n_3 ;
  wire \q_reg[8]_i_3_n_0 ;
  wire \q_reg[8]_i_3_n_1 ;
  wire \q_reg[8]_i_3_n_2 ;
  wire \q_reg[8]_i_3_n_3 ;
  wire \q_reg_n_0_[0] ;
  wire \q_reg_n_0_[2] ;
  wire \q_reg_n_0_[3] ;
  wire \q_reg_n_0_[4] ;
  wire \q_reg_n_0_[5] ;
  wire \q_reg_n_0_[6] ;
  wire \q_reg_n_0_[7] ;
  wire \q_reg_n_0_[8] ;
  wire rst;
  wire rst_IBUF;
  wire sel;
  wire [3:3]\NLW_q_reg[16]_i_2_CO_UNCONNECTED ;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(count0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \count[2]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .O(\count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[3]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[3]),
        .O(sel));
  LUT4 #(
    .INIT(16'hFE01)) 
    \count[3]_i_2 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(\count[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(count0),
        .Q(count_reg[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\count[1]_i_1_n_0 ),
        .Q(count_reg[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\count[3]_i_2_n_0 ),
        .Q(count_reg[3]),
        .S(rst_IBUF));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  LUT4 #(
    .INIT(16'h0001)) 
    done_i_1
       (.I0(count_reg[3]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .O(done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(done_i_1_n_0),
        .Q(done_OBUF),
        .R(rst_IBUF));
  IBUF \multi_IBUF[0]_inst 
       (.I(multi[0]),
        .O(multi_IBUF[0]));
  IBUF \multi_IBUF[1]_inst 
       (.I(multi[1]),
        .O(multi_IBUF[1]));
  IBUF \multi_IBUF[2]_inst 
       (.I(multi[2]),
        .O(multi_IBUF[2]));
  IBUF \multi_IBUF[3]_inst 
       (.I(multi[3]),
        .O(multi_IBUF[3]));
  IBUF \multi_IBUF[4]_inst 
       (.I(multi[4]),
        .O(multi_IBUF[4]));
  IBUF \multi_IBUF[5]_inst 
       (.I(multi[5]),
        .O(multi_IBUF[5]));
  IBUF \multi_IBUF[6]_inst 
       (.I(multi[6]),
        .O(multi_IBUF[6]));
  IBUF \multi_IBUF[7]_inst 
       (.I(multi[7]),
        .O(multi_IBUF[7]));
  IBUF \multiplier_IBUF[0]_inst 
       (.I(multiplier[0]),
        .O(multiplier_IBUF[0]));
  IBUF \multiplier_IBUF[1]_inst 
       (.I(multiplier[1]),
        .O(multiplier_IBUF[1]));
  IBUF \multiplier_IBUF[2]_inst 
       (.I(multiplier[2]),
        .O(multiplier_IBUF[2]));
  IBUF \multiplier_IBUF[3]_inst 
       (.I(multiplier[3]),
        .O(multiplier_IBUF[3]));
  IBUF \multiplier_IBUF[4]_inst 
       (.I(multiplier[4]),
        .O(multiplier_IBUF[4]));
  IBUF \multiplier_IBUF[5]_inst 
       (.I(multiplier[5]),
        .O(multiplier_IBUF[5]));
  IBUF \multiplier_IBUF[6]_inst 
       (.I(multiplier[6]),
        .O(multiplier_IBUF[6]));
  IBUF \multiplier_IBUF[7]_inst 
       (.I(multiplier[7]),
        .O(multiplier_IBUF[7]));
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
       (.I(product_OBUF[15]),
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
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(p_3_out0),
        .Q(product_OBUF[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(p_0_in[2]),
        .Q(product_OBUF[10]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(p_0_in[3]),
        .Q(product_OBUF[11]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(p_0_in[4]),
        .Q(product_OBUF[12]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(p_0_in[5]),
        .Q(product_OBUF[13]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(p_0_in[6]),
        .Q(product_OBUF[14]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(p_0_in[7]),
        .Q(product_OBUF[15]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(\q_reg_n_0_[2] ),
        .Q(product_OBUF[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(\q_reg_n_0_[3] ),
        .Q(product_OBUF[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(\q_reg_n_0_[4] ),
        .Q(product_OBUF[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(\q_reg_n_0_[5] ),
        .Q(product_OBUF[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(\q_reg_n_0_[6] ),
        .Q(product_OBUF[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(\q_reg_n_0_[7] ),
        .Q(product_OBUF[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(\q_reg_n_0_[8] ),
        .Q(product_OBUF[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(p_0_in[0]),
        .Q(product_OBUF[8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \product_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(p_0_in[1]),
        .Q(product_OBUF[9]),
        .R(rst_IBUF));
  LUT4 #(
    .INIT(16'h0ACA)) 
    \q[0]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(p_3_out0),
        .I2(\q[8]_i_1_n_0 ),
        .I3(rst_IBUF),
        .O(\q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBE82FFFFBE820000)) 
    \q[10]_i_1 
       (.I0(p_0_in[2]),
        .I1(\q_reg_n_0_[0] ),
        .I2(p_3_out0),
        .I3(p_0_in1_in[2]),
        .I4(sel),
        .I5(q2_out[1]),
        .O(\q[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBE82)) 
    \q[10]_i_2 
       (.I0(p_0_in[1]),
        .I1(\q_reg_n_0_[0] ),
        .I2(p_3_out0),
        .I3(p_0_in1_in[1]),
        .O(q2_out[1]));
  LUT6 #(
    .INIT(64'hBE82FFFFBE820000)) 
    \q[11]_i_1 
       (.I0(p_0_in[3]),
        .I1(\q_reg_n_0_[0] ),
        .I2(p_3_out0),
        .I3(p_0_in1_in[3]),
        .I4(sel),
        .I5(q2_out[2]),
        .O(\q[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBE82)) 
    \q[11]_i_2 
       (.I0(p_0_in[2]),
        .I1(\q_reg_n_0_[0] ),
        .I2(p_3_out0),
        .I3(p_0_in1_in[2]),
        .O(q2_out[2]));
  LUT6 #(
    .INIT(64'hBE82FFFFBE820000)) 
    \q[12]_i_1 
       (.I0(p_0_in[4]),
        .I1(\q_reg_n_0_[0] ),
        .I2(p_3_out0),
        .I3(p_0_in1_in[4]),
        .I4(sel),
        .I5(q2_out[3]),
        .O(\q[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBE82)) 
    \q[12]_i_2 
       (.I0(p_0_in[3]),
        .I1(\q_reg_n_0_[0] ),
        .I2(p_3_out0),
        .I3(p_0_in1_in[3]),
        .O(q2_out[3]));
  LUT6 #(
    .INIT(64'hBE82FFFFBE820000)) 
    \q[13]_i_1 
       (.I0(p_0_in[5]),
        .I1(\q_reg_n_0_[0] ),
        .I2(p_3_out0),
        .I3(p_0_in1_in[5]),
        .I4(sel),
        .I5(q2_out[4]),
        .O(\q[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBE82)) 
    \q[13]_i_2 
       (.I0(p_0_in[4]),
        .I1(\q_reg_n_0_[0] ),
        .I2(p_3_out0),
        .I3(p_0_in1_in[4]),
        .O(q2_out[4]));
  LUT6 #(
    .INIT(64'hBE82FFFFBE820000)) 
    \q[14]_i_1 
       (.I0(p_0_in[6]),
        .I1(\q_reg_n_0_[0] ),
        .I2(p_3_out0),
        .I3(p_0_in1_in[6]),
        .I4(sel),
        .I5(q2_out[5]),
        .O(\q[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBE82)) 
    \q[14]_i_2 
       (.I0(p_0_in[5]),
        .I1(\q_reg_n_0_[0] ),
        .I2(p_3_out0),
        .I3(p_0_in1_in[5]),
        .O(q2_out[5]));
  LUT6 #(
    .INIT(64'hBE82FFFFBE820000)) 
    \q[15]_i_1 
       (.I0(p_0_in[7]),
        .I1(\q_reg_n_0_[0] ),
        .I2(p_3_out0),
        .I3(p_0_in1_in[7]),
        .I4(sel),
        .I5(q2_out[6]),
        .O(\q[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBE82)) 
    \q[15]_i_2 
       (.I0(p_0_in[6]),
        .I1(\q_reg_n_0_[0] ),
        .I2(p_3_out0),
        .I3(p_0_in1_in[6]),
        .O(q2_out[6]));
  LUT4 #(
    .INIT(16'hBE82)) 
    \q[16]_i_1 
       (.I0(p_0_in[7]),
        .I1(\q_reg_n_0_[0] ),
        .I2(p_3_out0),
        .I3(p_0_in1_in[7]),
        .O(q2_out[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[16]_i_3 
       (.I0(multi_IBUF[7]),
        .I1(p_3_out0),
        .I2(p_0_in[7]),
        .O(\q[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[16]_i_4 
       (.I0(multi_IBUF[6]),
        .I1(p_3_out0),
        .I2(p_0_in[6]),
        .O(\q[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[16]_i_5 
       (.I0(multi_IBUF[5]),
        .I1(p_3_out0),
        .I2(p_0_in[5]),
        .O(\q[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[16]_i_6 
       (.I0(multi_IBUF[4]),
        .I1(p_3_out0),
        .I2(p_0_in[4]),
        .O(\q[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[1]_i_1 
       (.I0(multiplier_IBUF[0]),
        .I1(rst_IBUF),
        .I2(\q_reg_n_0_[2] ),
        .O(\q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[2]_i_1 
       (.I0(multiplier_IBUF[1]),
        .I1(rst_IBUF),
        .I2(\q_reg_n_0_[3] ),
        .O(\q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[3]_i_1 
       (.I0(multiplier_IBUF[2]),
        .I1(rst_IBUF),
        .I2(\q_reg_n_0_[4] ),
        .O(\q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[4]_i_1 
       (.I0(multiplier_IBUF[3]),
        .I1(rst_IBUF),
        .I2(\q_reg_n_0_[5] ),
        .O(\q[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[5]_i_1 
       (.I0(multiplier_IBUF[4]),
        .I1(rst_IBUF),
        .I2(\q_reg_n_0_[6] ),
        .O(\q[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[6]_i_1 
       (.I0(multiplier_IBUF[5]),
        .I1(rst_IBUF),
        .I2(\q_reg_n_0_[7] ),
        .O(\q[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[7]_i_1 
       (.I0(multiplier_IBUF[6]),
        .I1(rst_IBUF),
        .I2(\q_reg_n_0_[8] ),
        .O(\q[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[8]_i_1 
       (.I0(rst_IBUF),
        .I1(count_reg[3]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[2]),
        .O(\q[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBB8B88888B8)) 
    \q[8]_i_2 
       (.I0(multiplier_IBUF[7]),
        .I1(rst_IBUF),
        .I2(p_0_in[0]),
        .I3(\q_reg_n_0_[0] ),
        .I4(p_3_out0),
        .I5(p_0_in1_in[0]),
        .O(\q[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[8]_i_4 
       (.I0(multi_IBUF[3]),
        .I1(p_3_out0),
        .I2(p_0_in[3]),
        .O(\q[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[8]_i_5 
       (.I0(multi_IBUF[2]),
        .I1(p_3_out0),
        .I2(p_0_in[2]),
        .O(\q[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q[8]_i_6 
       (.I0(multi_IBUF[1]),
        .I1(p_3_out0),
        .I2(p_0_in[1]),
        .O(\q[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \q[8]_i_7 
       (.I0(multi_IBUF[0]),
        .O(\q[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBE82FFFFBE820000)) 
    \q[9]_i_1 
       (.I0(p_0_in[1]),
        .I1(\q_reg_n_0_[0] ),
        .I2(p_3_out0),
        .I3(p_0_in1_in[1]),
        .I4(sel),
        .I5(q2_out[0]),
        .O(\q[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBE82)) 
    \q[9]_i_2 
       (.I0(p_0_in[0]),
        .I1(\q_reg_n_0_[0] ),
        .I2(p_3_out0),
        .I3(p_0_in1_in[0]),
        .O(q2_out[0]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[0]_i_1_n_0 ),
        .Q(\q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[8]_i_1_n_0 ),
        .D(\q[10]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[8]_i_1_n_0 ),
        .D(\q[11]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[8]_i_1_n_0 ),
        .D(\q[12]_i_1_n_0 ),
        .Q(p_0_in[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[8]_i_1_n_0 ),
        .D(\q[13]_i_1_n_0 ),
        .Q(p_0_in[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[8]_i_1_n_0 ),
        .D(\q[14]_i_1_n_0 ),
        .Q(p_0_in[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[8]_i_1_n_0 ),
        .D(\q[15]_i_1_n_0 ),
        .Q(p_0_in[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[8]_i_1_n_0 ),
        .D(q2_out[7]),
        .Q(p_0_in[7]),
        .R(rst_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[16]_i_2 
       (.CI(\q_reg[8]_i_3_n_0 ),
        .CO({\NLW_q_reg[16]_i_2_CO_UNCONNECTED [3],\q_reg[16]_i_2_n_1 ,\q_reg[16]_i_2_n_2 ,\q_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_0_in[6:4]}),
        .O(p_0_in1_in[7:4]),
        .S({\q[16]_i_3_n_0 ,\q[16]_i_4_n_0 ,\q[16]_i_5_n_0 ,\q[16]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[8]_i_1_n_0 ),
        .D(\q[1]_i_1_n_0 ),
        .Q(p_3_out0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[8]_i_1_n_0 ),
        .D(\q[2]_i_1_n_0 ),
        .Q(\q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[8]_i_1_n_0 ),
        .D(\q[3]_i_1_n_0 ),
        .Q(\q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[8]_i_1_n_0 ),
        .D(\q[4]_i_1_n_0 ),
        .Q(\q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[8]_i_1_n_0 ),
        .D(\q[5]_i_1_n_0 ),
        .Q(\q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[8]_i_1_n_0 ),
        .D(\q[6]_i_1_n_0 ),
        .Q(\q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[8]_i_1_n_0 ),
        .D(\q[7]_i_1_n_0 ),
        .Q(\q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[8]_i_1_n_0 ),
        .D(\q[8]_i_2_n_0 ),
        .Q(\q_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[8]_i_3 
       (.CI(1'b0),
        .CO({\q_reg[8]_i_3_n_0 ,\q_reg[8]_i_3_n_1 ,\q_reg[8]_i_3_n_2 ,\q_reg[8]_i_3_n_3 }),
        .CYINIT(p_0_in[0]),
        .DI({p_0_in[3:1],p_3_out0}),
        .O(p_0_in1_in[3:0]),
        .S({\q[8]_i_4_n_0 ,\q[8]_i_5_n_0 ,\q[8]_i_6_n_0 ,\q[8]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[8]_i_1_n_0 ),
        .D(\q[9]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(rst_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
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
