module VCLA_128_b2 (in_A, in_B, in_CI, out_S, gG, gP);
  input [1:0] in_A, in_B;
  input in_CI;
  output [1:0] out_S;
  output gG, gP;

  assign nG_0_0 = in_A[0] & in_B[0];
  assign nG_1_1 = in_A[1] & in_B[1];
  assign nP_0_0 = in_A[0] ^ in_B[0];
  assign nP_1_1 = in_A[1] ^ in_B[1];

  assign nG_1_0 = nG_1_1 | (nP_1_1 & nG_0_0);
  assign nP_1_0 = nP_1_1 & nP_0_0;

  assign nC_1 = nG_0_0 | (nP_0_0 & in_CI);

  assign out_S[0] = nP_0_0 ^ in_CI;
  assign out_S[1] = nP_1_1 ^ nC_1;

  assign gG = nG_1_0;
  assign gP = nP_1_0;
endmodule



module VCLA_128_g2 (gGin, gPin, in_CI, gGout, gPout, out_CO);
  input [1:0] gGin, gPin;
  input in_CI;
  output gGout, gPout;
  output [1:0] out_CO;

  assign nG_0_0 = gGin[0];
  assign nG_1_0 = gGin[1] | (gPin[1] & gGin[0]);
  assign nP_0_0 = gPin[0];
  assign nP_1_0 = gPin[1] & gPin[0];

  assign gGout = nG_1_0;
  assign gPout = nP_1_0;
  assign out_CO[0] = nG_0_0 | (nP_0_0 & in_CI);
  assign out_CO[1] = nG_1_0 | (nP_1_0 & in_CI);
endmodule



