// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Aug 29 13:18:34 2025
// Host        : ZELLAWALTMAE706 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Mac/Home/Documents/GitHub/EE410-Advanced_Digital_Systems/Seven-Segment_LED_Display_Counter-Waltman/Seven-Segment_LED_Display_Counter-Waltman.sim/sim_1/impl/timing/xsim/testbench_pmod_ssd_time_impl.v
// Design      : pmod_ssd
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "6c9cd31d" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module pmod_ssd
   (sys_clk,
    rst_n,
    ssd,
    sel);
  input sys_clk;
  input rst_n;
  output [6:0]ssd;
  output sel;

  wire [3:0]binary_cnt_reg;
  wire [25:0]p_0_in;
  wire [3:0]p_0_in__0;
  wire rst_n;
  wire rst_n_IBUF;
  wire sel;
  wire [6:0]ssd;
  wire \ssd[0]_i_1_n_0 ;
  wire \ssd[1]_i_1_n_0 ;
  wire \ssd[2]_i_1_n_0 ;
  wire \ssd[3]_i_1_n_0 ;
  wire \ssd[4]_i_1_n_0 ;
  wire \ssd[5]_i_1_n_0 ;
  wire \ssd[6]_i_1_n_0 ;
  wire \ssd[6]_i_2_n_0 ;
  wire \ssd[6]_i_3_n_0 ;
  wire \ssd[6]_i_4_n_0 ;
  wire \ssd[6]_i_5_n_0 ;
  wire \ssd[6]_i_6_n_0 ;
  wire [6:0]ssd_OBUF;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;
  wire [25:0]timer_cnt;
  wire [25:1]timer_cnt0;
  wire \timer_cnt[25]_i_2_n_0 ;
  wire \timer_cnt_reg[12]_i_2_n_0 ;
  wire \timer_cnt_reg[16]_i_2_n_0 ;
  wire \timer_cnt_reg[20]_i_2_n_0 ;
  wire \timer_cnt_reg[24]_i_2_n_0 ;
  wire \timer_cnt_reg[4]_i_2_n_0 ;
  wire \timer_cnt_reg[8]_i_2_n_0 ;
  wire [2:0]\NLW_timer_cnt_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_cnt_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_cnt_reg[20]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_cnt_reg[24]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_timer_cnt_reg[25]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_timer_cnt_reg[25]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_timer_cnt_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_cnt_reg[8]_i_2_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("testbench_pmod_ssd_time_impl.sdf",,,,"tool_control");
