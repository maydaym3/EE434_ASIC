module VFA (in_A, in_B, in_CI, out_S, out_CO);
  input in_A, in_B, in_CI;
  output out_S, out_CO;

  assign out_S = in_A ^ in_B ^ in_CI;
  assign out_CO = (in_A & in_B) | (in_B & in_CI) | (in_CI & in_A);
endmodule



module VRCA_64 (in_A, in_B, in_CI, out_S, out_CO);
  input [63:0] in_A, in_B;
  input in_CI;
  output [63:0] out_S;
  output out_CO;

  VFA U0 (.in_A(in_A[0]), .in_B(in_B[0]), .in_CI(in_CI), .out_S(out_S[0]), .out_CO(nC1));
  VFA U1 (.in_A(in_A[1]), .in_B(in_B[1]), .in_CI(nC1), .out_S(out_S[1]), .out_CO(nC2));
  VFA U2 (.in_A(in_A[2]), .in_B(in_B[2]), .in_CI(nC2), .out_S(out_S[2]), .out_CO(nC3));
  VFA U3 (.in_A(in_A[3]), .in_B(in_B[3]), .in_CI(nC3), .out_S(out_S[3]), .out_CO(nC4));
  VFA U4 (.in_A(in_A[4]), .in_B(in_B[4]), .in_CI(nC4), .out_S(out_S[4]), .out_CO(nC5));
  VFA U5 (.in_A(in_A[5]), .in_B(in_B[5]), .in_CI(nC5), .out_S(out_S[5]), .out_CO(nC6));
  VFA U6 (.in_A(in_A[6]), .in_B(in_B[6]), .in_CI(nC6), .out_S(out_S[6]), .out_CO(nC7));
  VFA U7 (.in_A(in_A[7]), .in_B(in_B[7]), .in_CI(nC7), .out_S(out_S[7]), .out_CO(nC8));
  VFA U8 (.in_A(in_A[8]), .in_B(in_B[8]), .in_CI(nC8), .out_S(out_S[8]), .out_CO(nC9));
  VFA U9 (.in_A(in_A[9]), .in_B(in_B[9]), .in_CI(nC9), .out_S(out_S[9]), .out_CO(nC10));
  VFA U10 (.in_A(in_A[10]), .in_B(in_B[10]), .in_CI(nC10), .out_S(out_S[10]), .out_CO(nC11));
  VFA U11 (.in_A(in_A[11]), .in_B(in_B[11]), .in_CI(nC11), .out_S(out_S[11]), .out_CO(nC12));
  VFA U12 (.in_A(in_A[12]), .in_B(in_B[12]), .in_CI(nC12), .out_S(out_S[12]), .out_CO(nC13));
  VFA U13 (.in_A(in_A[13]), .in_B(in_B[13]), .in_CI(nC13), .out_S(out_S[13]), .out_CO(nC14));
  VFA U14 (.in_A(in_A[14]), .in_B(in_B[14]), .in_CI(nC14), .out_S(out_S[14]), .out_CO(nC15));
  VFA U15 (.in_A(in_A[15]), .in_B(in_B[15]), .in_CI(nC15), .out_S(out_S[15]), .out_CO(nC16));
  VFA U16 (.in_A(in_A[16]), .in_B(in_B[16]), .in_CI(nC16), .out_S(out_S[16]), .out_CO(nC17));
  VFA U17 (.in_A(in_A[17]), .in_B(in_B[17]), .in_CI(nC17), .out_S(out_S[17]), .out_CO(nC18));
  VFA U18 (.in_A(in_A[18]), .in_B(in_B[18]), .in_CI(nC18), .out_S(out_S[18]), .out_CO(nC19));
  VFA U19 (.in_A(in_A[19]), .in_B(in_B[19]), .in_CI(nC19), .out_S(out_S[19]), .out_CO(nC20));
  VFA U20 (.in_A(in_A[20]), .in_B(in_B[20]), .in_CI(nC20), .out_S(out_S[20]), .out_CO(nC21));
  VFA U21 (.in_A(in_A[21]), .in_B(in_B[21]), .in_CI(nC21), .out_S(out_S[21]), .out_CO(nC22));
  VFA U22 (.in_A(in_A[22]), .in_B(in_B[22]), .in_CI(nC22), .out_S(out_S[22]), .out_CO(nC23));
  VFA U23 (.in_A(in_A[23]), .in_B(in_B[23]), .in_CI(nC23), .out_S(out_S[23]), .out_CO(nC24));
  VFA U24 (.in_A(in_A[24]), .in_B(in_B[24]), .in_CI(nC24), .out_S(out_S[24]), .out_CO(nC25));
  VFA U25 (.in_A(in_A[25]), .in_B(in_B[25]), .in_CI(nC25), .out_S(out_S[25]), .out_CO(nC26));
  VFA U26 (.in_A(in_A[26]), .in_B(in_B[26]), .in_CI(nC26), .out_S(out_S[26]), .out_CO(nC27));
  VFA U27 (.in_A(in_A[27]), .in_B(in_B[27]), .in_CI(nC27), .out_S(out_S[27]), .out_CO(nC28));
  VFA U28 (.in_A(in_A[28]), .in_B(in_B[28]), .in_CI(nC28), .out_S(out_S[28]), .out_CO(nC29));
  VFA U29 (.in_A(in_A[29]), .in_B(in_B[29]), .in_CI(nC29), .out_S(out_S[29]), .out_CO(nC30));
  VFA U30 (.in_A(in_A[30]), .in_B(in_B[30]), .in_CI(nC30), .out_S(out_S[30]), .out_CO(nC31));
  VFA U31 (.in_A(in_A[31]), .in_B(in_B[31]), .in_CI(nC31), .out_S(out_S[31]), .out_CO(nC32));
  VFA U32 (.in_A(in_A[32]), .in_B(in_B[32]), .in_CI(nC32), .out_S(out_S[32]), .out_CO(nC33));
  VFA U33 (.in_A(in_A[33]), .in_B(in_B[33]), .in_CI(nC33), .out_S(out_S[33]), .out_CO(nC34));
  VFA U34 (.in_A(in_A[34]), .in_B(in_B[34]), .in_CI(nC34), .out_S(out_S[34]), .out_CO(nC35));
  VFA U35 (.in_A(in_A[35]), .in_B(in_B[35]), .in_CI(nC35), .out_S(out_S[35]), .out_CO(nC36));
  VFA U36 (.in_A(in_A[36]), .in_B(in_B[36]), .in_CI(nC36), .out_S(out_S[36]), .out_CO(nC37));
  VFA U37 (.in_A(in_A[37]), .in_B(in_B[37]), .in_CI(nC37), .out_S(out_S[37]), .out_CO(nC38));
  VFA U38 (.in_A(in_A[38]), .in_B(in_B[38]), .in_CI(nC38), .out_S(out_S[38]), .out_CO(nC39));
  VFA U39 (.in_A(in_A[39]), .in_B(in_B[39]), .in_CI(nC39), .out_S(out_S[39]), .out_CO(nC40));
  VFA U40 (.in_A(in_A[40]), .in_B(in_B[40]), .in_CI(nC40), .out_S(out_S[40]), .out_CO(nC41));
  VFA U41 (.in_A(in_A[41]), .in_B(in_B[41]), .in_CI(nC41), .out_S(out_S[41]), .out_CO(nC42));
  VFA U42 (.in_A(in_A[42]), .in_B(in_B[42]), .in_CI(nC42), .out_S(out_S[42]), .out_CO(nC43));
  VFA U43 (.in_A(in_A[43]), .in_B(in_B[43]), .in_CI(nC43), .out_S(out_S[43]), .out_CO(nC44));
  VFA U44 (.in_A(in_A[44]), .in_B(in_B[44]), .in_CI(nC44), .out_S(out_S[44]), .out_CO(nC45));
  VFA U45 (.in_A(in_A[45]), .in_B(in_B[45]), .in_CI(nC45), .out_S(out_S[45]), .out_CO(nC46));
  VFA U46 (.in_A(in_A[46]), .in_B(in_B[46]), .in_CI(nC46), .out_S(out_S[46]), .out_CO(nC47));
  VFA U47 (.in_A(in_A[47]), .in_B(in_B[47]), .in_CI(nC47), .out_S(out_S[47]), .out_CO(nC48));
  VFA U48 (.in_A(in_A[48]), .in_B(in_B[48]), .in_CI(nC48), .out_S(out_S[48]), .out_CO(nC49));
  VFA U49 (.in_A(in_A[49]), .in_B(in_B[49]), .in_CI(nC49), .out_S(out_S[49]), .out_CO(nC50));
  VFA U50 (.in_A(in_A[50]), .in_B(in_B[50]), .in_CI(nC50), .out_S(out_S[50]), .out_CO(nC51));
  VFA U51 (.in_A(in_A[51]), .in_B(in_B[51]), .in_CI(nC51), .out_S(out_S[51]), .out_CO(nC52));
  VFA U52 (.in_A(in_A[52]), .in_B(in_B[52]), .in_CI(nC52), .out_S(out_S[52]), .out_CO(nC53));
  VFA U53 (.in_A(in_A[53]), .in_B(in_B[53]), .in_CI(nC53), .out_S(out_S[53]), .out_CO(nC54));
  VFA U54 (.in_A(in_A[54]), .in_B(in_B[54]), .in_CI(nC54), .out_S(out_S[54]), .out_CO(nC55));
  VFA U55 (.in_A(in_A[55]), .in_B(in_B[55]), .in_CI(nC55), .out_S(out_S[55]), .out_CO(nC56));
  VFA U56 (.in_A(in_A[56]), .in_B(in_B[56]), .in_CI(nC56), .out_S(out_S[56]), .out_CO(nC57));
  VFA U57 (.in_A(in_A[57]), .in_B(in_B[57]), .in_CI(nC57), .out_S(out_S[57]), .out_CO(nC58));
  VFA U58 (.in_A(in_A[58]), .in_B(in_B[58]), .in_CI(nC58), .out_S(out_S[58]), .out_CO(nC59));
  VFA U59 (.in_A(in_A[59]), .in_B(in_B[59]), .in_CI(nC59), .out_S(out_S[59]), .out_CO(nC60));
  VFA U60 (.in_A(in_A[60]), .in_B(in_B[60]), .in_CI(nC60), .out_S(out_S[60]), .out_CO(nC61));
  VFA U61 (.in_A(in_A[61]), .in_B(in_B[61]), .in_CI(nC61), .out_S(out_S[61]), .out_CO(nC62));
  VFA U62 (.in_A(in_A[62]), .in_B(in_B[62]), .in_CI(nC62), .out_S(out_S[62]), .out_CO(nC63));
  VFA U63 (.in_A(in_A[63]), .in_B(in_B[63]), .in_CI(nC63), .out_S(out_S[63]), .out_CO(out_CO));
endmodule

