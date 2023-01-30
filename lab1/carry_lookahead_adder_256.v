module VCLA_256_b4 (in_A, in_B, in_CI, out_S, gG, gP);
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



module VCLA_256_g4 (gGin, gPin, in_CI, gGout, gPout, out_CO);
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



module VCLA_256 (in_A, in_B, in_CI, out_S, out_CO);
  input [255:0] in_A, in_B;
  input in_CI;
  output [255:0] out_S;
  output out_CO;

  assign nC_0 = in_CI;
  VCLA_256_b4 U_lv1_0 (.in_A(in_A[3:0]), .in_B(in_B[3:0]), .in_CI(nC_0), .out_S(out_S[3:0]), .gG(nG_3_0), .gP(nP_3_0));
  VCLA_256_b4 U_lv1_1 (.in_A(in_A[7:4]), .in_B(in_B[7:4]), .in_CI(nC_4), .out_S(out_S[7:4]), .gG(nG_7_4), .gP(nP_7_4));
  VCLA_256_b4 U_lv1_2 (.in_A(in_A[11:8]), .in_B(in_B[11:8]), .in_CI(nC_8), .out_S(out_S[11:8]), .gG(nG_11_8), .gP(nP_11_8));
  VCLA_256_b4 U_lv1_3 (.in_A(in_A[15:12]), .in_B(in_B[15:12]), .in_CI(nC_12), .out_S(out_S[15:12]), .gG(nG_15_12), .gP(nP_15_12));
  VCLA_256_b4 U_lv1_4 (.in_A(in_A[19:16]), .in_B(in_B[19:16]), .in_CI(nC_16), .out_S(out_S[19:16]), .gG(nG_19_16), .gP(nP_19_16));
  VCLA_256_b4 U_lv1_5 (.in_A(in_A[23:20]), .in_B(in_B[23:20]), .in_CI(nC_20), .out_S(out_S[23:20]), .gG(nG_23_20), .gP(nP_23_20));
  VCLA_256_b4 U_lv1_6 (.in_A(in_A[27:24]), .in_B(in_B[27:24]), .in_CI(nC_24), .out_S(out_S[27:24]), .gG(nG_27_24), .gP(nP_27_24));
  VCLA_256_b4 U_lv1_7 (.in_A(in_A[31:28]), .in_B(in_B[31:28]), .in_CI(nC_28), .out_S(out_S[31:28]), .gG(nG_31_28), .gP(nP_31_28));
  VCLA_256_b4 U_lv1_8 (.in_A(in_A[35:32]), .in_B(in_B[35:32]), .in_CI(nC_32), .out_S(out_S[35:32]), .gG(nG_35_32), .gP(nP_35_32));
  VCLA_256_b4 U_lv1_9 (.in_A(in_A[39:36]), .in_B(in_B[39:36]), .in_CI(nC_36), .out_S(out_S[39:36]), .gG(nG_39_36), .gP(nP_39_36));
  VCLA_256_b4 U_lv1_10 (.in_A(in_A[43:40]), .in_B(in_B[43:40]), .in_CI(nC_40), .out_S(out_S[43:40]), .gG(nG_43_40), .gP(nP_43_40));
  VCLA_256_b4 U_lv1_11 (.in_A(in_A[47:44]), .in_B(in_B[47:44]), .in_CI(nC_44), .out_S(out_S[47:44]), .gG(nG_47_44), .gP(nP_47_44));
  VCLA_256_b4 U_lv1_12 (.in_A(in_A[51:48]), .in_B(in_B[51:48]), .in_CI(nC_48), .out_S(out_S[51:48]), .gG(nG_51_48), .gP(nP_51_48));
  VCLA_256_b4 U_lv1_13 (.in_A(in_A[55:52]), .in_B(in_B[55:52]), .in_CI(nC_52), .out_S(out_S[55:52]), .gG(nG_55_52), .gP(nP_55_52));
  VCLA_256_b4 U_lv1_14 (.in_A(in_A[59:56]), .in_B(in_B[59:56]), .in_CI(nC_56), .out_S(out_S[59:56]), .gG(nG_59_56), .gP(nP_59_56));
  VCLA_256_b4 U_lv1_15 (.in_A(in_A[63:60]), .in_B(in_B[63:60]), .in_CI(nC_60), .out_S(out_S[63:60]), .gG(nG_63_60), .gP(nP_63_60));
  VCLA_256_b4 U_lv1_16 (.in_A(in_A[67:64]), .in_B(in_B[67:64]), .in_CI(nC_64), .out_S(out_S[67:64]), .gG(nG_67_64), .gP(nP_67_64));
  VCLA_256_b4 U_lv1_17 (.in_A(in_A[71:68]), .in_B(in_B[71:68]), .in_CI(nC_68), .out_S(out_S[71:68]), .gG(nG_71_68), .gP(nP_71_68));
  VCLA_256_b4 U_lv1_18 (.in_A(in_A[75:72]), .in_B(in_B[75:72]), .in_CI(nC_72), .out_S(out_S[75:72]), .gG(nG_75_72), .gP(nP_75_72));
  VCLA_256_b4 U_lv1_19 (.in_A(in_A[79:76]), .in_B(in_B[79:76]), .in_CI(nC_76), .out_S(out_S[79:76]), .gG(nG_79_76), .gP(nP_79_76));
  VCLA_256_b4 U_lv1_20 (.in_A(in_A[83:80]), .in_B(in_B[83:80]), .in_CI(nC_80), .out_S(out_S[83:80]), .gG(nG_83_80), .gP(nP_83_80));
  VCLA_256_b4 U_lv1_21 (.in_A(in_A[87:84]), .in_B(in_B[87:84]), .in_CI(nC_84), .out_S(out_S[87:84]), .gG(nG_87_84), .gP(nP_87_84));
  VCLA_256_b4 U_lv1_22 (.in_A(in_A[91:88]), .in_B(in_B[91:88]), .in_CI(nC_88), .out_S(out_S[91:88]), .gG(nG_91_88), .gP(nP_91_88));
  VCLA_256_b4 U_lv1_23 (.in_A(in_A[95:92]), .in_B(in_B[95:92]), .in_CI(nC_92), .out_S(out_S[95:92]), .gG(nG_95_92), .gP(nP_95_92));
  VCLA_256_b4 U_lv1_24 (.in_A(in_A[99:96]), .in_B(in_B[99:96]), .in_CI(nC_96), .out_S(out_S[99:96]), .gG(nG_99_96), .gP(nP_99_96));
  VCLA_256_b4 U_lv1_25 (.in_A(in_A[103:100]), .in_B(in_B[103:100]), .in_CI(nC_100), .out_S(out_S[103:100]), .gG(nG_103_100), .gP(nP_103_100));
  VCLA_256_b4 U_lv1_26 (.in_A(in_A[107:104]), .in_B(in_B[107:104]), .in_CI(nC_104), .out_S(out_S[107:104]), .gG(nG_107_104), .gP(nP_107_104));
  VCLA_256_b4 U_lv1_27 (.in_A(in_A[111:108]), .in_B(in_B[111:108]), .in_CI(nC_108), .out_S(out_S[111:108]), .gG(nG_111_108), .gP(nP_111_108));
  VCLA_256_b4 U_lv1_28 (.in_A(in_A[115:112]), .in_B(in_B[115:112]), .in_CI(nC_112), .out_S(out_S[115:112]), .gG(nG_115_112), .gP(nP_115_112));
  VCLA_256_b4 U_lv1_29 (.in_A(in_A[119:116]), .in_B(in_B[119:116]), .in_CI(nC_116), .out_S(out_S[119:116]), .gG(nG_119_116), .gP(nP_119_116));
  VCLA_256_b4 U_lv1_30 (.in_A(in_A[123:120]), .in_B(in_B[123:120]), .in_CI(nC_120), .out_S(out_S[123:120]), .gG(nG_123_120), .gP(nP_123_120));
  VCLA_256_b4 U_lv1_31 (.in_A(in_A[127:124]), .in_B(in_B[127:124]), .in_CI(nC_124), .out_S(out_S[127:124]), .gG(nG_127_124), .gP(nP_127_124));
  VCLA_256_b4 U_lv1_32 (.in_A(in_A[131:128]), .in_B(in_B[131:128]), .in_CI(nC_128), .out_S(out_S[131:128]), .gG(nG_131_128), .gP(nP_131_128));
  VCLA_256_b4 U_lv1_33 (.in_A(in_A[135:132]), .in_B(in_B[135:132]), .in_CI(nC_132), .out_S(out_S[135:132]), .gG(nG_135_132), .gP(nP_135_132));
  VCLA_256_b4 U_lv1_34 (.in_A(in_A[139:136]), .in_B(in_B[139:136]), .in_CI(nC_136), .out_S(out_S[139:136]), .gG(nG_139_136), .gP(nP_139_136));
  VCLA_256_b4 U_lv1_35 (.in_A(in_A[143:140]), .in_B(in_B[143:140]), .in_CI(nC_140), .out_S(out_S[143:140]), .gG(nG_143_140), .gP(nP_143_140));
  VCLA_256_b4 U_lv1_36 (.in_A(in_A[147:144]), .in_B(in_B[147:144]), .in_CI(nC_144), .out_S(out_S[147:144]), .gG(nG_147_144), .gP(nP_147_144));
  VCLA_256_b4 U_lv1_37 (.in_A(in_A[151:148]), .in_B(in_B[151:148]), .in_CI(nC_148), .out_S(out_S[151:148]), .gG(nG_151_148), .gP(nP_151_148));
  VCLA_256_b4 U_lv1_38 (.in_A(in_A[155:152]), .in_B(in_B[155:152]), .in_CI(nC_152), .out_S(out_S[155:152]), .gG(nG_155_152), .gP(nP_155_152));
  VCLA_256_b4 U_lv1_39 (.in_A(in_A[159:156]), .in_B(in_B[159:156]), .in_CI(nC_156), .out_S(out_S[159:156]), .gG(nG_159_156), .gP(nP_159_156));
  VCLA_256_b4 U_lv1_40 (.in_A(in_A[163:160]), .in_B(in_B[163:160]), .in_CI(nC_160), .out_S(out_S[163:160]), .gG(nG_163_160), .gP(nP_163_160));
  VCLA_256_b4 U_lv1_41 (.in_A(in_A[167:164]), .in_B(in_B[167:164]), .in_CI(nC_164), .out_S(out_S[167:164]), .gG(nG_167_164), .gP(nP_167_164));
  VCLA_256_b4 U_lv1_42 (.in_A(in_A[171:168]), .in_B(in_B[171:168]), .in_CI(nC_168), .out_S(out_S[171:168]), .gG(nG_171_168), .gP(nP_171_168));
  VCLA_256_b4 U_lv1_43 (.in_A(in_A[175:172]), .in_B(in_B[175:172]), .in_CI(nC_172), .out_S(out_S[175:172]), .gG(nG_175_172), .gP(nP_175_172));
  VCLA_256_b4 U_lv1_44 (.in_A(in_A[179:176]), .in_B(in_B[179:176]), .in_CI(nC_176), .out_S(out_S[179:176]), .gG(nG_179_176), .gP(nP_179_176));
  VCLA_256_b4 U_lv1_45 (.in_A(in_A[183:180]), .in_B(in_B[183:180]), .in_CI(nC_180), .out_S(out_S[183:180]), .gG(nG_183_180), .gP(nP_183_180));
  VCLA_256_b4 U_lv1_46 (.in_A(in_A[187:184]), .in_B(in_B[187:184]), .in_CI(nC_184), .out_S(out_S[187:184]), .gG(nG_187_184), .gP(nP_187_184));
  VCLA_256_b4 U_lv1_47 (.in_A(in_A[191:188]), .in_B(in_B[191:188]), .in_CI(nC_188), .out_S(out_S[191:188]), .gG(nG_191_188), .gP(nP_191_188));
  VCLA_256_b4 U_lv1_48 (.in_A(in_A[195:192]), .in_B(in_B[195:192]), .in_CI(nC_192), .out_S(out_S[195:192]), .gG(nG_195_192), .gP(nP_195_192));
  VCLA_256_b4 U_lv1_49 (.in_A(in_A[199:196]), .in_B(in_B[199:196]), .in_CI(nC_196), .out_S(out_S[199:196]), .gG(nG_199_196), .gP(nP_199_196));
  VCLA_256_b4 U_lv1_50 (.in_A(in_A[203:200]), .in_B(in_B[203:200]), .in_CI(nC_200), .out_S(out_S[203:200]), .gG(nG_203_200), .gP(nP_203_200));
  VCLA_256_b4 U_lv1_51 (.in_A(in_A[207:204]), .in_B(in_B[207:204]), .in_CI(nC_204), .out_S(out_S[207:204]), .gG(nG_207_204), .gP(nP_207_204));
  VCLA_256_b4 U_lv1_52 (.in_A(in_A[211:208]), .in_B(in_B[211:208]), .in_CI(nC_208), .out_S(out_S[211:208]), .gG(nG_211_208), .gP(nP_211_208));
  VCLA_256_b4 U_lv1_53 (.in_A(in_A[215:212]), .in_B(in_B[215:212]), .in_CI(nC_212), .out_S(out_S[215:212]), .gG(nG_215_212), .gP(nP_215_212));
  VCLA_256_b4 U_lv1_54 (.in_A(in_A[219:216]), .in_B(in_B[219:216]), .in_CI(nC_216), .out_S(out_S[219:216]), .gG(nG_219_216), .gP(nP_219_216));
  VCLA_256_b4 U_lv1_55 (.in_A(in_A[223:220]), .in_B(in_B[223:220]), .in_CI(nC_220), .out_S(out_S[223:220]), .gG(nG_223_220), .gP(nP_223_220));
  VCLA_256_b4 U_lv1_56 (.in_A(in_A[227:224]), .in_B(in_B[227:224]), .in_CI(nC_224), .out_S(out_S[227:224]), .gG(nG_227_224), .gP(nP_227_224));
  VCLA_256_b4 U_lv1_57 (.in_A(in_A[231:228]), .in_B(in_B[231:228]), .in_CI(nC_228), .out_S(out_S[231:228]), .gG(nG_231_228), .gP(nP_231_228));
  VCLA_256_b4 U_lv1_58 (.in_A(in_A[235:232]), .in_B(in_B[235:232]), .in_CI(nC_232), .out_S(out_S[235:232]), .gG(nG_235_232), .gP(nP_235_232));
  VCLA_256_b4 U_lv1_59 (.in_A(in_A[239:236]), .in_B(in_B[239:236]), .in_CI(nC_236), .out_S(out_S[239:236]), .gG(nG_239_236), .gP(nP_239_236));
  VCLA_256_b4 U_lv1_60 (.in_A(in_A[243:240]), .in_B(in_B[243:240]), .in_CI(nC_240), .out_S(out_S[243:240]), .gG(nG_243_240), .gP(nP_243_240));
  VCLA_256_b4 U_lv1_61 (.in_A(in_A[247:244]), .in_B(in_B[247:244]), .in_CI(nC_244), .out_S(out_S[247:244]), .gG(nG_247_244), .gP(nP_247_244));
  VCLA_256_b4 U_lv1_62 (.in_A(in_A[251:248]), .in_B(in_B[251:248]), .in_CI(nC_248), .out_S(out_S[251:248]), .gG(nG_251_248), .gP(nP_251_248));
  VCLA_256_b4 U_lv1_63 (.in_A(in_A[255:252]), .in_B(in_B[255:252]), .in_CI(nC_252), .out_S(out_S[255:252]), .gG(nG_255_252), .gP(nP_255_252));

  VCLA_256_g4 U_lv2_0 (.gGin({nG_15_12, nG_11_8, nG_7_4, nG_3_0}), .gPin({nP_15_12, nP_11_8, nP_7_4, nP_3_0}), .in_CI(nC_0), .gGout(nG_15_0), .gPout(nP_15_0), .out_CO({nC_16_nc, nC_12, nC_8, nC_4}));
  VCLA_256_g4 U_lv2_1 (.gGin({nG_31_28, nG_27_24, nG_23_20, nG_19_16}), .gPin({nP_31_28, nP_27_24, nP_23_20, nP_19_16}), .in_CI(nC_16), .gGout(nG_31_16), .gPout(nP_31_16), .out_CO({nC_32_nc, nC_28, nC_24, nC_20}));
  VCLA_256_g4 U_lv2_2 (.gGin({nG_47_44, nG_43_40, nG_39_36, nG_35_32}), .gPin({nP_47_44, nP_43_40, nP_39_36, nP_35_32}), .in_CI(nC_32), .gGout(nG_47_32), .gPout(nP_47_32), .out_CO({nC_48_nc, nC_44, nC_40, nC_36}));
  VCLA_256_g4 U_lv2_3 (.gGin({nG_63_60, nG_59_56, nG_55_52, nG_51_48}), .gPin({nP_63_60, nP_59_56, nP_55_52, nP_51_48}), .in_CI(nC_48), .gGout(nG_63_48), .gPout(nP_63_48), .out_CO({nC_64_nc, nC_60, nC_56, nC_52}));
  VCLA_256_g4 U_lv2_4 (.gGin({nG_79_76, nG_75_72, nG_71_68, nG_67_64}), .gPin({nP_79_76, nP_75_72, nP_71_68, nP_67_64}), .in_CI(nC_64), .gGout(nG_79_64), .gPout(nP_79_64), .out_CO({nC_80_nc, nC_76, nC_72, nC_68}));
  VCLA_256_g4 U_lv2_5 (.gGin({nG_95_92, nG_91_88, nG_87_84, nG_83_80}), .gPin({nP_95_92, nP_91_88, nP_87_84, nP_83_80}), .in_CI(nC_80), .gGout(nG_95_80), .gPout(nP_95_80), .out_CO({nC_96_nc, nC_92, nC_88, nC_84}));
  VCLA_256_g4 U_lv2_6 (.gGin({nG_111_108, nG_107_104, nG_103_100, nG_99_96}), .gPin({nP_111_108, nP_107_104, nP_103_100, nP_99_96}), .in_CI(nC_96), .gGout(nG_111_96), .gPout(nP_111_96), .out_CO({nC_112_nc, nC_108, nC_104, nC_100}));
  VCLA_256_g4 U_lv2_7 (.gGin({nG_127_124, nG_123_120, nG_119_116, nG_115_112}), .gPin({nP_127_124, nP_123_120, nP_119_116, nP_115_112}), .in_CI(nC_112), .gGout(nG_127_112), .gPout(nP_127_112), .out_CO({nC_128_nc, nC_124, nC_120, nC_116}));
  VCLA_256_g4 U_lv2_8 (.gGin({nG_143_140, nG_139_136, nG_135_132, nG_131_128}), .gPin({nP_143_140, nP_139_136, nP_135_132, nP_131_128}), .in_CI(nC_128), .gGout(nG_143_128), .gPout(nP_143_128), .out_CO({nC_144_nc, nC_140, nC_136, nC_132}));
  VCLA_256_g4 U_lv2_9 (.gGin({nG_159_156, nG_155_152, nG_151_148, nG_147_144}), .gPin({nP_159_156, nP_155_152, nP_151_148, nP_147_144}), .in_CI(nC_144), .gGout(nG_159_144), .gPout(nP_159_144), .out_CO({nC_160_nc, nC_156, nC_152, nC_148}));
  VCLA_256_g4 U_lv2_10 (.gGin({nG_175_172, nG_171_168, nG_167_164, nG_163_160}), .gPin({nP_175_172, nP_171_168, nP_167_164, nP_163_160}), .in_CI(nC_160), .gGout(nG_175_160), .gPout(nP_175_160), .out_CO({nC_176_nc, nC_172, nC_168, nC_164}));
  VCLA_256_g4 U_lv2_11 (.gGin({nG_191_188, nG_187_184, nG_183_180, nG_179_176}), .gPin({nP_191_188, nP_187_184, nP_183_180, nP_179_176}), .in_CI(nC_176), .gGout(nG_191_176), .gPout(nP_191_176), .out_CO({nC_192_nc, nC_188, nC_184, nC_180}));
  VCLA_256_g4 U_lv2_12 (.gGin({nG_207_204, nG_203_200, nG_199_196, nG_195_192}), .gPin({nP_207_204, nP_203_200, nP_199_196, nP_195_192}), .in_CI(nC_192), .gGout(nG_207_192), .gPout(nP_207_192), .out_CO({nC_208_nc, nC_204, nC_200, nC_196}));
  VCLA_256_g4 U_lv2_13 (.gGin({nG_223_220, nG_219_216, nG_215_212, nG_211_208}), .gPin({nP_223_220, nP_219_216, nP_215_212, nP_211_208}), .in_CI(nC_208), .gGout(nG_223_208), .gPout(nP_223_208), .out_CO({nC_224_nc, nC_220, nC_216, nC_212}));
  VCLA_256_g4 U_lv2_14 (.gGin({nG_239_236, nG_235_232, nG_231_228, nG_227_224}), .gPin({nP_239_236, nP_235_232, nP_231_228, nP_227_224}), .in_CI(nC_224), .gGout(nG_239_224), .gPout(nP_239_224), .out_CO({nC_240_nc, nC_236, nC_232, nC_228}));
  VCLA_256_g4 U_lv2_15 (.gGin({nG_255_252, nG_251_248, nG_247_244, nG_243_240}), .gPin({nP_255_252, nP_251_248, nP_247_244, nP_243_240}), .in_CI(nC_240), .gGout(nG_255_240), .gPout(nP_255_240), .out_CO({nC_256_nc, nC_252, nC_248, nC_244}));

  VCLA_256_g4 U_lv3_0 (.gGin({nG_63_48, nG_47_32, nG_31_16, nG_15_0}), .gPin({nP_63_48, nP_47_32, nP_31_16, nP_15_0}), .in_CI(nC_0), .gGout(nG_63_0), .gPout(nP_63_0), .out_CO({nC_64_nc, nC_48, nC_32, nC_16}));
  VCLA_256_g4 U_lv3_1 (.gGin({nG_127_112, nG_111_96, nG_95_80, nG_79_64}), .gPin({nP_127_112, nP_111_96, nP_95_80, nP_79_64}), .in_CI(nC_64), .gGout(nG_127_64), .gPout(nP_127_64), .out_CO({nC_128_nc, nC_112, nC_96, nC_80}));
  VCLA_256_g4 U_lv3_2 (.gGin({nG_191_176, nG_175_160, nG_159_144, nG_143_128}), .gPin({nP_191_176, nP_175_160, nP_159_144, nP_143_128}), .in_CI(nC_128), .gGout(nG_191_128), .gPout(nP_191_128), .out_CO({nC_192_nc, nC_176, nC_160, nC_144}));
  VCLA_256_g4 U_lv3_3 (.gGin({nG_255_240, nG_239_224, nG_223_208, nG_207_192}), .gPin({nP_255_240, nP_239_224, nP_223_208, nP_207_192}), .in_CI(nC_192), .gGout(nG_255_192), .gPout(nP_255_192), .out_CO({nC_256_nc, nC_240, nC_224, nC_208}));

  VCLA_256_g4 U_lv4_0 (.gGin({nG_255_192, nG_191_128, nG_127_64, nG_63_0}), .gPin({nP_255_192, nP_191_128, nP_127_64, nP_63_0}), .in_CI(nC_0), .gGout(nG_255_0), .gPout(nP_255_0), .out_CO({nC_256, nC_192, nC_128, nC_64}));

  assign out_CO = nC_256;
endmodule