end
  LUT4 #(
    .INIT(16'h001F)) 
    \binary_cnt[0]_i_1 
       (.I0(binary_cnt_reg[1]),
        .I1(binary_cnt_reg[2]),
        .I2(binary_cnt_reg[3]),
        .I3(binary_cnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0370)) 
    \binary_cnt[1]_i_1 
       (.I0(binary_cnt_reg[2]),
        .I1(binary_cnt_reg[3]),
        .I2(binary_cnt_reg[0]),
        .I3(binary_cnt_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1450)) 
    \binary_cnt[2]_i_1 
       (.I0(binary_cnt_reg[3]),
        .I1(binary_cnt_reg[1]),
        .I2(binary_cnt_reg[2]),
        .I3(binary_cnt_reg[0]),
        .O(p_0_in__0[2]));
  (* \PinAttr:I3:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2404)) 
    \binary_cnt[3]_i_1 
       (.I0(binary_cnt_reg[1]),
        .I1(binary_cnt_reg[3]),
        .I2(binary_cnt_reg[2]),
        .I3(binary_cnt_reg[0]),
        .O(p_0_in__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \binary_cnt_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\ssd[6]_i_1_n_0 ),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(binary_cnt_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \binary_cnt_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\ssd[6]_i_1_n_0 ),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(binary_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \binary_cnt_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\ssd[6]_i_1_n_0 ),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(binary_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \binary_cnt_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\ssd[6]_i_1_n_0 ),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(binary_cnt_reg[3]));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  OBUF sel_OBUF_inst
       (.I(1'b0),
        .O(sel));
  (* \PinAttr:I2:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h116E)) 
    \ssd[0]_i_1 
       (.I0(binary_cnt_reg[1]),
        .I1(binary_cnt_reg[2]),
        .I2(binary_cnt_reg[0]),
        .I3(binary_cnt_reg[3]),
        .O(\ssd[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF2B)) 
    \ssd[1]_i_1 
       (.I0(binary_cnt_reg[2]),
        .I1(binary_cnt_reg[1]),
        .I2(binary_cnt_reg[0]),
        .I3(binary_cnt_reg[3]),
        .O(\ssd[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFD45)) 
    \ssd[2]_i_1 
       (.I0(binary_cnt_reg[0]),
        .I1(binary_cnt_reg[1]),
        .I2(binary_cnt_reg[2]),
        .I3(binary_cnt_reg[3]),
        .O(\ssd[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBFEB)) 
    \ssd[3]_i_1 
       (.I0(binary_cnt_reg[3]),
        .I1(binary_cnt_reg[2]),
        .I2(binary_cnt_reg[0]),
        .I3(binary_cnt_reg[1]),
        .O(\ssd[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \ssd[4]_i_1 
       (.I0(binary_cnt_reg[3]),
        .I1(binary_cnt_reg[1]),
        .I2(binary_cnt_reg[0]),
        .I3(binary_cnt_reg[2]),
        .O(\ssd[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEBFF)) 
    \ssd[5]_i_1 
       (.I0(binary_cnt_reg[3]),
        .I1(binary_cnt_reg[1]),
        .I2(binary_cnt_reg[0]),
        .I3(binary_cnt_reg[2]),
        .O(\ssd[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8F888F8888)) 
    \ssd[6]_i_1 
       (.I0(timer_cnt[25]),
        .I1(timer_cnt[24]),
        .I2(\ssd[6]_i_3_n_0 ),
        .I3(\ssd[6]_i_4_n_0 ),
        .I4(\ssd[6]_i_5_n_0 ),
        .I5(\ssd[6]_i_6_n_0 ),
        .O(\ssd[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFEBB)) 
    \ssd[6]_i_2 
       (.I0(binary_cnt_reg[3]),
        .I1(binary_cnt_reg[2]),
        .I2(binary_cnt_reg[1]),
        .I3(binary_cnt_reg[0]),
        .O(\ssd[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ssd[6]_i_3 
       (.I0(timer_cnt[19]),
        .I1(timer_cnt[20]),
        .I2(timer_cnt[25]),
        .I3(timer_cnt[23]),
        .I4(timer_cnt[22]),
        .I5(timer_cnt[21]),
        .O(\ssd[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \ssd[6]_i_4 
       (.I0(timer_cnt[13]),
        .I1(timer_cnt[15]),
        .I2(timer_cnt[12]),
        .I3(timer_cnt[17]),
        .I4(timer_cnt[14]),
        .O(\ssd[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ssd[6]_i_5 
       (.I0(timer_cnt[9]),
        .I1(timer_cnt[11]),
        .I2(timer_cnt[8]),
        .I3(timer_cnt[7]),
        .I4(timer_cnt[10]),
        .O(\ssd[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \ssd[6]_i_6 
       (.I0(timer_cnt[18]),
        .I1(timer_cnt[16]),
        .I2(timer_cnt[17]),
        .O(\ssd[6]_i_6_n_0 ));
  OBUF \ssd_OBUF[0]_inst 
       (.I(ssd_OBUF[0]),
        .O(ssd[0]));
  OBUF \ssd_OBUF[1]_inst 
       (.I(ssd_OBUF[1]),
        .O(ssd[1]));
  OBUF \ssd_OBUF[2]_inst 
       (.I(ssd_OBUF[2]),
        .O(ssd[2]));
  OBUF \ssd_OBUF[3]_inst 
       (.I(ssd_OBUF[3]),
        .O(ssd[3]));
  OBUF \ssd_OBUF[4]_inst 
       (.I(ssd_OBUF[4]),
        .O(ssd[4]));
  OBUF \ssd_OBUF[5]_inst 
       (.I(ssd_OBUF[5]),
        .O(ssd[5]));
  OBUF \ssd_OBUF[6]_inst 
       (.I(ssd_OBUF[6]),
        .O(ssd[6]));
  FDCE #(
    .INIT(1'b0)) 
    \ssd_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\ssd[6]_i_1_n_0 ),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(\ssd[0]_i_1_n_0 ),
        .Q(ssd_OBUF[0]));
  FDPE #(
    .INIT(1'b1)) 
    \ssd_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\ssd[6]_i_1_n_0 ),
        .D(\ssd[1]_i_1_n_0 ),
        .PRE(\timer_cnt[25]_i_2_n_0 ),
        .Q(ssd_OBUF[1]));
  FDPE #(
    .INIT(1'b1)) 
    \ssd_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\ssd[6]_i_1_n_0 ),
        .D(\ssd[2]_i_1_n_0 ),
        .PRE(\timer_cnt[25]_i_2_n_0 ),
        .Q(ssd_OBUF[2]));
  FDPE #(
    .INIT(1'b1)) 
    \ssd_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\ssd[6]_i_1_n_0 ),
        .D(\ssd[3]_i_1_n_0 ),
        .PRE(\timer_cnt[25]_i_2_n_0 ),
        .Q(ssd_OBUF[3]));
  FDPE #(
    .INIT(1'b1)) 
    \ssd_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\ssd[6]_i_1_n_0 ),
        .D(\ssd[4]_i_1_n_0 ),
        .PRE(\timer_cnt[25]_i_2_n_0 ),
        .Q(ssd_OBUF[4]));
  FDPE #(
    .INIT(1'b1)) 
    \ssd_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\ssd[6]_i_1_n_0 ),
        .D(\ssd[5]_i_1_n_0 ),
        .PRE(\timer_cnt[25]_i_2_n_0 ),
        .Q(ssd_OBUF[5]));
  FDPE #(
    .INIT(1'b1)) 
    \ssd_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\ssd[6]_i_1_n_0 ),
        .D(\ssd[6]_i_2_n_0 ),
        .PRE(\timer_cnt[25]_i_2_n_0 ),
        .Q(ssd_OBUF[6]));
  BUFG sys_clk_IBUF_BUFG_inst
       (.I(sys_clk_IBUF),
        .O(sys_clk_IBUF_BUFG));
  IBUF sys_clk_IBUF_inst
       (.I(sys_clk),
        .O(sys_clk_IBUF));
  (* \PinAttr:I0:HOLD_DETOUR  = "179" *) 
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \timer_cnt[0]_i_1 
       (.I0(timer_cnt[0]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[10]_i_1 
       (.I0(timer_cnt0[10]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[11]_i_1 
       (.I0(timer_cnt0[11]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[12]_i_1 
       (.I0(timer_cnt0[12]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[13]_i_1 
       (.I0(timer_cnt0[13]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[14]_i_1 
       (.I0(timer_cnt0[14]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[15]_i_1 
       (.I0(timer_cnt0[15]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[16]_i_1 
       (.I0(timer_cnt0[16]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[17]_i_1 
       (.I0(timer_cnt0[17]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[18]_i_1 
       (.I0(timer_cnt0[18]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[19]_i_1 
       (.I0(timer_cnt0[19]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[1]_i_1 
       (.I0(timer_cnt0[1]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[20]_i_1 
       (.I0(timer_cnt0[20]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[21]_i_1 
       (.I0(timer_cnt0[21]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[22]_i_1 
       (.I0(timer_cnt0[22]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[23]_i_1 
       (.I0(timer_cnt0[23]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[24]_i_1 
       (.I0(timer_cnt0[24]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[25]_i_1 
       (.I0(timer_cnt0[25]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[25]));
  LUT1 #(
    .INIT(2'h1)) 
    \timer_cnt[25]_i_2 
       (.I0(rst_n_IBUF),
        .O(\timer_cnt[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[2]_i_1 
       (.I0(timer_cnt0[2]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[3]_i_1 
       (.I0(timer_cnt0[3]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[4]_i_1 
       (.I0(timer_cnt0[4]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[5]_i_1 
       (.I0(timer_cnt0[5]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[6]_i_1 
       (.I0(timer_cnt0[6]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[7]_i_1 
       (.I0(timer_cnt0[7]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[8]_i_1 
       (.I0(timer_cnt0[8]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_cnt[9]_i_1 
       (.I0(timer_cnt0[9]),
        .I1(\ssd[6]_i_1_n_0 ),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(timer_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[10] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[10]),
        .Q(timer_cnt[10]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[11] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[11]),
        .Q(timer_cnt[11]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[12] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[12]),
        .Q(timer_cnt[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_cnt_reg[12]_i_2 
       (.CI(\timer_cnt_reg[8]_i_2_n_0 ),
        .CO({\timer_cnt_reg[12]_i_2_n_0 ,\NLW_timer_cnt_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer_cnt0[12:9]),
        .S(timer_cnt[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[13] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[13]),
        .Q(timer_cnt[13]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[14] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[14]),
        .Q(timer_cnt[14]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[15] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[15]),
        .Q(timer_cnt[15]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[16] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[16]),
        .Q(timer_cnt[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_cnt_reg[16]_i_2 
       (.CI(\timer_cnt_reg[12]_i_2_n_0 ),
        .CO({\timer_cnt_reg[16]_i_2_n_0 ,\NLW_timer_cnt_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer_cnt0[16:13]),
        .S(timer_cnt[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[17] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[17]),
        .Q(timer_cnt[17]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[18] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[18]),
        .Q(timer_cnt[18]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[19] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[19]),
        .Q(timer_cnt[19]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(timer_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[20] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[20]),
        .Q(timer_cnt[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_cnt_reg[20]_i_2 
       (.CI(\timer_cnt_reg[16]_i_2_n_0 ),
        .CO({\timer_cnt_reg[20]_i_2_n_0 ,\NLW_timer_cnt_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer_cnt0[20:17]),
        .S(timer_cnt[20:17]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[21] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[21]),
        .Q(timer_cnt[21]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[22] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[22]),
        .Q(timer_cnt[22]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[23] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[23]),
        .Q(timer_cnt[23]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[24] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[24]),
        .Q(timer_cnt[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_cnt_reg[24]_i_2 
       (.CI(\timer_cnt_reg[20]_i_2_n_0 ),
        .CO({\timer_cnt_reg[24]_i_2_n_0 ,\NLW_timer_cnt_reg[24]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer_cnt0[24:21]),
        .S(timer_cnt[24:21]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[25] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[25]),
        .Q(timer_cnt[25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_cnt_reg[25]_i_3 
       (.CI(\timer_cnt_reg[24]_i_2_n_0 ),
        .CO(\NLW_timer_cnt_reg[25]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_timer_cnt_reg[25]_i_3_O_UNCONNECTED [3:1],timer_cnt0[25]}),
        .S({1'b0,1'b0,1'b0,timer_cnt[25]}));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(timer_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(timer_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(timer_cnt[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\timer_cnt_reg[4]_i_2_n_0 ,\NLW_timer_cnt_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(timer_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer_cnt0[4:1]),
        .S(timer_cnt[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(timer_cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(timer_cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(timer_cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[8] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(timer_cnt[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_cnt_reg[8]_i_2 
       (.CI(\timer_cnt_reg[4]_i_2_n_0 ),
        .CO({\timer_cnt_reg[8]_i_2_n_0 ,\NLW_timer_cnt_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer_cnt0[8:5]),
        .S(timer_cnt[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[9] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\timer_cnt[25]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(timer_cnt[9]));
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
