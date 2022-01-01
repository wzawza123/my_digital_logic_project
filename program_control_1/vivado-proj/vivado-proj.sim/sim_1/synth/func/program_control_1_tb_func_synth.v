// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Fri Dec 31 16:51:25 2021
// Host        : DESKTOP-JNETMH0 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/wza/vivado_program_files/project_for_digital_logic/program_control_1/vivado-proj/vivado-proj.sim/sim_1/synth/func/program_control_1_tb_func_synth.v
// Design      : program_control_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* delay_time = "1000" *) (* state_change = "2'b10" *) (* state_rst = "2'b00" *) 
(* state_wait = "2'b01" *) 
(* NotValidForBitStream *)
module program_control_1
   (i_CLK,
    i_RST,
    o_CTR);
  input i_CLK;
  input i_RST;
  output o_CTR;

  wire clk_slow;
  wire [1:0]current_state;
  wire \current_state_reg[0]_C_n_0 ;
  wire \current_state_reg[0]_LDC_n_0 ;
  wire \current_state_reg[0]_P_n_0 ;
  wire \current_state_reg[1]_C_n_0 ;
  wire \current_state_reg[1]_LDC_n_0 ;
  wire \current_state_reg[1]_P_n_0 ;
  wire i_CLK;
  wire i_CLK_IBUF;
  wire i_CLK_IBUF_BUFG;
  wire i_RST;
  wire i_RST_IBUF;
  wire inst_n_1;
  wire inst_n_2;
  wire inst_n_3;
  wire inst_n_4;
  wire o_CTR;
  wire o_CTR_OBUF;
  wire o_CTR_reg_i_1_n_0;
  wire o_CTR_reg_i_2_n_0;

  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[0]_C_i_1 
       (.I0(\current_state_reg[0]_P_n_0 ),
        .I1(\current_state_reg[0]_LDC_n_0 ),
        .I2(\current_state_reg[0]_C_n_0 ),
        .O(current_state[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_state[1]_C_i_1 
       (.I0(\current_state_reg[1]_P_n_0 ),
        .I1(\current_state_reg[1]_LDC_n_0 ),
        .I2(\current_state_reg[1]_C_n_0 ),
        .O(current_state[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \current_state_reg[0]_C 
       (.C(clk_slow),
        .CE(1'b1),
        .CLR(inst_n_1),
        .D(current_state[0]),
        .Q(\current_state_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \current_state_reg[0]_LDC 
       (.CLR(inst_n_1),
        .D(1'b1),
        .G(inst_n_2),
        .GE(1'b1),
        .Q(\current_state_reg[0]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \current_state_reg[0]_P 
       (.C(clk_slow),
        .CE(1'b1),
        .D(current_state[0]),
        .PRE(inst_n_2),
        .Q(\current_state_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \current_state_reg[1]_C 
       (.C(clk_slow),
        .CE(1'b1),
        .CLR(inst_n_3),
        .D(current_state[1]),
        .Q(\current_state_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \current_state_reg[1]_LDC 
       (.CLR(inst_n_3),
        .D(1'b1),
        .G(inst_n_4),
        .GE(1'b1),
        .Q(\current_state_reg[1]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \current_state_reg[1]_P 
       (.C(clk_slow),
        .CE(1'b1),
        .D(current_state[1]),
        .PRE(inst_n_4),
        .Q(\current_state_reg[1]_P_n_0 ));
  BUFG i_CLK_IBUF_BUFG_inst
       (.I(i_CLK_IBUF),
        .O(i_CLK_IBUF_BUFG));
  IBUF i_CLK_IBUF_inst
       (.I(i_CLK),
        .O(i_CLK_IBUF));
  IBUF i_RST_IBUF_inst
       (.I(i_RST),
        .O(i_RST_IBUF));
  time_divider inst
       (.clk_slow(clk_slow),
        .current_state(current_state[0]),
        .\current_state_reg[0]_C (inst_n_1),
        .\current_state_reg[0]_P (inst_n_2),
        .\current_state_reg[1]_C (inst_n_3),
        .\current_state_reg[1]_C_0 (\current_state_reg[1]_C_n_0 ),
        .\current_state_reg[1]_P (inst_n_4),
        .\current_state_reg[1]_P_0 (\current_state_reg[1]_P_n_0 ),
        .i_CLK_IBUF_BUFG(i_CLK_IBUF_BUFG),
        .i_RST_IBUF(i_RST_IBUF),
        .o_CLK_reg_0(\current_state_reg[1]_LDC_n_0 ));
  OBUF o_CTR_OBUF_inst
       (.I(o_CTR_OBUF),
        .O(o_CTR));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    o_CTR_reg
       (.CLR(i_RST_IBUF),
        .D(o_CTR_reg_i_1_n_0),
        .G(o_CTR_reg_i_2_n_0),
        .GE(1'b1),
        .Q(o_CTR_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    o_CTR_reg_i_1
       (.I0(o_CTR_OBUF),
        .O(o_CTR_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    o_CTR_reg_i_2
       (.I0(\current_state_reg[1]_C_n_0 ),
        .I1(\current_state_reg[1]_LDC_n_0 ),
        .I2(\current_state_reg[1]_P_n_0 ),
        .I3(\current_state_reg[0]_C_n_0 ),
        .I4(\current_state_reg[0]_LDC_n_0 ),
        .I5(\current_state_reg[0]_P_n_0 ),
        .O(o_CTR_reg_i_2_n_0));
endmodule

module time_divider
   (clk_slow,
    \current_state_reg[0]_C ,
    \current_state_reg[0]_P ,
    \current_state_reg[1]_C ,
    \current_state_reg[1]_P ,
    i_CLK_IBUF_BUFG,
    \current_state_reg[1]_C_0 ,
    o_CLK_reg_0,
    \current_state_reg[1]_P_0 ,
    current_state,
    i_RST_IBUF);
  output clk_slow;
  output \current_state_reg[0]_C ;
  output \current_state_reg[0]_P ;
  output \current_state_reg[1]_C ;
  output \current_state_reg[1]_P ;
  input i_CLK_IBUF_BUFG;
  input \current_state_reg[1]_C_0 ;
  input o_CLK_reg_0;
  input \current_state_reg[1]_P_0 ;
  input [0:0]current_state;
  input i_RST_IBUF;

  wire c;
  wire c0_carry__0_n_0;
  wire c0_carry__0_n_1;
  wire c0_carry__0_n_2;
  wire c0_carry__0_n_3;
  wire c0_carry__0_n_4;
  wire c0_carry__0_n_5;
  wire c0_carry__0_n_6;
  wire c0_carry__0_n_7;
  wire c0_carry__1_n_0;
  wire c0_carry__1_n_1;
  wire c0_carry__1_n_2;
  wire c0_carry__1_n_3;
  wire c0_carry__1_n_4;
  wire c0_carry__1_n_5;
  wire c0_carry__1_n_6;
  wire c0_carry__1_n_7;
  wire c0_carry__2_n_0;
  wire c0_carry__2_n_1;
  wire c0_carry__2_n_2;
  wire c0_carry__2_n_3;
  wire c0_carry__2_n_4;
  wire c0_carry__2_n_5;
  wire c0_carry__2_n_6;
  wire c0_carry__2_n_7;
  wire c0_carry__3_n_0;
  wire c0_carry__3_n_1;
  wire c0_carry__3_n_2;
  wire c0_carry__3_n_3;
  wire c0_carry__3_n_4;
  wire c0_carry__3_n_5;
  wire c0_carry__3_n_6;
  wire c0_carry__3_n_7;
  wire c0_carry__4_n_0;
  wire c0_carry__4_n_1;
  wire c0_carry__4_n_2;
  wire c0_carry__4_n_3;
  wire c0_carry__4_n_4;
  wire c0_carry__4_n_5;
  wire c0_carry__4_n_6;
  wire c0_carry__4_n_7;
  wire c0_carry__5_n_0;
  wire c0_carry__5_n_1;
  wire c0_carry__5_n_2;
  wire c0_carry__5_n_3;
  wire c0_carry__5_n_4;
  wire c0_carry__5_n_5;
  wire c0_carry__5_n_6;
  wire c0_carry__5_n_7;
  wire c0_carry__6_n_2;
  wire c0_carry__6_n_3;
  wire c0_carry__6_n_5;
  wire c0_carry__6_n_6;
  wire c0_carry__6_n_7;
  wire c0_carry_n_0;
  wire c0_carry_n_1;
  wire c0_carry_n_2;
  wire c0_carry_n_3;
  wire c0_carry_n_4;
  wire c0_carry_n_5;
  wire c0_carry_n_6;
  wire c0_carry_n_7;
  wire \c[0]_i_1_n_0 ;
  wire \c_reg_n_0_[0] ;
  wire \c_reg_n_0_[10] ;
  wire \c_reg_n_0_[11] ;
  wire \c_reg_n_0_[12] ;
  wire \c_reg_n_0_[13] ;
  wire \c_reg_n_0_[14] ;
  wire \c_reg_n_0_[15] ;
  wire \c_reg_n_0_[16] ;
  wire \c_reg_n_0_[17] ;
  wire \c_reg_n_0_[18] ;
  wire \c_reg_n_0_[19] ;
  wire \c_reg_n_0_[1] ;
  wire \c_reg_n_0_[20] ;
  wire \c_reg_n_0_[21] ;
  wire \c_reg_n_0_[22] ;
  wire \c_reg_n_0_[23] ;
  wire \c_reg_n_0_[24] ;
  wire \c_reg_n_0_[25] ;
  wire \c_reg_n_0_[26] ;
  wire \c_reg_n_0_[27] ;
  wire \c_reg_n_0_[28] ;
  wire \c_reg_n_0_[29] ;
  wire \c_reg_n_0_[2] ;
  wire \c_reg_n_0_[30] ;
  wire \c_reg_n_0_[31] ;
  wire \c_reg_n_0_[3] ;
  wire \c_reg_n_0_[4] ;
  wire \c_reg_n_0_[5] ;
  wire \c_reg_n_0_[6] ;
  wire \c_reg_n_0_[7] ;
  wire \c_reg_n_0_[8] ;
  wire \c_reg_n_0_[9] ;
  wire clk_slow;
  wire [0:0]current_state;
  wire \current_state_reg[0]_C ;
  wire \current_state_reg[0]_P ;
  wire \current_state_reg[1]_C ;
  wire \current_state_reg[1]_C_0 ;
  wire \current_state_reg[1]_P ;
  wire \current_state_reg[1]_P_0 ;
  wire i_CLK_IBUF_BUFG;
  wire i_RST_IBUF;
  wire o_CLK;
  wire o_CLK_i_2_n_0;
  wire o_CLK_i_3_n_0;
  wire o_CLK_i_4_n_0;
  wire o_CLK_i_5_n_0;
  wire o_CLK_i_6_n_0;
  wire o_CLK_i_7_n_0;
  wire o_CLK_i_8_n_0;
  wire o_CLK_i_9_n_0;
  wire o_CLK_reg_0;
  wire [3:2]NLW_c0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_c0_carry__6_O_UNCONNECTED;

  CARRY4 c0_carry
       (.CI(1'b0),
        .CO({c0_carry_n_0,c0_carry_n_1,c0_carry_n_2,c0_carry_n_3}),
        .CYINIT(\c_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({c0_carry_n_4,c0_carry_n_5,c0_carry_n_6,c0_carry_n_7}),
        .S({\c_reg_n_0_[4] ,\c_reg_n_0_[3] ,\c_reg_n_0_[2] ,\c_reg_n_0_[1] }));
  CARRY4 c0_carry__0
       (.CI(c0_carry_n_0),
        .CO({c0_carry__0_n_0,c0_carry__0_n_1,c0_carry__0_n_2,c0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({c0_carry__0_n_4,c0_carry__0_n_5,c0_carry__0_n_6,c0_carry__0_n_7}),
        .S({\c_reg_n_0_[8] ,\c_reg_n_0_[7] ,\c_reg_n_0_[6] ,\c_reg_n_0_[5] }));
  CARRY4 c0_carry__1
       (.CI(c0_carry__0_n_0),
        .CO({c0_carry__1_n_0,c0_carry__1_n_1,c0_carry__1_n_2,c0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({c0_carry__1_n_4,c0_carry__1_n_5,c0_carry__1_n_6,c0_carry__1_n_7}),
        .S({\c_reg_n_0_[12] ,\c_reg_n_0_[11] ,\c_reg_n_0_[10] ,\c_reg_n_0_[9] }));
  CARRY4 c0_carry__2
       (.CI(c0_carry__1_n_0),
        .CO({c0_carry__2_n_0,c0_carry__2_n_1,c0_carry__2_n_2,c0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({c0_carry__2_n_4,c0_carry__2_n_5,c0_carry__2_n_6,c0_carry__2_n_7}),
        .S({\c_reg_n_0_[16] ,\c_reg_n_0_[15] ,\c_reg_n_0_[14] ,\c_reg_n_0_[13] }));
  CARRY4 c0_carry__3
       (.CI(c0_carry__2_n_0),
        .CO({c0_carry__3_n_0,c0_carry__3_n_1,c0_carry__3_n_2,c0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({c0_carry__3_n_4,c0_carry__3_n_5,c0_carry__3_n_6,c0_carry__3_n_7}),
        .S({\c_reg_n_0_[20] ,\c_reg_n_0_[19] ,\c_reg_n_0_[18] ,\c_reg_n_0_[17] }));
  CARRY4 c0_carry__4
       (.CI(c0_carry__3_n_0),
        .CO({c0_carry__4_n_0,c0_carry__4_n_1,c0_carry__4_n_2,c0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({c0_carry__4_n_4,c0_carry__4_n_5,c0_carry__4_n_6,c0_carry__4_n_7}),
        .S({\c_reg_n_0_[24] ,\c_reg_n_0_[23] ,\c_reg_n_0_[22] ,\c_reg_n_0_[21] }));
  CARRY4 c0_carry__5
       (.CI(c0_carry__4_n_0),
        .CO({c0_carry__5_n_0,c0_carry__5_n_1,c0_carry__5_n_2,c0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({c0_carry__5_n_4,c0_carry__5_n_5,c0_carry__5_n_6,c0_carry__5_n_7}),
        .S({\c_reg_n_0_[28] ,\c_reg_n_0_[27] ,\c_reg_n_0_[26] ,\c_reg_n_0_[25] }));
  CARRY4 c0_carry__6
       (.CI(c0_carry__5_n_0),
        .CO({NLW_c0_carry__6_CO_UNCONNECTED[3:2],c0_carry__6_n_2,c0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_c0_carry__6_O_UNCONNECTED[3],c0_carry__6_n_5,c0_carry__6_n_6,c0_carry__6_n_7}),
        .S({1'b0,\c_reg_n_0_[31] ,\c_reg_n_0_[30] ,\c_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \c[0]_i_1 
       (.I0(\c_reg_n_0_[0] ),
        .O(\c[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \c[31]_i_1 
       (.I0(o_CLK_i_2_n_0),
        .I1(o_CLK_i_3_n_0),
        .I2(o_CLK_i_4_n_0),
        .I3(o_CLK_i_5_n_0),
        .O(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[0] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\c[0]_i_1_n_0 ),
        .Q(\c_reg_n_0_[0] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[10] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__1_n_6),
        .Q(\c_reg_n_0_[10] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[11] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__1_n_5),
        .Q(\c_reg_n_0_[11] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[12] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__1_n_4),
        .Q(\c_reg_n_0_[12] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[13] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__2_n_7),
        .Q(\c_reg_n_0_[13] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[14] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__2_n_6),
        .Q(\c_reg_n_0_[14] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[15] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__2_n_5),
        .Q(\c_reg_n_0_[15] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[16] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__2_n_4),
        .Q(\c_reg_n_0_[16] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[17] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__3_n_7),
        .Q(\c_reg_n_0_[17] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[18] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__3_n_6),
        .Q(\c_reg_n_0_[18] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[19] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__3_n_5),
        .Q(\c_reg_n_0_[19] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[1] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry_n_7),
        .Q(\c_reg_n_0_[1] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[20] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__3_n_4),
        .Q(\c_reg_n_0_[20] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[21] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__4_n_7),
        .Q(\c_reg_n_0_[21] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[22] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__4_n_6),
        .Q(\c_reg_n_0_[22] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[23] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__4_n_5),
        .Q(\c_reg_n_0_[23] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[24] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__4_n_4),
        .Q(\c_reg_n_0_[24] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[25] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__5_n_7),
        .Q(\c_reg_n_0_[25] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[26] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__5_n_6),
        .Q(\c_reg_n_0_[26] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[27] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__5_n_5),
        .Q(\c_reg_n_0_[27] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[28] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__5_n_4),
        .Q(\c_reg_n_0_[28] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[29] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__6_n_7),
        .Q(\c_reg_n_0_[29] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[2] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry_n_6),
        .Q(\c_reg_n_0_[2] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[30] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__6_n_6),
        .Q(\c_reg_n_0_[30] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[31] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__6_n_5),
        .Q(\c_reg_n_0_[31] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[3] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry_n_5),
        .Q(\c_reg_n_0_[3] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[4] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry_n_4),
        .Q(\c_reg_n_0_[4] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[5] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__0_n_7),
        .Q(\c_reg_n_0_[5] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[6] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__0_n_6),
        .Q(\c_reg_n_0_[6] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[7] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__0_n_5),
        .Q(\c_reg_n_0_[7] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[8] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__0_n_4),
        .Q(\c_reg_n_0_[8] ),
        .R(c));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[9] 
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(c0_carry__1_n_7),
        .Q(\c_reg_n_0_[9] ),
        .R(c));
  LUT6 #(
    .INIT(64'h0000000000022202)) 
    \current_state_reg[0]_LDC_i_1 
       (.I0(clk_slow),
        .I1(i_RST_IBUF),
        .I2(\current_state_reg[1]_C_0 ),
        .I3(o_CLK_reg_0),
        .I4(\current_state_reg[1]_P_0 ),
        .I5(current_state),
        .O(\current_state_reg[0]_P ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE20000)) 
    \current_state_reg[0]_LDC_i_2 
       (.I0(\current_state_reg[1]_C_0 ),
        .I1(o_CLK_reg_0),
        .I2(\current_state_reg[1]_P_0 ),
        .I3(current_state),
        .I4(clk_slow),
        .I5(i_RST_IBUF),
        .O(\current_state_reg[0]_C ));
  LUT6 #(
    .INIT(64'h0000000808080008)) 
    \current_state_reg[1]_LDC_i_1 
       (.I0(clk_slow),
        .I1(current_state),
        .I2(i_RST_IBUF),
        .I3(\current_state_reg[1]_C_0 ),
        .I4(o_CLK_reg_0),
        .I5(\current_state_reg[1]_P_0 ),
        .O(\current_state_reg[1]_P ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFD5D0000)) 
    \current_state_reg[1]_LDC_i_2 
       (.I0(current_state),
        .I1(\current_state_reg[1]_C_0 ),
        .I2(o_CLK_reg_0),
        .I3(\current_state_reg[1]_P_0 ),
        .I4(clk_slow),
        .I5(i_RST_IBUF),
        .O(\current_state_reg[1]_C ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    o_CLK_i_1
       (.I0(o_CLK_i_2_n_0),
        .I1(o_CLK_i_3_n_0),
        .I2(o_CLK_i_4_n_0),
        .I3(o_CLK_i_5_n_0),
        .I4(clk_slow),
        .O(o_CLK));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    o_CLK_i_2
       (.I0(c0_carry__3_n_5),
        .I1(c0_carry__3_n_4),
        .I2(c0_carry__3_n_7),
        .I3(c0_carry__3_n_6),
        .I4(o_CLK_i_6_n_0),
        .O(o_CLK_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_CLK_i_3
       (.I0(c0_carry__5_n_5),
        .I1(c0_carry__5_n_4),
        .I2(c0_carry__5_n_7),
        .I3(c0_carry__5_n_6),
        .I4(o_CLK_i_7_n_0),
        .O(o_CLK_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_CLK_i_4
       (.I0(c0_carry_n_5),
        .I1(c0_carry_n_4),
        .I2(c0_carry_n_7),
        .I3(c0_carry_n_6),
        .I4(o_CLK_i_8_n_0),
        .O(o_CLK_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_CLK_i_5
       (.I0(c0_carry__1_n_5),
        .I1(c0_carry__1_n_4),
        .I2(c0_carry__1_n_7),
        .I3(c0_carry__1_n_6),
        .I4(o_CLK_i_9_n_0),
        .O(o_CLK_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_CLK_i_6
       (.I0(c0_carry__4_n_6),
        .I1(c0_carry__4_n_7),
        .I2(c0_carry__4_n_4),
        .I3(c0_carry__4_n_5),
        .O(o_CLK_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    o_CLK_i_7
       (.I0(c0_carry__6_n_6),
        .I1(c0_carry__6_n_7),
        .I2(\c_reg_n_0_[0] ),
        .I3(c0_carry__6_n_5),
        .O(o_CLK_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    o_CLK_i_8
       (.I0(c0_carry__0_n_7),
        .I1(c0_carry__0_n_6),
        .I2(c0_carry__0_n_4),
        .I3(c0_carry__0_n_5),
        .O(o_CLK_i_8_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    o_CLK_i_9
       (.I0(c0_carry__2_n_7),
        .I1(c0_carry__2_n_6),
        .I2(c0_carry__2_n_4),
        .I3(c0_carry__2_n_5),
        .O(o_CLK_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_CLK_reg
       (.C(i_CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(o_CLK),
        .Q(clk_slow),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
