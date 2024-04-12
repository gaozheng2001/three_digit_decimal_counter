// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu May  5 10:17:38 2022
// Host        : BlackTeaIrse running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/LABWORK/DSD/Lab/three_digit_decimal_counter/three_digit_decimal_counter.sim/sim_5/synth/timing/xsim/tb_ip_time_synth.v
// Design      : counter
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module clk_wiz_0
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire locked;
  wire reset;

  clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked),
        .reset(reset));
endmodule

module clk_wiz_0_clk_wiz
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire locked;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(15.625000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(78.125000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(2),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

(* NotValidForBitStream *)
module counter
   (CLK,
    RESET,
    LOAD,
    d1_in,
    d10_in,
    d100_in,
    d1,
    d10,
    d100);
  input CLK;
  input RESET;
  input LOAD;
  input [3:0]d1_in;
  input [3:0]d10_in;
  input [3:0]d100_in;
  output [3:0]d1;
  output [3:0]d10;
  output [3:0]d100;

  (* IBUF_LOW_PWR *) wire CLK;
  wire LOAD;
  wire LOAD_IBUF;
  wire RESET;
  wire RESET_IBUF;
  wire clk_out_10M;
  wire [3:0]d1;
  wire [3:0]d10;
  wire [3:0]d100;
  wire [3:0]d100_OBUF;
  wire [3:0]d100_in;
  wire [3:0]d100_in_IBUF;
  wire [3:0]d10_OBUF;
  wire [3:0]d10_in;
  wire [3:0]d10_in_IBUF;
  wire [3:0]d1_OBUF;
  wire [3:0]d1_in;
  wire [3:0]d1_in_IBUF;
  wire \down10M/state ;
  wire NLW_system_clocke_locked_UNCONNECTED;

initial begin
 $sdf_annotate("tb_ip_time_synth.sdf",,,,"tool_control");
end
  IBUF LOAD_IBUF_inst
       (.I(LOAD),
        .O(LOAD_IBUF));
  IBUF RESET_IBUF_inst
       (.I(RESET),
        .O(RESET_IBUF));
  counterer_1hz counter_1hz
       (.AR(RESET_IBUF),
        .CLK(clk_out_10M),
        .state(\down10M/state ));
  OBUF \d100_OBUF[0]_inst 
       (.I(d100_OBUF[0]),
        .O(d100[0]));
  OBUF \d100_OBUF[1]_inst 
       (.I(d100_OBUF[1]),
        .O(d100[1]));
  OBUF \d100_OBUF[2]_inst 
       (.I(d100_OBUF[2]),
        .O(d100[2]));
  OBUF \d100_OBUF[3]_inst 
       (.I(d100_OBUF[3]),
        .O(d100[3]));
  IBUF \d100_in_IBUF[0]_inst 
       (.I(d100_in[0]),
        .O(d100_in_IBUF[0]));
  IBUF \d100_in_IBUF[1]_inst 
       (.I(d100_in[1]),
        .O(d100_in_IBUF[1]));
  IBUF \d100_in_IBUF[2]_inst 
       (.I(d100_in[2]),
        .O(d100_in_IBUF[2]));
  IBUF \d100_in_IBUF[3]_inst 
       (.I(d100_in[3]),
        .O(d100_in_IBUF[3]));
  OBUF \d10_OBUF[0]_inst 
       (.I(d10_OBUF[0]),
        .O(d10[0]));
  OBUF \d10_OBUF[1]_inst 
       (.I(d10_OBUF[1]),
        .O(d10[1]));
  OBUF \d10_OBUF[2]_inst 
       (.I(d10_OBUF[2]),
        .O(d10[2]));
  OBUF \d10_OBUF[3]_inst 
       (.I(d10_OBUF[3]),
        .O(d10[3]));
  IBUF \d10_in_IBUF[0]_inst 
       (.I(d10_in[0]),
        .O(d10_in_IBUF[0]));
  IBUF \d10_in_IBUF[1]_inst 
       (.I(d10_in[1]),
        .O(d10_in_IBUF[1]));
  IBUF \d10_in_IBUF[2]_inst 
       (.I(d10_in[2]),
        .O(d10_in_IBUF[2]));
  IBUF \d10_in_IBUF[3]_inst 
       (.I(d10_in[3]),
        .O(d10_in_IBUF[3]));
  OBUF \d1_OBUF[0]_inst 
       (.I(d1_OBUF[0]),
        .O(d1[0]));
  OBUF \d1_OBUF[1]_inst 
       (.I(d1_OBUF[1]),
        .O(d1[1]));
  OBUF \d1_OBUF[2]_inst 
       (.I(d1_OBUF[2]),
        .O(d1[2]));
  OBUF \d1_OBUF[3]_inst 
       (.I(d1_OBUF[3]),
        .O(d1[3]));
  IBUF \d1_in_IBUF[0]_inst 
       (.I(d1_in[0]),
        .O(d1_in_IBUF[0]));
  IBUF \d1_in_IBUF[1]_inst 
       (.I(d1_in[1]),
        .O(d1_in_IBUF[1]));
  IBUF \d1_in_IBUF[2]_inst 
       (.I(d1_in[2]),
        .O(d1_in_IBUF[2]));
  IBUF \d1_in_IBUF[3]_inst 
       (.I(d1_in[3]),
        .O(d1_in_IBUF[3]));
  (* IMPORTED_FROM = "d:/LABWORK/DSD/Lab/three_digit_decimal_counter/three_digit_decimal_counter.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* syn_black_box = "TRUE" *) 
  clk_wiz_0 system_clocke
       (.clk_in1(CLK),
        .clk_out1(clk_out_10M),
        .locked(NLW_system_clocke_locked_UNCONNECTED),
        .reset(RESET_IBUF));
  three_counter three_counters
       (.AR(RESET_IBUF),
        .CLK(clk_out_10M),
        .LOAD_IBUF(LOAD_IBUF),
        .Q(d10_OBUF),
        .d100_in_IBUF(d100_in_IBUF),
        .\d100_reg_reg[3]_0 (d100_OBUF),
        .d10_in_IBUF(d10_in_IBUF),
        .d1_in_IBUF(d1_in_IBUF),
        .\d1_reg_reg[3]_0 (d1_OBUF),
        .state(\down10M/state ));
endmodule

module counterer_1hz
   (state,
    CLK,
    AR);
  output state;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire state;

  three_digit_decimal_counter down10M
       (.AR(AR),
        .CLK(CLK),
        .state_reg_0(state));
endmodule

module three_counter
   (Q,
    \d1_reg_reg[3]_0 ,
    \d100_reg_reg[3]_0 ,
    CLK,
    AR,
    d10_in_IBUF,
    LOAD_IBUF,
    d1_in_IBUF,
    d100_in_IBUF,
    state);
  output [3:0]Q;
  output [3:0]\d1_reg_reg[3]_0 ;
  output [3:0]\d100_reg_reg[3]_0 ;
  input CLK;
  input [0:0]AR;
  input [3:0]d10_in_IBUF;
  input LOAD_IBUF;
  input [3:0]d1_in_IBUF;
  input [3:0]d100_in_IBUF;
  input state;

  wire [0:0]AR;
  wire CLK;
  wire LOAD_IBUF;
  wire [3:0]Q;
  wire [3:0]d100_in_IBUF;
  wire \d100_reg[0]_i_1_n_0 ;
  wire \d100_reg[1]_i_1_n_0 ;
  wire \d100_reg[2]_i_1_n_0 ;
  wire \d100_reg[3]_i_1_n_0 ;
  wire \d100_reg[3]_i_2_n_0 ;
  wire \d100_reg[3]_i_3_n_0 ;
  wire [3:0]\d100_reg_reg[3]_0 ;
  wire [3:0]d10_in_IBUF;
  wire \d10_reg[0]_i_1_n_0 ;
  wire \d10_reg[1]_i_1_n_0 ;
  wire \d10_reg[2]_i_1_n_0 ;
  wire \d10_reg[2]_i_2_n_0 ;
  wire \d10_reg[3]_i_1_n_0 ;
  wire \d10_reg[3]_i_2_n_0 ;
  wire \d10_reg[3]_i_3_n_0 ;
  wire [3:0]d1_in_IBUF;
  wire \d1_reg[0]_i_1_n_0 ;
  wire \d1_reg[1]_i_1_n_0 ;
  wire \d1_reg[1]_i_2_n_0 ;
  wire \d1_reg[2]_i_1_n_0 ;
  wire \d1_reg[2]_i_2_n_0 ;
  wire \d1_reg[3]_i_1_n_0 ;
  wire \d1_reg[3]_i_2_n_0 ;
  wire \d1_reg[3]_i_5_n_0 ;
  wire [3:0]\d1_reg_reg[3]_0 ;
  wire eqOp0_in;
  wire eqOp1_in;
  wire p_2_in;
  wire state;
  wire state_0;
  wire state_i_1_n_0;

  LUT4 #(
    .INIT(16'h88B8)) 
    \d100_reg[0]_i_1 
       (.I0(d100_in_IBUF[0]),
        .I1(LOAD_IBUF),
        .I2(state_0),
        .I3(\d100_reg_reg[3]_0 [0]),
        .O(\d100_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h88B8B888)) 
    \d100_reg[1]_i_1 
       (.I0(d100_in_IBUF[1]),
        .I1(LOAD_IBUF),
        .I2(state_0),
        .I3(\d100_reg_reg[3]_0 [1]),
        .I4(\d100_reg_reg[3]_0 [0]),
        .O(\d100_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8B888B888B888)) 
    \d100_reg[2]_i_1 
       (.I0(d100_in_IBUF[2]),
        .I1(LOAD_IBUF),
        .I2(state_0),
        .I3(\d100_reg_reg[3]_0 [2]),
        .I4(\d100_reg_reg[3]_0 [1]),
        .I5(\d100_reg_reg[3]_0 [0]),
        .O(\d100_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF2F)) 
    \d100_reg[3]_i_1 
       (.I0(p_2_in),
        .I1(eqOp1_in),
        .I2(state_0),
        .I3(LOAD_IBUF),
        .I4(state),
        .O(\d100_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8B888B888B888)) 
    \d100_reg[3]_i_2 
       (.I0(d100_in_IBUF[3]),
        .I1(LOAD_IBUF),
        .I2(state_0),
        .I3(\d100_reg_reg[3]_0 [3]),
        .I4(\d100_reg_reg[3]_0 [2]),
        .I5(\d100_reg[3]_i_3_n_0 ),
        .O(\d100_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \d100_reg[3]_i_3 
       (.I0(\d100_reg_reg[3]_0 [1]),
        .I1(\d100_reg_reg[3]_0 [0]),
        .O(\d100_reg[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d100_reg_reg[0] 
       (.C(CLK),
        .CE(\d100_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\d100_reg[0]_i_1_n_0 ),
        .Q(\d100_reg_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \d100_reg_reg[1] 
       (.C(CLK),
        .CE(\d100_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\d100_reg[1]_i_1_n_0 ),
        .Q(\d100_reg_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \d100_reg_reg[2] 
       (.C(CLK),
        .CE(\d100_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\d100_reg[2]_i_1_n_0 ),
        .Q(\d100_reg_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \d100_reg_reg[3] 
       (.C(CLK),
        .CE(\d100_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\d100_reg[3]_i_2_n_0 ),
        .Q(\d100_reg_reg[3]_0 [3]));
  LUT5 #(
    .INIT(32'h888888B8)) 
    \d10_reg[0]_i_1 
       (.I0(d10_in_IBUF[0]),
        .I1(LOAD_IBUF),
        .I2(state_0),
        .I3(Q[0]),
        .I4(p_2_in),
        .O(\d10_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \d10_reg[1]_i_1 
       (.I0(d10_in_IBUF[1]),
        .I1(LOAD_IBUF),
        .I2(state_0),
        .I3(p_2_in),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\d10_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \d10_reg[2]_i_1 
       (.I0(d10_in_IBUF[2]),
        .I1(LOAD_IBUF),
        .I2(state_0),
        .I3(p_2_in),
        .I4(\d10_reg[2]_i_2_n_0 ),
        .I5(Q[2]),
        .O(\d10_reg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d10_reg[2]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\d10_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4EFF)) 
    \d10_reg[3]_i_1 
       (.I0(p_2_in),
        .I1(eqOp0_in),
        .I2(eqOp1_in),
        .I3(state_0),
        .I4(LOAD_IBUF),
        .I5(state),
        .O(\d10_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \d10_reg[3]_i_2 
       (.I0(d10_in_IBUF[3]),
        .I1(LOAD_IBUF),
        .I2(state_0),
        .I3(p_2_in),
        .I4(\d10_reg[3]_i_3_n_0 ),
        .O(\d10_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \d10_reg[3]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\d10_reg[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d10_reg_reg[0] 
       (.C(CLK),
        .CE(\d10_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\d10_reg[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \d10_reg_reg[1] 
       (.C(CLK),
        .CE(\d10_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\d10_reg[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \d10_reg_reg[2] 
       (.C(CLK),
        .CE(\d10_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\d10_reg[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \d10_reg_reg[3] 
       (.C(CLK),
        .CE(\d10_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\d10_reg[3]_i_2_n_0 ),
        .Q(Q[3]));
  LUT6 #(
    .INIT(64'h88888888888888B8)) 
    \d1_reg[0]_i_1 
       (.I0(d1_in_IBUF[0]),
        .I1(LOAD_IBUF),
        .I2(state_0),
        .I3(p_2_in),
        .I4(eqOp0_in),
        .I5(\d1_reg_reg[3]_0 [0]),
        .O(\d1_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \d1_reg[0]_i_2 
       (.I0(\d1_reg_reg[3]_0 [2]),
        .I1(\d1_reg_reg[3]_0 [1]),
        .I2(\d1_reg_reg[3]_0 [3]),
        .I3(\d1_reg_reg[3]_0 [0]),
        .O(eqOp0_in));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \d1_reg[1]_i_1 
       (.I0(d1_in_IBUF[1]),
        .I1(LOAD_IBUF),
        .I2(state_0),
        .I3(p_2_in),
        .I4(\d1_reg[1]_i_2_n_0 ),
        .O(\d1_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5A52)) 
    \d1_reg[1]_i_2 
       (.I0(\d1_reg_reg[3]_0 [0]),
        .I1(\d1_reg_reg[3]_0 [3]),
        .I2(\d1_reg_reg[3]_0 [1]),
        .I3(\d1_reg_reg[3]_0 [2]),
        .O(\d1_reg[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \d1_reg[2]_i_1 
       (.I0(d1_in_IBUF[2]),
        .I1(LOAD_IBUF),
        .I2(state_0),
        .I3(p_2_in),
        .I4(\d1_reg[2]_i_2_n_0 ),
        .O(\d1_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \d1_reg[2]_i_2 
       (.I0(\d1_reg_reg[3]_0 [0]),
        .I1(\d1_reg_reg[3]_0 [1]),
        .I2(\d1_reg_reg[3]_0 [2]),
        .O(\d1_reg[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF7F)) 
    \d1_reg[3]_i_1 
       (.I0(eqOp1_in),
        .I1(p_2_in),
        .I2(state_0),
        .I3(LOAD_IBUF),
        .I4(state),
        .O(\d1_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \d1_reg[3]_i_2 
       (.I0(d1_in_IBUF[3]),
        .I1(LOAD_IBUF),
        .I2(state_0),
        .I3(p_2_in),
        .I4(\d1_reg[3]_i_5_n_0 ),
        .O(\d1_reg[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \d1_reg[3]_i_3 
       (.I0(\d100_reg_reg[3]_0 [1]),
        .I1(\d100_reg_reg[3]_0 [2]),
        .I2(\d100_reg_reg[3]_0 [0]),
        .I3(\d100_reg_reg[3]_0 [3]),
        .O(eqOp1_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \d1_reg[3]_i_4 
       (.I0(eqOp0_in),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(p_2_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6CC4)) 
    \d1_reg[3]_i_5 
       (.I0(\d1_reg_reg[3]_0 [0]),
        .I1(\d1_reg_reg[3]_0 [3]),
        .I2(\d1_reg_reg[3]_0 [1]),
        .I3(\d1_reg_reg[3]_0 [2]),
        .O(\d1_reg[3]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d1_reg_reg[0] 
       (.C(CLK),
        .CE(\d1_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\d1_reg[0]_i_1_n_0 ),
        .Q(\d1_reg_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \d1_reg_reg[1] 
       (.C(CLK),
        .CE(\d1_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\d1_reg[1]_i_1_n_0 ),
        .Q(\d1_reg_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \d1_reg_reg[2] 
       (.C(CLK),
        .CE(\d1_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\d1_reg[2]_i_1_n_0 ),
        .Q(\d1_reg_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \d1_reg_reg[3] 
       (.C(CLK),
        .CE(\d1_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\d1_reg[3]_i_2_n_0 ),
        .Q(\d1_reg_reg[3]_0 [3]));
  LUT5 #(
    .INIT(32'hE5F5F5F5)) 
    state_i_1
       (.I0(state),
        .I1(LOAD_IBUF),
        .I2(state_0),
        .I3(p_2_in),
        .I4(eqOp1_in),
        .O(state_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    state_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(state_i_1_n_0),
        .Q(state_0));
endmodule

module three_digit_decimal_counter
   (state_reg_0,
    CLK,
    AR);
  output state_reg_0;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [23:0]count;
  wire [23:0]count_next;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__2_n_4;
  wire plusOp_carry__2_n_5;
  wire plusOp_carry__2_n_6;
  wire plusOp_carry__2_n_7;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__3_n_4;
  wire plusOp_carry__3_n_5;
  wire plusOp_carry__3_n_6;
  wire plusOp_carry__3_n_7;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__4_n_5;
  wire plusOp_carry__4_n_6;
  wire plusOp_carry__4_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire state_i_1__0_n_0;
  wire state_i_2_n_0;
  wire state_i_3_n_0;
  wire state_i_4_n_0;
  wire state_i_5_n_0;
  wire state_reg_0;
  wire [3:2]NLW_plusOp_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__4_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h00000000BFFF0000)) 
    \count[0]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(count[0]),
        .O(count_next[0]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[10]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__1_n_6),
        .O(count_next[10]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[11]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__1_n_5),
        .O(count_next[11]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[12]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__1_n_4),
        .O(count_next[12]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[13]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__2_n_7),
        .O(count_next[13]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[14]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__2_n_6),
        .O(count_next[14]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[15]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__2_n_5),
        .O(count_next[15]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[16]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__2_n_4),
        .O(count_next[16]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[17]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__3_n_7),
        .O(count_next[17]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[18]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__3_n_6),
        .O(count_next[18]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[19]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__3_n_5),
        .O(count_next[19]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[1]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry_n_7),
        .O(count_next[1]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[20]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__3_n_4),
        .O(count_next[20]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[21]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__4_n_7),
        .O(count_next[21]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[22]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__4_n_6),
        .O(count_next[22]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[23]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__4_n_5),
        .O(count_next[23]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[2]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry_n_6),
        .O(count_next[2]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[3]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry_n_5),
        .O(count_next[3]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[4]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry_n_4),
        .O(count_next[4]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[5]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__0_n_7),
        .O(count_next[5]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[6]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__0_n_6),
        .O(count_next[6]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[7]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__0_n_5),
        .O(count_next[7]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[8]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__0_n_4),
        .O(count_next[8]));
  LUT6 #(
    .INIT(64'hBFFF000000000000)) 
    \count[9]_i_1 
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .I5(plusOp_carry__1_n_7),
        .O(count_next[9]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[0]),
        .Q(count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[10]),
        .Q(count[10]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[11]),
        .Q(count[11]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[12]),
        .Q(count[12]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[13]),
        .Q(count[13]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[14]),
        .Q(count[14]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[15]),
        .Q(count[15]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[16]),
        .Q(count[16]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[17]),
        .Q(count[17]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[18]),
        .Q(count[18]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[19]),
        .Q(count[19]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[1]),
        .Q(count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[20]),
        .Q(count[20]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[21]),
        .Q(count[21]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[22]),
        .Q(count[22]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[23]),
        .Q(count[23]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[2]),
        .Q(count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[3]),
        .Q(count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[4]),
        .Q(count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[5]),
        .Q(count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[6]),
        .Q(count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[7]),
        .Q(count[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[8]),
        .Q(count[8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(count_next[9]),
        .Q(count[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .S(count[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S(count[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__1_n_4,plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S(count[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__2_n_4,plusOp_carry__2_n_5,plusOp_carry__2_n_6,plusOp_carry__2_n_7}),
        .S(count[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__3_n_4,plusOp_carry__3_n_5,plusOp_carry__3_n_6,plusOp_carry__3_n_7}),
        .S(count[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({NLW_plusOp_carry__4_CO_UNCONNECTED[3:2],plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__4_O_UNCONNECTED[3],plusOp_carry__4_n_5,plusOp_carry__4_n_6,plusOp_carry__4_n_7}),
        .S({1'b0,count[23:21]}));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    state_i_1__0
       (.I0(state_i_2_n_0),
        .I1(state_i_3_n_0),
        .I2(state_i_4_n_0),
        .I3(state_i_5_n_0),
        .I4(state_reg_0),
        .O(state_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    state_i_2
       (.I0(count[7]),
        .I1(count[23]),
        .I2(count[0]),
        .I3(count[13]),
        .I4(count[8]),
        .I5(count[11]),
        .O(state_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    state_i_3
       (.I0(count[22]),
        .I1(count[18]),
        .I2(count[21]),
        .I3(count[14]),
        .I4(count[16]),
        .I5(count[17]),
        .O(state_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    state_i_4
       (.I0(count[15]),
        .I1(count[19]),
        .I2(count[20]),
        .I3(count[12]),
        .I4(count[9]),
        .I5(count[10]),
        .O(state_i_4_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    state_i_5
       (.I0(count[4]),
        .I1(count[5]),
        .I2(count[6]),
        .I3(count[3]),
        .I4(count[1]),
        .I5(count[2]),
        .O(state_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    state_reg
       (.C(CLK),
        .CE(CLK),
        .CLR(AR),
        .D(state_i_1__0_n_0),
        .Q(state_reg_0));
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