module VCLA_128 (in_A, in_B, in_CI, out_S, out_CO);
  input [127:0] in_A, in_B;
  input in_CI;
  output [127:0] out_S;
  output out_CO;

  assign nC_0 = in_CI;
  VCLA_128_b2 U_lv1_0 (.in_A(in_A[1:0]), .in_B(in_B[1:0]), .in_CI(nC_0), .out_S(out_S[1:0]), .gG(nG_1_0), .gP(nP_1_0));
  VCLA_128_b2 U_lv1_1 (.in_A(in_A[3:2]), .in_B(in_B[3:2]), .in_CI(nC_2), .out_S(out_S[3:2]), .gG(nG_3_2), .gP(nP_3_2));
  VCLA_128_b2 U_lv1_2 (.in_A(in_A[5:4]), .in_B(in_B[5:4]), .in_CI(nC_4), .out_S(out_S[5:4]), .gG(nG_5_4), .gP(nP_5_4));
  VCLA_128_b2 U_lv1_3 (.in_A(in_A[7:6]), .in_B(in_B[7:6]), .in_CI(nC_6), .out_S(out_S[7:6]), .gG(nG_7_6), .gP(nP_7_6));
  VCLA_128_b2 U_lv1_4 (.in_A(in_A[9:8]), .in_B(in_B[9:8]), .in_CI(nC_8), .out_S(out_S[9:8]), .gG(nG_9_8), .gP(nP_9_8));
  VCLA_128_b2 U_lv1_5 (.in_A(in_A[11:10]), .in_B(in_B[11:10]), .in_CI(nC_10), .out_S(out_S[11:10]), .gG(nG_11_10), .gP(nP_11_10));
  VCLA_128_b2 U_lv1_6 (.in_A(in_A[13:12]), .in_B(in_B[13:12]), .in_CI(nC_12), .out_S(out_S[13:12]), .gG(nG_13_12), .gP(nP_13_12));
  VCLA_128_b2 U_lv1_7 (.in_A(in_A[15:14]), .in_B(in_B[15:14]), .in_CI(nC_14), .out_S(out_S[15:14]), .gG(nG_15_14), .gP(nP_15_14));
  VCLA_128_b2 U_lv1_8 (.in_A(in_A[17:16]), .in_B(in_B[17:16]), .in_CI(nC_16), .out_S(out_S[17:16]), .gG(nG_17_16), .gP(nP_17_16));
  VCLA_128_b2 U_lv1_9 (.in_A(in_A[19:18]), .in_B(in_B[19:18]), .in_CI(nC_18), .out_S(out_S[19:18]), .gG(nG_19_18), .gP(nP_19_18));
  VCLA_128_b2 U_lv1_10 (.in_A(in_A[21:20]), .in_B(in_B[21:20]), .in_CI(nC_20), .out_S(out_S[21:20]), .gG(nG_21_20), .gP(nP_21_20));
  VCLA_128_b2 U_lv1_11 (.in_A(in_A[23:22]), .in_B(in_B[23:22]), .in_CI(nC_22), .out_S(out_S[23:22]), .gG(nG_23_22), .gP(nP_23_22));
  VCLA_128_b2 U_lv1_12 (.in_A(in_A[25:24]), .in_B(in_B[25:24]), .in_CI(nC_24), .out_S(out_S[25:24]), .gG(nG_25_24), .gP(nP_25_24));
  VCLA_128_b2 U_lv1_13 (.in_A(in_A[27:26]), .in_B(in_B[27:26]), .in_CI(nC_26), .out_S(out_S[27:26]), .gG(nG_27_26), .gP(nP_27_26));
  VCLA_128_b2 U_lv1_14 (.in_A(in_A[29:28]), .in_B(in_B[29:28]), .in_CI(nC_28), .out_S(out_S[29:28]), .gG(nG_29_28), .gP(nP_29_28));
  VCLA_128_b2 U_lv1_15 (.in_A(in_A[31:30]), .in_B(in_B[31:30]), .in_CI(nC_30), .out_S(out_S[31:30]), .gG(nG_31_30), .gP(nP_31_30));
  VCLA_128_b2 U_lv1_16 (.in_A(in_A[33:32]), .in_B(in_B[33:32]), .in_CI(nC_32), .out_S(out_S[33:32]), .gG(nG_33_32), .gP(nP_33_32));
  VCLA_128_b2 U_lv1_17 (.in_A(in_A[35:34]), .in_B(in_B[35:34]), .in_CI(nC_34), .out_S(out_S[35:34]), .gG(nG_35_34), .gP(nP_35_34));
  VCLA_128_b2 U_lv1_18 (.in_A(in_A[37:36]), .in_B(in_B[37:36]), .in_CI(nC_36), .out_S(out_S[37:36]), .gG(nG_37_36), .gP(nP_37_36));
  VCLA_128_b2 U_lv1_19 (.in_A(in_A[39:38]), .in_B(in_B[39:38]), .in_CI(nC_38), .out_S(out_S[39:38]), .gG(nG_39_38), .gP(nP_39_38));
  VCLA_128_b2 U_lv1_20 (.in_A(in_A[41:40]), .in_B(in_B[41:40]), .in_CI(nC_40), .out_S(out_S[41:40]), .gG(nG_41_40), .gP(nP_41_40));
  VCLA_128_b2 U_lv1_21 (.in_A(in_A[43:42]), .in_B(in_B[43:42]), .in_CI(nC_42), .out_S(out_S[43:42]), .gG(nG_43_42), .gP(nP_43_42));
  VCLA_128_b2 U_lv1_22 (.in_A(in_A[45:44]), .in_B(in_B[45:44]), .in_CI(nC_44), .out_S(out_S[45:44]), .gG(nG_45_44), .gP(nP_45_44));
  VCLA_128_b2 U_lv1_23 (.in_A(in_A[47:46]), .in_B(in_B[47:46]), .in_CI(nC_46), .out_S(out_S[47:46]), .gG(nG_47_46), .gP(nP_47_46));
  VCLA_128_b2 U_lv1_24 (.in_A(in_A[49:48]), .in_B(in_B[49:48]), .in_CI(nC_48), .out_S(out_S[49:48]), .gG(nG_49_48), .gP(nP_49_48));
  VCLA_128_b2 U_lv1_25 (.in_A(in_A[51:50]), .in_B(in_B[51:50]), .in_CI(nC_50), .out_S(out_S[51:50]), .gG(nG_51_50), .gP(nP_51_50));
  VCLA_128_b2 U_lv1_26 (.in_A(in_A[53:52]), .in_B(in_B[53:52]), .in_CI(nC_52), .out_S(out_S[53:52]), .gG(nG_53_52), .gP(nP_53_52));
  VCLA_128_b2 U_lv1_27 (.in_A(in_A[55:54]), .in_B(in_B[55:54]), .in_CI(nC_54), .out_S(out_S[55:54]), .gG(nG_55_54), .gP(nP_55_54));
  VCLA_128_b2 U_lv1_28 (.in_A(in_A[57:56]), .in_B(in_B[57:56]), .in_CI(nC_56), .out_S(out_S[57:56]), .gG(nG_57_56), .gP(nP_57_56));
  VCLA_128_b2 U_lv1_29 (.in_A(in_A[59:58]), .in_B(in_B[59:58]), .in_CI(nC_58), .out_S(out_S[59:58]), .gG(nG_59_58), .gP(nP_59_58));
  VCLA_128_b2 U_lv1_30 (.in_A(in_A[61:60]), .in_B(in_B[61:60]), .in_CI(nC_60), .out_S(out_S[61:60]), .gG(nG_61_60), .gP(nP_61_60));
  VCLA_128_b2 U_lv1_31 (.in_A(in_A[63:62]), .in_B(in_B[63:62]), .in_CI(nC_62), .out_S(out_S[63:62]), .gG(nG_63_62), .gP(nP_63_62));
  VCLA_128_b2 U_lv1_32 (.in_A(in_A[65:64]), .in_B(in_B[65:64]), .in_CI(nC_64), .out_S(out_S[65:64]), .gG(nG_65_64), .gP(nP_65_64));
  VCLA_128_b2 U_lv1_33 (.in_A(in_A[67:66]), .in_B(in_B[67:66]), .in_CI(nC_66), .out_S(out_S[67:66]), .gG(nG_67_66), .gP(nP_67_66));
  VCLA_128_b2 U_lv1_34 (.in_A(in_A[69:68]), .in_B(in_B[69:68]), .in_CI(nC_68), .out_S(out_S[69:68]), .gG(nG_69_68), .gP(nP_69_68));
  VCLA_128_b2 U_lv1_35 (.in_A(in_A[71:70]), .in_B(in_B[71:70]), .in_CI(nC_70), .out_S(out_S[71:70]), .gG(nG_71_70), .gP(nP_71_70));
  VCLA_128_b2 U_lv1_36 (.in_A(in_A[73:72]), .in_B(in_B[73:72]), .in_CI(nC_72), .out_S(out_S[73:72]), .gG(nG_73_72), .gP(nP_73_72));
  VCLA_128_b2 U_lv1_37 (.in_A(in_A[75:74]), .in_B(in_B[75:74]), .in_CI(nC_74), .out_S(out_S[75:74]), .gG(nG_75_74), .gP(nP_75_74));
  VCLA_128_b2 U_lv1_38 (.in_A(in_A[77:76]), .in_B(in_B[77:76]), .in_CI(nC_76), .out_S(out_S[77:76]), .gG(nG_77_76), .gP(nP_77_76));
  VCLA_128_b2 U_lv1_39 (.in_A(in_A[79:78]), .in_B(in_B[79:78]), .in_CI(nC_78), .out_S(out_S[79:78]), .gG(nG_79_78), .gP(nP_79_78));
  VCLA_128_b2 U_lv1_40 (.in_A(in_A[81:80]), .in_B(in_B[81:80]), .in_CI(nC_80), .out_S(out_S[81:80]), .gG(nG_81_80), .gP(nP_81_80));
  VCLA_128_b2 U_lv1_41 (.in_A(in_A[83:82]), .in_B(in_B[83:82]), .in_CI(nC_82), .out_S(out_S[83:82]), .gG(nG_83_82), .gP(nP_83_82));
  VCLA_128_b2 U_lv1_42 (.in_A(in_A[85:84]), .in_B(in_B[85:84]), .in_CI(nC_84), .out_S(out_S[85:84]), .gG(nG_85_84), .gP(nP_85_84));
  VCLA_128_b2 U_lv1_43 (.in_A(in_A[87:86]), .in_B(in_B[87:86]), .in_CI(nC_86), .out_S(out_S[87:86]), .gG(nG_87_86), .gP(nP_87_86));
  VCLA_128_b2 U_lv1_44 (.in_A(in_A[89:88]), .in_B(in_B[89:88]), .in_CI(nC_88), .out_S(out_S[89:88]), .gG(nG_89_88), .gP(nP_89_88));
  VCLA_128_b2 U_lv1_45 (.in_A(in_A[91:90]), .in_B(in_B[91:90]), .in_CI(nC_90), .out_S(out_S[91:90]), .gG(nG_91_90), .gP(nP_91_90));
  VCLA_128_b2 U_lv1_46 (.in_A(in_A[93:92]), .in_B(in_B[93:92]), .in_CI(nC_92), .out_S(out_S[93:92]), .gG(nG_93_92), .gP(nP_93_92));
  VCLA_128_b2 U_lv1_47 (.in_A(in_A[95:94]), .in_B(in_B[95:94]), .in_CI(nC_94), .out_S(out_S[95:94]), .gG(nG_95_94), .gP(nP_95_94));
  VCLA_128_b2 U_lv1_48 (.in_A(in_A[97:96]), .in_B(in_B[97:96]), .in_CI(nC_96), .out_S(out_S[97:96]), .gG(nG_97_96), .gP(nP_97_96));
  VCLA_128_b2 U_lv1_49 (.in_A(in_A[99:98]), .in_B(in_B[99:98]), .in_CI(nC_98), .out_S(out_S[99:98]), .gG(nG_99_98), .gP(nP_99_98));
  VCLA_128_b2 U_lv1_50 (.in_A(in_A[101:100]), .in_B(in_B[101:100]), .in_CI(nC_100), .out_S(out_S[101:100]), .gG(nG_101_100), .gP(nP_101_100));
  VCLA_128_b2 U_lv1_51 (.in_A(in_A[103:102]), .in_B(in_B[103:102]), .in_CI(nC_102), .out_S(out_S[103:102]), .gG(nG_103_102), .gP(nP_103_102));
  VCLA_128_b2 U_lv1_52 (.in_A(in_A[105:104]), .in_B(in_B[105:104]), .in_CI(nC_104), .out_S(out_S[105:104]), .gG(nG_105_104), .gP(nP_105_104));
  VCLA_128_b2 U_lv1_53 (.in_A(in_A[107:106]), .in_B(in_B[107:106]), .in_CI(nC_106), .out_S(out_S[107:106]), .gG(nG_107_106), .gP(nP_107_106));
  VCLA_128_b2 U_lv1_54 (.in_A(in_A[109:108]), .in_B(in_B[109:108]), .in_CI(nC_108), .out_S(out_S[109:108]), .gG(nG_109_108), .gP(nP_109_108));
  VCLA_128_b2 U_lv1_55 (.in_A(in_A[111:110]), .in_B(in_B[111:110]), .in_CI(nC_110), .out_S(out_S[111:110]), .gG(nG_111_110), .gP(nP_111_110));
  VCLA_128_b2 U_lv1_56 (.in_A(in_A[113:112]), .in_B(in_B[113:112]), .in_CI(nC_112), .out_S(out_S[113:112]), .gG(nG_113_112), .gP(nP_113_112));
  VCLA_128_b2 U_lv1_57 (.in_A(in_A[115:114]), .in_B(in_B[115:114]), .in_CI(nC_114), .out_S(out_S[115:114]), .gG(nG_115_114), .gP(nP_115_114));
  VCLA_128_b2 U_lv1_58 (.in_A(in_A[117:116]), .in_B(in_B[117:116]), .in_CI(nC_116), .out_S(out_S[117:116]), .gG(nG_117_116), .gP(nP_117_116));
  VCLA_128_b2 U_lv1_59 (.in_A(in_A[119:118]), .in_B(in_B[119:118]), .in_CI(nC_118), .out_S(out_S[119:118]), .gG(nG_119_118), .gP(nP_119_118));
  VCLA_128_b2 U_lv1_60 (.in_A(in_A[121:120]), .in_B(in_B[121:120]), .in_CI(nC_120), .out_S(out_S[121:120]), .gG(nG_121_120), .gP(nP_121_120));
  VCLA_128_b2 U_lv1_61 (.in_A(in_A[123:122]), .in_B(in_B[123:122]), .in_CI(nC_122), .out_S(out_S[123:122]), .gG(nG_123_122), .gP(nP_123_122));
  VCLA_128_b2 U_lv1_62 (.in_A(in_A[125:124]), .in_B(in_B[125:124]), .in_CI(nC_124), .out_S(out_S[125:124]), .gG(nG_125_124), .gP(nP_125_124));
  VCLA_128_b2 U_lv1_63 (.in_A(in_A[127:126]), .in_B(in_B[127:126]), .in_CI(nC_126), .out_S(out_S[127:126]), .gG(nG_127_126), .gP(nP_127_126));

  VCLA_128_g2 U_lv2_0 (.gGin({nG_3_2, nG_1_0}), .gPin({nP_3_2, nP_1_0}), .in_CI(nC_0), .gGout(nG_3_0), .gPout(nP_3_0), .out_CO({nC_4_nc, nC_2}));
  VCLA_128_g2 U_lv2_1 (.gGin({nG_7_6, nG_5_4}), .gPin({nP_7_6, nP_5_4}), .in_CI(nC_4), .gGout(nG_7_4), .gPout(nP_7_4), .out_CO({nC_8_nc, nC_6}));
  VCLA_128_g2 U_lv2_2 (.gGin({nG_11_10, nG_9_8}), .gPin({nP_11_10, nP_9_8}), .in_CI(nC_8), .gGout(nG_11_8), .gPout(nP_11_8), .out_CO({nC_12_nc, nC_10}));
  VCLA_128_g2 U_lv2_3 (.gGin({nG_15_14, nG_13_12}), .gPin({nP_15_14, nP_13_12}), .in_CI(nC_12), .gGout(nG_15_12), .gPout(nP_15_12), .out_CO({nC_16_nc, nC_14}));
  VCLA_128_g2 U_lv2_4 (.gGin({nG_19_18, nG_17_16}), .gPin({nP_19_18, nP_17_16}), .in_CI(nC_16), .gGout(nG_19_16), .gPout(nP_19_16), .out_CO({nC_20_nc, nC_18}));
  VCLA_128_g2 U_lv2_5 (.gGin({nG_23_22, nG_21_20}), .gPin({nP_23_22, nP_21_20}), .in_CI(nC_20), .gGout(nG_23_20), .gPout(nP_23_20), .out_CO({nC_24_nc, nC_22}));
  VCLA_128_g2 U_lv2_6 (.gGin({nG_27_26, nG_25_24}), .gPin({nP_27_26, nP_25_24}), .in_CI(nC_24), .gGout(nG_27_24), .gPout(nP_27_24), .out_CO({nC_28_nc, nC_26}));
  VCLA_128_g2 U_lv2_7 (.gGin({nG_31_30, nG_29_28}), .gPin({nP_31_30, nP_29_28}), .in_CI(nC_28), .gGout(nG_31_28), .gPout(nP_31_28), .out_CO({nC_32_nc, nC_30}));
  VCLA_128_g2 U_lv2_8 (.gGin({nG_35_34, nG_33_32}), .gPin({nP_35_34, nP_33_32}), .in_CI(nC_32), .gGout(nG_35_32), .gPout(nP_35_32), .out_CO({nC_36_nc, nC_34}));
  VCLA_128_g2 U_lv2_9 (.gGin({nG_39_38, nG_37_36}), .gPin({nP_39_38, nP_37_36}), .in_CI(nC_36), .gGout(nG_39_36), .gPout(nP_39_36), .out_CO({nC_40_nc, nC_38}));
  VCLA_128_g2 U_lv2_10 (.gGin({nG_43_42, nG_41_40}), .gPin({nP_43_42, nP_41_40}), .in_CI(nC_40), .gGout(nG_43_40), .gPout(nP_43_40), .out_CO({nC_44_nc, nC_42}));
  VCLA_128_g2 U_lv2_11 (.gGin({nG_47_46, nG_45_44}), .gPin({nP_47_46, nP_45_44}), .in_CI(nC_44), .gGout(nG_47_44), .gPout(nP_47_44), .out_CO({nC_48_nc, nC_46}));
  VCLA_128_g2 U_lv2_12 (.gGin({nG_51_50, nG_49_48}), .gPin({nP_51_50, nP_49_48}), .in_CI(nC_48), .gGout(nG_51_48), .gPout(nP_51_48), .out_CO({nC_52_nc, nC_50}));
  VCLA_128_g2 U_lv2_13 (.gGin({nG_55_54, nG_53_52}), .gPin({nP_55_54, nP_53_52}), .in_CI(nC_52), .gGout(nG_55_52), .gPout(nP_55_52), .out_CO({nC_56_nc, nC_54}));
  VCLA_128_g2 U_lv2_14 (.gGin({nG_59_58, nG_57_56}), .gPin({nP_59_58, nP_57_56}), .in_CI(nC_56), .gGout(nG_59_56), .gPout(nP_59_56), .out_CO({nC_60_nc, nC_58}));
  VCLA_128_g2 U_lv2_15 (.gGin({nG_63_62, nG_61_60}), .gPin({nP_63_62, nP_61_60}), .in_CI(nC_60), .gGout(nG_63_60), .gPout(nP_63_60), .out_CO({nC_64_nc, nC_62}));
  VCLA_128_g2 U_lv2_16 (.gGin({nG_67_66, nG_65_64}), .gPin({nP_67_66, nP_65_64}), .in_CI(nC_64), .gGout(nG_67_64), .gPout(nP_67_64), .out_CO({nC_68_nc, nC_66}));
  VCLA_128_g2 U_lv2_17 (.gGin({nG_71_70, nG_69_68}), .gPin({nP_71_70, nP_69_68}), .in_CI(nC_68), .gGout(nG_71_68), .gPout(nP_71_68), .out_CO({nC_72_nc, nC_70}));
  VCLA_128_g2 U_lv2_18 (.gGin({nG_75_74, nG_73_72}), .gPin({nP_75_74, nP_73_72}), .in_CI(nC_72), .gGout(nG_75_72), .gPout(nP_75_72), .out_CO({nC_76_nc, nC_74}));
  VCLA_128_g2 U_lv2_19 (.gGin({nG_79_78, nG_77_76}), .gPin({nP_79_78, nP_77_76}), .in_CI(nC_76), .gGout(nG_79_76), .gPout(nP_79_76), .out_CO({nC_80_nc, nC_78}));
  VCLA_128_g2 U_lv2_20 (.gGin({nG_83_82, nG_81_80}), .gPin({nP_83_82, nP_81_80}), .in_CI(nC_80), .gGout(nG_83_80), .gPout(nP_83_80), .out_CO({nC_84_nc, nC_82}));
  VCLA_128_g2 U_lv2_21 (.gGin({nG_87_86, nG_85_84}), .gPin({nP_87_86, nP_85_84}), .in_CI(nC_84), .gGout(nG_87_84), .gPout(nP_87_84), .out_CO({nC_88_nc, nC_86}));
  VCLA_128_g2 U_lv2_22 (.gGin({nG_91_90, nG_89_88}), .gPin({nP_91_90, nP_89_88}), .in_CI(nC_88), .gGout(nG_91_88), .gPout(nP_91_88), .out_CO({nC_92_nc, nC_90}));
  VCLA_128_g2 U_lv2_23 (.gGin({nG_95_94, nG_93_92}), .gPin({nP_95_94, nP_93_92}), .in_CI(nC_92), .gGout(nG_95_92), .gPout(nP_95_92), .out_CO({nC_96_nc, nC_94}));
  VCLA_128_g2 U_lv2_24 (.gGin({nG_99_98, nG_97_96}), .gPin({nP_99_98, nP_97_96}), .in_CI(nC_96), .gGout(nG_99_96), .gPout(nP_99_96), .out_CO({nC_100_nc, nC_98}));
  VCLA_128_g2 U_lv2_25 (.gGin({nG_103_102, nG_101_100}), .gPin({nP_103_102, nP_101_100}), .in_CI(nC_100), .gGout(nG_103_100), .gPout(nP_103_100), .out_CO({nC_104_nc, nC_102}));
  VCLA_128_g2 U_lv2_26 (.gGin({nG_107_106, nG_105_104}), .gPin({nP_107_106, nP_105_104}), .in_CI(nC_104), .gGout(nG_107_104), .gPout(nP_107_104), .out_CO({nC_108_nc, nC_106}));
  VCLA_128_g2 U_lv2_27 (.gGin({nG_111_110, nG_109_108}), .gPin({nP_111_110, nP_109_108}), .in_CI(nC_108), .gGout(nG_111_108), .gPout(nP_111_108), .out_CO({nC_112_nc, nC_110}));
  VCLA_128_g2 U_lv2_28 (.gGin({nG_115_114, nG_113_112}), .gPin({nP_115_114, nP_113_112}), .in_CI(nC_112), .gGout(nG_115_112), .gPout(nP_115_112), .out_CO({nC_116_nc, nC_114}));
  VCLA_128_g2 U_lv2_29 (.gGin({nG_119_118, nG_117_116}), .gPin({nP_119_118, nP_117_116}), .in_CI(nC_116), .gGout(nG_119_116), .gPout(nP_119_116), .out_CO({nC_120_nc, nC_118}));
  VCLA_128_g2 U_lv2_30 (.gGin({nG_123_122, nG_121_120}), .gPin({nP_123_122, nP_121_120}), .in_CI(nC_120), .gGout(nG_123_120), .gPout(nP_123_120), .out_CO({nC_124_nc, nC_122}));
  VCLA_128_g2 U_lv2_31 (.gGin({nG_127_126, nG_125_124}), .gPin({nP_127_126, nP_125_124}), .in_CI(nC_124), .gGout(nG_127_124), .gPout(nP_127_124), .out_CO({nC_128_nc, nC_126}));

  VCLA_128_g2 U_lv3_0 (.gGin({nG_7_4, nG_3_0}), .gPin({nP_7_4, nP_3_0}), .in_CI(nC_0), .gGout(nG_7_0), .gPout(nP_7_0), .out_CO({nC_8_nc, nC_4}));
  VCLA_128_g2 U_lv3_1 (.gGin({nG_15_12, nG_11_8}), .gPin({nP_15_12, nP_11_8}), .in_CI(nC_8), .gGout(nG_15_8), .gPout(nP_15_8), .out_CO({nC_16_nc, nC_12}));
  VCLA_128_g2 U_lv3_2 (.gGin({nG_23_20, nG_19_16}), .gPin({nP_23_20, nP_19_16}), .in_CI(nC_16), .gGout(nG_23_16), .gPout(nP_23_16), .out_CO({nC_24_nc, nC_20}));
  VCLA_128_g2 U_lv3_3 (.gGin({nG_31_28, nG_27_24}), .gPin({nP_31_28, nP_27_24}), .in_CI(nC_24), .gGout(nG_31_24), .gPout(nP_31_24), .out_CO({nC_32_nc, nC_28}));
  VCLA_128_g2 U_lv3_4 (.gGin({nG_39_36, nG_35_32}), .gPin({nP_39_36, nP_35_32}), .in_CI(nC_32), .gGout(nG_39_32), .gPout(nP_39_32), .out_CO({nC_40_nc, nC_36}));
  VCLA_128_g2 U_lv3_5 (.gGin({nG_47_44, nG_43_40}), .gPin({nP_47_44, nP_43_40}), .in_CI(nC_40), .gGout(nG_47_40), .gPout(nP_47_40), .out_CO({nC_48_nc, nC_44}));
  VCLA_128_g2 U_lv3_6 (.gGin({nG_55_52, nG_51_48}), .gPin({nP_55_52, nP_51_48}), .in_CI(nC_48), .gGout(nG_55_48), .gPout(nP_55_48), .out_CO({nC_56_nc, nC_52}));
  VCLA_128_g2 U_lv3_7 (.gGin({nG_63_60, nG_59_56}), .gPin({nP_63_60, nP_59_56}), .in_CI(nC_56), .gGout(nG_63_56), .gPout(nP_63_56), .out_CO({nC_64_nc, nC_60}));
  VCLA_128_g2 U_lv3_8 (.gGin({nG_71_68, nG_67_64}), .gPin({nP_71_68, nP_67_64}), .in_CI(nC_64), .gGout(nG_71_64), .gPout(nP_71_64), .out_CO({nC_72_nc, nC_68}));
  VCLA_128_g2 U_lv3_9 (.gGin({nG_79_76, nG_75_72}), .gPin({nP_79_76, nP_75_72}), .in_CI(nC_72), .gGout(nG_79_72), .gPout(nP_79_72), .out_CO({nC_80_nc, nC_76}));
  VCLA_128_g2 U_lv3_10 (.gGin({nG_87_84, nG_83_80}), .gPin({nP_87_84, nP_83_80}), .in_CI(nC_80), .gGout(nG_87_80), .gPout(nP_87_80), .out_CO({nC_88_nc, nC_84}));
  VCLA_128_g2 U_lv3_11 (.gGin({nG_95_92, nG_91_88}), .gPin({nP_95_92, nP_91_88}), .in_CI(nC_88), .gGout(nG_95_88), .gPout(nP_95_88), .out_CO({nC_96_nc, nC_92}));
  VCLA_128_g2 U_lv3_12 (.gGin({nG_103_100, nG_99_96}), .gPin({nP_103_100, nP_99_96}), .in_CI(nC_96), .gGout(nG_103_96), .gPout(nP_103_96), .out_CO({nC_104_nc, nC_100}));
  VCLA_128_g2 U_lv3_13 (.gGin({nG_111_108, nG_107_104}), .gPin({nP_111_108, nP_107_104}), .in_CI(nC_104), .gGout(nG_111_104), .gPout(nP_111_104), .out_CO({nC_112_nc, nC_108}));
  VCLA_128_g2 U_lv3_14 (.gGin({nG_119_116, nG_115_112}), .gPin({nP_119_116, nP_115_112}), .in_CI(nC_112), .gGout(nG_119_112), .gPout(nP_119_112), .out_CO({nC_120_nc, nC_116}));
  VCLA_128_g2 U_lv3_15 (.gGin({nG_127_124, nG_123_120}), .gPin({nP_127_124, nP_123_120}), .in_CI(nC_120), .gGout(nG_127_120), .gPout(nP_127_120), .out_CO({nC_128_nc, nC_124}));

  VCLA_128_g2 U_lv4_0 (.gGin({nG_15_8, nG_7_0}), .gPin({nP_15_8, nP_7_0}), .in_CI(nC_0), .gGout(nG_15_0), .gPout(nP_15_0), .out_CO({nC_16_nc, nC_8}));
  VCLA_128_g2 U_lv4_1 (.gGin({nG_31_24, nG_23_16}), .gPin({nP_31_24, nP_23_16}), .in_CI(nC_16), .gGout(nG_31_16), .gPout(nP_31_16), .out_CO({nC_32_nc, nC_24}));
  VCLA_128_g2 U_lv4_2 (.gGin({nG_47_40, nG_39_32}), .gPin({nP_47_40, nP_39_32}), .in_CI(nC_32), .gGout(nG_47_32), .gPout(nP_47_32), .out_CO({nC_48_nc, nC_40}));
  VCLA_128_g2 U_lv4_3 (.gGin({nG_63_56, nG_55_48}), .gPin({nP_63_56, nP_55_48}), .in_CI(nC_48), .gGout(nG_63_48), .gPout(nP_63_48), .out_CO({nC_64_nc, nC_56}));
  VCLA_128_g2 U_lv4_4 (.gGin({nG_79_72, nG_71_64}), .gPin({nP_79_72, nP_71_64}), .in_CI(nC_64), .gGout(nG_79_64), .gPout(nP_79_64), .out_CO({nC_80_nc, nC_72}));
  VCLA_128_g2 U_lv4_5 (.gGin({nG_95_88, nG_87_80}), .gPin({nP_95_88, nP_87_80}), .in_CI(nC_80), .gGout(nG_95_80), .gPout(nP_95_80), .out_CO({nC_96_nc, nC_88}));
  VCLA_128_g2 U_lv4_6 (.gGin({nG_111_104, nG_103_96}), .gPin({nP_111_104, nP_103_96}), .in_CI(nC_96), .gGout(nG_111_96), .gPout(nP_111_96), .out_CO({nC_112_nc, nC_104}));
  VCLA_128_g2 U_lv4_7 (.gGin({nG_127_120, nG_119_112}), .gPin({nP_127_120, nP_119_112}), .in_CI(nC_112), .gGout(nG_127_112), .gPout(nP_127_112), .out_CO({nC_128_nc, nC_120}));

  VCLA_128_g2 U_lv5_0 (.gGin({nG_31_16, nG_15_0}), .gPin({nP_31_16, nP_15_0}), .in_CI(nC_0), .gGout(nG_31_0), .gPout(nP_31_0), .out_CO({nC_32_nc, nC_16}));
  VCLA_128_g2 U_lv5_1 (.gGin({nG_63_48, nG_47_32}), .gPin({nP_63_48, nP_47_32}), .in_CI(nC_32), .gGout(nG_63_32), .gPout(nP_63_32), .out_CO({nC_64_nc, nC_48}));
  VCLA_128_g2 U_lv5_2 (.gGin({nG_95_80, nG_79_64}), .gPin({nP_95_80, nP_79_64}), .in_CI(nC_64), .gGout(nG_95_64), .gPout(nP_95_64), .out_CO({nC_96_nc, nC_80}));
  VCLA_128_g2 U_lv5_3 (.gGin({nG_127_112, nG_111_96}), .gPin({nP_127_112, nP_111_96}), .in_CI(nC_96), .gGout(nG_127_96), .gPout(nP_127_96), .out_CO({nC_128_nc, nC_112}));

  VCLA_128_g2 U_lv6_0 (.gGin({nG_63_32, nG_31_0}), .gPin({nP_63_32, nP_31_0}), .in_CI(nC_0), .gGout(nG_63_0), .gPout(nP_63_0), .out_CO({nC_64_nc, nC_32}));
  VCLA_128_g2 U_lv6_1 (.gGin({nG_127_96, nG_95_64}), .gPin({nP_127_96, nP_95_64}), .in_CI(nC_64), .gGout(nG_127_64), .gPout(nP_127_64), .out_CO({nC_128_nc, nC_96}));

  VCLA_128_g2 U_lv7_0 (.gGin({nG_127_64, nG_63_0}), .gPin({nP_127_64, nP_63_0}), .in_CI(nC_0), .gGout(nG_127_0), .gPout(nP_127_0), .out_CO({nC_128, nC_64}));

  assign out_CO = nC_128;
endmodule

