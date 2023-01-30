module VCLA_64_b4 (in_A, in_B, in_CI, out_S, gG, gP);
  input [3:0] in_A, in_B;
  input in_CI;
  output [3:0] out_S;
  output gG, gP;

  assign nG_0_0 = in_A[0] & in_B[0];
  assign nG_1_1 = in_A[1] & in_B[1];
  assign nG_2_2 = in_A[2] & in_B[2];
  assign nG_3_3 = in_A[3] & in_B[3];
  assign nP_0_0 = in_A[0] ^ in_B[0];
  assign nP_1_1 = in_A[1] ^ in_B[1];
  assign nP_2_2 = in_A[2] ^ in_B[2];
  assign nP_3_3 = in_A[3] ^ in_B[3];

  assign nG_1_0 = nG_1_1 | (nP_1_1 & nG_0_0);
  assign nG_2_0 = nG_2_2 | (nP_2_2 & (nG_1_1 | (nP_1_1 & nG_0_0)));
  assign nG_3_0 = nG_3_3 | (nP_3_3 & (nG_2_2 | (nP_2_2 & (nG_1_1 | (nP_1_1 & nG_0_0)))));
  assign nP_1_0 = nP_1_1 & nP_0_0;
  assign nP_2_0 = nP_2_2 & nP_1_1 & nP_0_0;
  assign nP_3_0 = nP_3_3 & nP_2_2 & nP_1_1 & nP_0_0;

  assign nC_1 = nG_0_0 | (nP_0_0 & in_CI);
  assign nC_2 = nG_1_0 | (nP_1_0 & in_CI);
  assign nC_3 = nG_2_0 | (nP_2_0 & in_CI);

  assign out_S[0] = nP_0_0 ^ in_CI;
  assign out_S[1] = nP_1_1 ^ nC_1;
  assign out_S[2] = nP_2_2 ^ nC_2;
  assign out_S[3] = nP_3_3 ^ nC_3;

  assign gG = nG_3_0;
  assign gP = nP_3_0;
endmodule



module VCLA_64_g4 (gGin, gPin, in_CI, gGout, gPout, out_CO);
  input [3:0] gGin, gPin;
  input in_CI;
  output gGout, gPout;
  output [3:0] out_CO;

  assign nG_0_0 = gGin[0];
  assign nG_1_0 = gGin[1] | (gPin[1] & gGin[0]);
  assign nG_2_0 = gGin[2] | (gPin[2] & (gGin[1] | (gPin[1] & gGin[0])));
  assign nG_3_0 = gGin[3] | (gPin[3] & (gGin[2] | (gPin[2] & (gGin[1] | (gPin[1] & gGin[0])))));
  assign nP_0_0 = gPin[0];
  assign nP_1_0 = gPin[1] & gPin[0];
  assign nP_2_0 = gPin[2] & gPin[1] & gPin[0];
  assign nP_3_0 = gPin[3] & gPin[2] & gPin[1] & gPin[0];

  assign gGout = nG_3_0;
  assign gPout = nP_3_0;
  assign out_CO[0] = nG_0_0 | (nP_0_0 & in_CI);
  assign out_CO[1] = nG_1_0 | (nP_1_0 & in_CI);
  assign out_CO[2] = nG_2_0 | (nP_2_0 & in_CI);
  assign out_CO[3] = nG_3_0 | (nP_3_0 & in_CI);
endmodule



module VCLA_64 (in_A, in_B, in_CI, out_S, out_CO);
  input [63:0] in_A, in_B;
  input in_CI;
  output [63:0] out_S;
  output out_CO;

  assign nC_0 = in_CI;
  VCLA_64_b4 U_lv1_0 (.in_A(in_A[3:0]), .in_B(in_B[3:0]), .in_CI(nC_0), .out_S(out_S[3:0]), .gG(nG_3_0), .gP(nP_3_0));
  VCLA_64_b4 U_lv1_1 (.in_A(in_A[7:4]), .in_B(in_B[7:4]), .in_CI(nC_4), .out_S(out_S[7:4]), .gG(nG_7_4), .gP(nP_7_4));
  VCLA_64_b4 U_lv1_2 (.in_A(in_A[11:8]), .in_B(in_B[11:8]), .in_CI(nC_8), .out_S(out_S[11:8]), .gG(nG_11_8), .gP(nP_11_8));
  VCLA_64_b4 U_lv1_3 (.in_A(in_A[15:12]), .in_B(in_B[15:12]), .in_CI(nC_12), .out_S(out_S[15:12]), .gG(nG_15_12), .gP(nP_15_12));
  VCLA_64_b4 U_lv1_4 (.in_A(in_A[19:16]), .in_B(in_B[19:16]), .in_CI(nC_16), .out_S(out_S[19:16]), .gG(nG_19_16), .gP(nP_19_16));
  VCLA_64_b4 U_lv1_5 (.in_A(in_A[23:20]), .in_B(in_B[23:20]), .in_CI(nC_20), .out_S(out_S[23:20]), .gG(nG_23_20), .gP(nP_23_20));
  VCLA_64_b4 U_lv1_6 (.in_A(in_A[27:24]), .in_B(in_B[27:24]), .in_CI(nC_24), .out_S(out_S[27:24]), .gG(nG_27_24), .gP(nP_27_24));
  VCLA_64_b4 U_lv1_7 (.in_A(in_A[31:28]), .in_B(in_B[31:28]), .in_CI(nC_28), .out_S(out_S[31:28]), .gG(nG_31_28), .gP(nP_31_28));
  VCLA_64_b4 U_lv1_8 (.in_A(in_A[35:32]), .in_B(in_B[35:32]), .in_CI(nC_32), .out_S(out_S[35:32]), .gG(nG_35_32), .gP(nP_35_32));
  VCLA_64_b4 U_lv1_9 (.in_A(in_A[39:36]), .in_B(in_B[39:36]), .in_CI(nC_36), .out_S(out_S[39:36]), .gG(nG_39_36), .gP(nP_39_36));
  VCLA_64_b4 U_lv1_10 (.in_A(in_A[43:40]), .in_B(in_B[43:40]), .in_CI(nC_40), .out_S(out_S[43:40]), .gG(nG_43_40), .gP(nP_43_40));
  VCLA_64_b4 U_lv1_11 (.in_A(in_A[47:44]), .in_B(in_B[47:44]), .in_CI(nC_44), .out_S(out_S[47:44]), .gG(nG_47_44), .gP(nP_47_44));
  VCLA_64_b4 U_lv1_12 (.in_A(in_A[51:48]), .in_B(in_B[51:48]), .in_CI(nC_48), .out_S(out_S[51:48]), .gG(nG_51_48), .gP(nP_51_48));
  VCLA_64_b4 U_lv1_13 (.in_A(in_A[55:52]), .in_B(in_B[55:52]), .in_CI(nC_52), .out_S(out_S[55:52]), .gG(nG_55_52), .gP(nP_55_52));
  VCLA_64_b4 U_lv1_14 (.in_A(in_A[59:56]), .in_B(in_B[59:56]), .in_CI(nC_56), .out_S(out_S[59:56]), .gG(nG_59_56), .gP(nP_59_56));
  VCLA_64_b4 U_lv1_15 (.in_A(in_A[63:60]), .in_B(in_B[63:60]), .in_CI(nC_60), .out_S(out_S[63:60]), .gG(nG_63_60), .gP(nP_63_60));

  VCLA_64_g4 U_lv2_0 (.gGin({nG_15_12, nG_11_8, nG_7_4, nG_3_0}), .gPin({nP_15_12, nP_11_8, nP_7_4, nP_3_0}), .in_CI(nC_0), .gGout(nG_15_0), .gPout(nP_15_0), .out_CO({nC_16_nc, nC_12, nC_8, nC_4}));
  VCLA_64_g4 U_lv2_1 (.gGin({nG_31_28, nG_27_24, nG_23_20, nG_19_16}), .gPin({nP_31_28, nP_27_24, nP_23_20, nP_19_16}), .in_CI(nC_16), .gGout(nG_31_16), .gPout(nP_31_16), .out_CO({nC_32_nc, nC_28, nC_24, nC_20}));
  VCLA_64_g4 U_lv2_2 (.gGin({nG_47_44, nG_43_40, nG_39_36, nG_35_32}), .gPin({nP_47_44, nP_43_40, nP_39_36, nP_35_32}), .in_CI(nC_32), .gGout(nG_47_32), .gPout(nP_47_32), .out_CO({nC_48_nc, nC_44, nC_40, nC_36}));
  VCLA_64_g4 U_lv2_3 (.gGin({nG_63_60, nG_59_56, nG_55_52, nG_51_48}), .gPin({nP_63_60, nP_59_56, nP_55_52, nP_51_48}), .in_CI(nC_48), .gGout(nG_63_48), .gPout(nP_63_48), .out_CO({nC_64_nc, nC_60, nC_56, nC_52}));

  VCLA_64_g4 U_lv3_0 (.gGin({nG_63_48, nG_47_32, nG_31_16, nG_15_0}), .gPin({nP_63_48, nP_47_32, nP_31_16, nP_15_0}), .in_CI(nC_0), .gGout(nG_63_0), .gPout(nP_63_0), .out_CO({nC_64, nC_48, nC_32, nC_16}));

  assign out_CO = nC_64;
endmodule

