
module cf_fp_mul_p_3_4 (clock_c, a_i, b_i, x_o);
input  clock_c;
input  [7:0] a_i;
input  [7:0] b_i;
output [7:0] x_o;
wire   [7:0] n1;
cf_fp_mul_p_3_4_1 s1 (clock_c, a_i, b_i, n1);
assign x_o = n1;
endmodule

module cf_fp_mul_p_3_4_1 (clock_c, i1, i2, o1);
input  clock_c;
input  [7:0] i1;
input  [7:0] i2;
output [7:0] o1;
wire   n1;
wire   n2;
wire   [7:0] s3_1;
assign n1 = 1'b1;
assign n2 = 1'b0;
cf_fp_mul_p_3_4_2 s3 (clock_c, n1, n2, i1, i2, s3_1);
assign o1 = s3_1;
endmodule

module cf_fp_mul_p_3_4_2 (clock_c, i1, i2, i3, i4, o1);
input  clock_c;
input  i1;
input  i2;
input  [7:0] i3;
input  [7:0] i4;
output [7:0] o1;
reg    [7:0] n1;
reg    [7:0] n2;
reg    n3;
reg    n4;
reg    n5;
reg    n6;
reg    n7;
reg    [3:0] n8;
reg    [9:0] n9;
wire   n10;
wire   [3:0] n11;
wire   [3:0] n12;
wire   [3:0] n13;
wire   [8:0] n14;
wire   [8:0] n15;
wire   [8:0] n16;
reg    n17;
reg    n18;
reg    n19;
reg    n20;
reg    n21;
reg    [3:0] n22;
reg    [8:0] n23;
reg    [7:0] n24;
wire   s25_1;
wire   s25_2;
wire   s25_3;
wire   s25_4;
wire   s25_5;
wire   [3:0] s25_6;
wire   [9:0] s25_7;
wire   [7:0] s26_1;
wire   s27_1;
wire   s27_2;
wire   s27_3;
wire   s27_4;
wire   s27_5;
wire   [3:0] s27_6;
wire   [4:0] s27_7;
initial n1 = 8'b00000000;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n1 <= 8'b00000000;
  else if (i1 == 1'b1)
    n1 <= i3;
initial n2 = 8'b00000000;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n2 <= 8'b00000000;
  else if (i1 == 1'b1)
    n2 <= i4;
initial n3 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n3 <= 1'b0;
  else if (i1 == 1'b1)
    n3 <= s25_1;
initial n4 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n4 <= 1'b0;
  else if (i1 == 1'b1)
    n4 <= s25_2;
initial n5 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n5 <= 1'b0;
  else if (i1 == 1'b1)
    n5 <= s25_3;
initial n6 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n6 <= 1'b0;
  else if (i1 == 1'b1)
    n6 <= s25_4;
initial n7 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n7 <= 1'b0;
  else if (i1 == 1'b1)
    n7 <= s25_5;
initial n8 = 4'b0000;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n8 <= 4'b0000;
  else if (i1 == 1'b1)
    n8 <= s25_6;
initial n9 = 10'b0000000000;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n9 <= 10'b0000000000;
  else if (i1 == 1'b1)
    n9 <= s25_7;
assign n10 = n9[9];
assign n11 = 4'b0001;
assign n12 = n8 + n11;
assign n13 = n10 ? n12 : n8;
assign n14 = {n9[9],
  n9[8],
  n9[7],
  n9[6],
  n9[5],
  n9[4],
  n9[3],
  n9[2],
  n9[1]};
assign n15 = {n9[8],
  n9[7],
  n9[6],
  n9[5],
  n9[4],
  n9[3],
  n9[2],
  n9[1],
  n9[0]};
assign n16 = n10 ? n14 : n15;
initial n17 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n17 <= 1'b0;
  else if (i1 == 1'b1)
    n17 <= n3;
initial n18 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n18 <= 1'b0;
  else if (i1 == 1'b1)
    n18 <= n4;
initial n19 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n19 <= 1'b0;
  else if (i1 == 1'b1)
    n19 <= n5;
initial n20 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n20 <= 1'b0;
  else if (i1 == 1'b1)
    n20 <= n6;
initial n21 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n21 <= 1'b0;
  else if (i1 == 1'b1)
    n21 <= n7;
initial n22 = 4'b0000;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n22 <= 4'b0000;
  else if (i1 == 1'b1)
    n22 <= n13;
initial n23 = 9'b000000000;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n23 <= 9'b000000000;
  else if (i1 == 1'b1)
    n23 <= n16;
initial n24 = 8'b00000000;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n24 <= 8'b00000000;
  else if (i1 == 1'b1)
    n24 <= s26_1;
cf_fp_mul_p_3_4_18 s25 (n1, n2, s25_1, s25_2, s25_3, s25_4, s25_5, s25_6, s25_7);
cf_fp_mul_p_3_4_11 s26 (s27_1, s27_2, s27_3, s27_4, s27_5, s27_6, s27_7, s26_1);
cf_fp_mul_p_3_4_3 s27 (clock_c, i1, i2, n17, n18, n19, n20, n21, n22, n23, s27_1, s27_2, s27_3, s27_4, s27_5, s27_6, s27_7);
assign o1 = n24;
endmodule

module cf_fp_mul_p_3_4_3 (clock_c, i1, i2, i3, i4, i5, i6, i7, i8, i9, o1, o2, o3, o4, o5, o6, o7);
input  clock_c;
input  i1;
input  i2;
input  i3;
input  i4;
input  i5;
input  i6;
input  i7;
input  [3:0] i8;
input  [8:0] i9;
output o1;
output o2;
output o3;
output o4;
output o5;
output [3:0] o6;
output [4:0] o7;
reg    n1;
reg    n2;
reg    n3;
reg    n4;
reg    n5;
reg    [3:0] n6;
reg    [7:0] n7;
wire   [3:0] s8_1;
wire   [7:0] s8_2;
wire   s9_1;
wire   s9_2;
wire   s9_3;
wire   s9_4;
wire   s9_5;
wire   [3:0] s9_6;
wire   [4:0] s9_7;
initial n1 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n1 <= 1'b0;
  else if (i1 == 1'b1)
    n1 <= i3;
initial n2 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n2 <= 1'b0;
  else if (i1 == 1'b1)
    n2 <= i4;
initial n3 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n3 <= 1'b0;
  else if (i1 == 1'b1)
    n3 <= i5;
initial n4 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n4 <= 1'b0;
  else if (i1 == 1'b1)
    n4 <= i6;
initial n5 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n5 <= 1'b0;
  else if (i1 == 1'b1)
    n5 <= i7;
initial n6 = 4'b0000;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n6 <= 4'b0000;
  else if (i1 == 1'b1)
    n6 <= s8_1;
initial n7 = 8'b00000000;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n7 <= 8'b00000000;
  else if (i1 == 1'b1)
    n7 <= s8_2;
cf_fp_mul_p_3_4_10 s8 (i8, i9, s8_1, s8_2);
cf_fp_mul_p_3_4_4 s9 (clock_c, i1, i2, n1, n2, n3, n4, n5, n6, n7, s9_1, s9_2, s9_3, s9_4, s9_5, s9_6, s9_7);
assign o7 = s9_7;
assign o6 = s9_6;
assign o5 = s9_5;
assign o4 = s9_4;
assign o3 = s9_3;
assign o2 = s9_2;
assign o1 = s9_1;
endmodule

module cf_fp_mul_p_3_4_4 (clock_c, i1, i2, i3, i4, i5, i6, i7, i8, i9, o1, o2, o3, o4, o5, o6, o7);
input  clock_c;
input  i1;
input  i2;
input  i3;
input  i4;
input  i5;
input  i6;
input  i7;
input  [3:0] i8;
input  [7:0] i9;
output o1;
output o2;
output o3;
output o4;
output o5;
output [3:0] o6;
output [4:0] o7;
reg    n1;
reg    n2;
reg    n3;
reg    n4;
reg    n5;
reg    [3:0] n6;
reg    [6:0] n7;
wire   [3:0] s8_1;
wire   [6:0] s8_2;
wire   s9_1;
wire   s9_2;
wire   s9_3;
wire   s9_4;
wire   s9_5;
wire   [3:0] s9_6;
wire   [4:0] s9_7;
initial n1 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n1 <= 1'b0;
  else if (i1 == 1'b1)
    n1 <= i3;
initial n2 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n2 <= 1'b0;
  else if (i1 == 1'b1)
    n2 <= i4;
initial n3 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n3 <= 1'b0;
  else if (i1 == 1'b1)
    n3 <= i5;
initial n4 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n4 <= 1'b0;
  else if (i1 == 1'b1)
    n4 <= i6;
initial n5 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n5 <= 1'b0;
  else if (i1 == 1'b1)
    n5 <= i7;
initial n6 = 4'b0000;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n6 <= 4'b0000;
  else if (i1 == 1'b1)
    n6 <= s8_1;
initial n7 = 7'b0000000;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n7 <= 7'b0000000;
  else if (i1 == 1'b1)
    n7 <= s8_2;
cf_fp_mul_p_3_4_9 s8 (i8, i9, s8_1, s8_2);
cf_fp_mul_p_3_4_5 s9 (clock_c, i1, i2, n1, n2, n3, n4, n5, n6, n7, s9_1, s9_2, s9_3, s9_4, s9_5, s9_6, s9_7);
assign o7 = s9_7;
assign o6 = s9_6;
assign o5 = s9_5;
assign o4 = s9_4;
assign o3 = s9_3;
assign o2 = s9_2;
assign o1 = s9_1;
endmodule

module cf_fp_mul_p_3_4_5 (clock_c, i1, i2, i3, i4, i5, i6, i7, i8, i9, o1, o2, o3, o4, o5, o6, o7);
input  clock_c;
input  i1;
input  i2;
input  i3;
input  i4;
input  i5;
input  i6;
input  i7;
input  [3:0] i8;
input  [6:0] i9;
output o1;
output o2;
output o3;
output o4;
output o5;
output [3:0] o6;
output [4:0] o7;
reg    n1;
reg    n2;
reg    n3;
reg    n4;
reg    n5;
reg    [3:0] n6;
reg    [5:0] n7;
wire   [3:0] s8_1;
wire   [5:0] s8_2;
wire   s9_1;
wire   s9_2;
wire   s9_3;
wire   s9_4;
wire   s9_5;
wire   [3:0] s9_6;
wire   [4:0] s9_7;
initial n1 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n1 <= 1'b0;
  else if (i1 == 1'b1)
    n1 <= i3;
initial n2 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n2 <= 1'b0;
  else if (i1 == 1'b1)
    n2 <= i4;
initial n3 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n3 <= 1'b0;
  else if (i1 == 1'b1)
    n3 <= i5;
initial n4 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n4 <= 1'b0;
  else if (i1 == 1'b1)
    n4 <= i6;
initial n5 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n5 <= 1'b0;
  else if (i1 == 1'b1)
    n5 <= i7;
initial n6 = 4'b0000;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n6 <= 4'b0000;
  else if (i1 == 1'b1)
    n6 <= s8_1;
initial n7 = 6'b000000;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n7 <= 6'b000000;
  else if (i1 == 1'b1)
    n7 <= s8_2;
cf_fp_mul_p_3_4_8 s8 (i8, i9, s8_1, s8_2);
cf_fp_mul_p_3_4_6 s9 (clock_c, i1, i2, n1, n2, n3, n4, n5, n6, n7, s9_1, s9_2, s9_3, s9_4, s9_5, s9_6, s9_7);
assign o7 = s9_7;
assign o6 = s9_6;
assign o5 = s9_5;
assign o4 = s9_4;
assign o3 = s9_3;
assign o2 = s9_2;
assign o1 = s9_1;
endmodule

module cf_fp_mul_p_3_4_6 (clock_c, i1, i2, i3, i4, i5, i6, i7, i8, i9, o1, o2, o3, o4, o5, o6, o7);
input  clock_c;
input  i1;
input  i2;
input  i3;
input  i4;
input  i5;
input  i6;
input  i7;
input  [3:0] i8;
input  [5:0] i9;
output o1;
output o2;
output o3;
output o4;
output o5;
output [3:0] o6;
output [4:0] o7;
reg    n1;
reg    n2;
reg    n3;
reg    n4;
reg    n5;
reg    [3:0] n6;
reg    [4:0] n7;
wire   [3:0] s8_1;
wire   [4:0] s8_2;
initial n1 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n1 <= 1'b0;
  else if (i1 == 1'b1)
    n1 <= i3;
initial n2 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n2 <= 1'b0;
  else if (i1 == 1'b1)
    n2 <= i4;
initial n3 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n3 <= 1'b0;
  else if (i1 == 1'b1)
    n3 <= i5;
initial n4 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n4 <= 1'b0;
  else if (i1 == 1'b1)
    n4 <= i6;
initial n5 = 1'b0;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n5 <= 1'b0;
  else if (i1 == 1'b1)
    n5 <= i7;
initial n6 = 4'b0000;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n6 <= 4'b0000;
  else if (i1 == 1'b1)
    n6 <= s8_1;
initial n7 = 5'b00000;
always @ (posedge clock_c)
  if (i2 == 1'b1)
    n7 <= 5'b00000;
  else if (i1 == 1'b1)
    n7 <= s8_2;
cf_fp_mul_p_3_4_7 s8 (i8, i9, s8_1, s8_2);
assign o7 = n7;
assign o6 = n6;
assign o5 = n5;
assign o4 = n4;
assign o3 = n3;
assign o2 = n2;
assign o1 = n1;
endmodule

module cf_fp_mul_p_3_4_7 (i1, i2, o1, o2);
input  [3:0] i1;
input  [5:0] i2;
output [3:0] o1;
output [4:0] o2;
wire   n1;
wire   n2;
wire   n3;
wire   [3:0] n4;
wire   [3:0] n5;
wire   [3:0] n6;
wire   [4:0] n7;
wire   [4:0] n8;
wire   [4:0] n9;
wire   s10_1;
assign n1 = i2[5];
assign n2 = n1 | s10_1;
assign n3 = ~n2;
assign n4 = 4'b0001;
assign n5 = i1 - n4;
assign n6 = n3 ? n5 : i1;
assign n7 = {i2[4],
  i2[3],
  i2[2],
  i2[1],
  i2[0]};
assign n8 = {i2[5],
  i2[4],
  i2[3],
  i2[2],
  i2[1]};
assign n9 = n3 ? n7 : n8;
cf_fp_mul_p_3_4_21 s10 (i1, s10_1);
assign o2 = n9;
assign o1 = n6;
endmodule

module cf_fp_mul_p_3_4_8 (i1, i2, o1, o2);
input  [3:0] i1;
input  [6:0] i2;
output [3:0] o1;
output [5:0] o2;
wire   n1;
wire   n2;
wire   n3;
wire   [3:0] n4;
wire   [3:0] n5;
wire   [3:0] n6;
wire   [5:0] n7;
wire   [5:0] n8;
wire   [5:0] n9;
wire   s10_1;
assign n1 = i2[6];
assign n2 = n1 | s10_1;
assign n3 = ~n2;
assign n4 = 4'b0001;
assign n5 = i1 - n4;
assign n6 = n3 ? n5 : i1;
assign n7 = {i2[5],
  i2[4],
  i2[3],
  i2[2],
  i2[1],
  i2[0]};
assign n8 = {i2[6],
  i2[5],
  i2[4],
  i2[3],
  i2[2],
  i2[1]};
assign n9 = n3 ? n7 : n8;
cf_fp_mul_p_3_4_21 s10 (i1, s10_1);
assign o2 = n9;
assign o1 = n6;
endmodule

module cf_fp_mul_p_3_4_9 (i1, i2, o1, o2);
input  [3:0] i1;
input  [7:0] i2;
output [3:0] o1;
output [6:0] o2;
wire   n1;
wire   n2;
wire   n3;
wire   [3:0] n4;
wire   [3:0] n5;
wire   [3:0] n6;
wire   [6:0] n7;
wire   [6:0] n8;
wire   [6:0] n9;
wire   s10_1;
assign n1 = i2[7];
assign n2 = n1 | s10_1;
assign n3 = ~n2;
assign n4 = 4'b0001;
assign n5 = i1 - n4;
assign n6 = n3 ? n5 : i1;
assign n7 = {i2[6],
  i2[5],
  i2[4],
  i2[3],
  i2[2],
  i2[1],
  i2[0]};
assign n8 = {i2[7],
  i2[6],
  i2[5],
  i2[4],
  i2[3],
  i2[2],
  i2[1]};
assign n9 = n3 ? n7 : n8;
cf_fp_mul_p_3_4_21 s10 (i1, s10_1);
assign o2 = n9;
assign o1 = n6;
endmodule

module cf_fp_mul_p_3_4_10 (i1, i2, o1, o2);
input  [3:0] i1;
input  [8:0] i2;
output [3:0] o1;
output [7:0] o2;
wire   n1;
wire   n2;
wire   n3;
wire   [3:0] n4;
wire   [3:0] n5;
wire   [3:0] n6;
wire   [7:0] n7;
wire   [7:0] n8;
wire   [7:0] n9;
wire   s10_1;
assign n1 = i2[8];
assign n2 = n1 | s10_1;
assign n3 = ~n2;
assign n4 = 4'b0001;
assign n5 = i1 - n4;
assign n6 = n3 ? n5 : i1;
assign n7 = {i2[7],
  i2[6],
  i2[5],
  i2[4],
  i2[3],
  i2[2],
  i2[1],
  i2[0]};
assign n8 = {i2[8],
  i2[7],
  i2[6],
  i2[5],
  i2[4],
  i2[3],
  i2[2],
  i2[1]};
assign n9 = n3 ? n7 : n8;
cf_fp_mul_p_3_4_21 s10 (i1, s10_1);
assign o2 = n9;
assign o1 = n6;
endmodule

module cf_fp_mul_p_3_4_11 (i1, i2, i3, i4, i5, i6, i7, o1);
input  i1;
input  i2;
input  i3;
input  i4;
input  i5;
input  [3:0] i6;
input  [4:0] i7;
output [7:0] o1;
wire   [2:0] n1;
wire   [3:0] n2;
wire   [6:0] n3;
wire   [6:0] n4;
wire   [1:0] n5;
wire   [2:0] n6;
wire   [3:0] n7;
wire   [2:0] n8;
wire   [2:0] n9;
wire   [2:0] n10;
wire   [2:0] n11;
wire   [2:0] n12;
wire   [7:0] n13;
wire   [6:0] n14;
wire   [6:0] n15;
wire   [6:0] n16;
wire   [2:0] s17_1;
wire   [6:0] s18_1;
assign n1 = {i6[2],
  i6[1],
  i6[0]};
assign n2 = {i7[3],
  i7[2],
  i7[1],
  i7[0]};
assign n3 = {n1, n2};
assign n4 = 7'b0000000;
assign n5 = {i3, i4};
assign n6 = {i2, n5};
assign n7 = {i1, n6};
assign n8 = 3'b000;
assign n9 = 3'b001;
assign n10 = 3'b010;
assign n11 = 3'b011;
assign n12 = 3'b100;
assign n13 = {i5, s18_1};
assign n14 = 7'b1110000;
assign n15 = 7'b1111111;
assign n16 = 7'b1110111;
cf_fp_mul_p_3_4_13 s17 (n7, n8, n9, n10, n11, n12, s17_1);
cf_fp_mul_p_3_4_12 s18 (n3, n4, s17_1, n14, n15, n16, s18_1);
assign o1 = n13;
endmodule

module cf_fp_mul_p_3_4_12 (i1, i2, i3, i4, i5, i6, o1);
input  [6:0] i1;
input  [6:0] i2;
input  [2:0] i3;
input  [6:0] i4;
input  [6:0] i5;
input  [6:0] i6;
output [6:0] o1;
wire   [1:0] n1;
wire   n2;
wire   [6:0] n3;
wire   [6:0] n4;
wire   n5;
wire   n6;
wire   [6:0] n7;
wire   n8;
wire   [6:0] n9;
assign n1 = {i3[2],
  i3[1]};
assign n2 = i3[0];
assign n3 = n2 ? i2 : i1;
assign n4 = n2 ? i5 : i4;
assign n5 = n1[1];
assign n6 = n1[0];
assign n7 = n6 ? n4 : n3;
assign n8 = n5;
assign n9 = n8 ? i6 : n7;
assign o1 = n9;
endmodule

module cf_fp_mul_p_3_4_13 (i1, i2, i3, i4, i5, i6, o1);
input  [3:0] i1;
input  [2:0] i2;
input  [2:0] i3;
input  [2:0] i4;
input  [2:0] i5;
input  [2:0] i6;
output [2:0] o1;
wire   [3:0] n1;
wire   n2;
wire   [3:0] n3;
wire   n4;
wire   [3:0] n5;
wire   n6;
wire   [2:0] n7;
wire   [2:0] n8;
wire   [2:0] n9;
wire   [2:0] s10_1;
assign n1 = 4'b1000;
assign n2 = i1 == n1;
assign n3 = 4'b1001;
assign n4 = i1 == n3;
assign n5 = 4'b1010;
assign n6 = i1 == n5;
assign n7 = n6 ? i6 : s10_1;
assign n8 = n4 ? i6 : n7;
assign n9 = n2 ? i6 : n8;
cf_fp_mul_p_3_4_14 s10 (i1, i2, i3, i4, i5, i6, s10_1);
assign o1 = n9;
endmodule

module cf_fp_mul_p_3_4_14 (i1, i2, i3, i4, i5, i6, o1);
input  [3:0] i1;
input  [2:0] i2;
input  [2:0] i3;
input  [2:0] i4;
input  [2:0] i5;
input  [2:0] i6;
output [2:0] o1;
wire   [3:0] n1;
wire   n2;
wire   [3:0] n3;
wire   n4;
wire   [3:0] n5;
wire   n6;
wire   [2:0] n7;
wire   [2:0] n8;
wire   [2:0] n9;
wire   [2:0] s10_1;
assign n1 = 4'b1011;
assign n2 = i1 == n1;
assign n3 = 4'b1100;
assign n4 = i1 == n3;
assign n5 = 4'b1101;
assign n6 = i1 == n5;
assign n7 = n6 ? i6 : s10_1;
assign n8 = n4 ? i6 : n7;
assign n9 = n2 ? i6 : n8;
cf_fp_mul_p_3_4_15 s10 (i1, i2, i3, i4, i5, i6, s10_1);
assign o1 = n9;
endmodule

module cf_fp_mul_p_3_4_15 (i1, i2, i3, i4, i5, i6, o1);
input  [3:0] i1;
input  [2:0] i2;
input  [2:0] i3;
input  [2:0] i4;
input  [2:0] i5;
input  [2:0] i6;
output [2:0] o1;
wire   [3:0] n1;
wire   n2;
wire   [3:0] n3;
wire   n4;
wire   [3:0] n5;
wire   n6;
wire   [2:0] n7;
wire   [2:0] n8;
wire   [2:0] n9;
wire   [2:0] s10_1;
assign n1 = 4'b1110;
assign n2 = i1 == n1;
assign n3 = 4'b1111;
assign n4 = i1 == n3;
assign n5 = 4'b0100;
assign n6 = i1 == n5;
assign n7 = n6 ? i5 : s10_1;
assign n8 = n4 ? i6 : n7;
assign n9 = n2 ? i6 : n8;
cf_fp_mul_p_3_4_16 s10 (i1, i2, i3, i4, i5, s10_1);
assign o1 = n9;
endmodule

module cf_fp_mul_p_3_4_16 (i1, i2, i3, i4, i5, o1);
input  [3:0] i1;
input  [2:0] i2;
input  [2:0] i3;
input  [2:0] i4;
input  [2:0] i5;
output [2:0] o1;
wire   [3:0] n1;
wire   n2;
wire   [3:0] n3;
wire   n4;
wire   [3:0] n5;
wire   n6;
wire   [2:0] n7;
wire   [2:0] n8;
wire   [2:0] n9;
wire   [2:0] s10_1;
assign n1 = 4'b0101;
assign n2 = i1 == n1;
assign n3 = 4'b0110;
assign n4 = i1 == n3;
assign n5 = 4'b0111;
assign n6 = i1 == n5;
assign n7 = n6 ? i5 : s10_1;
assign n8 = n4 ? i5 : n7;
assign n9 = n2 ? i5 : n8;
cf_fp_mul_p_3_4_17 s10 (i1, i2, i3, i4, s10_1);
assign o1 = n9;
endmodule

module cf_fp_mul_p_3_4_17 (i1, i2, i3, i4, o1);
input  [3:0] i1;
input  [2:0] i2;
input  [2:0] i3;
input  [2:0] i4;
output [2:0] o1;
wire   [3:0] n1;
wire   n2;
wire   [3:0] n3;
wire   n4;
wire   [3:0] n5;
wire   n6;
wire   [2:0] n7;
wire   [2:0] n8;
wire   [2:0] n9;
assign n1 = 4'b0010;
assign n2 = i1 == n1;
assign n3 = 4'b0011;
assign n4 = i1 == n3;
assign n5 = 4'b0001;
assign n6 = i1 == n5;
assign n7 = n6 ? i3 : i2;
assign n8 = n4 ? i4 : n7;
assign n9 = n2 ? i4 : n8;
assign o1 = n9;
endmodule

module cf_fp_mul_p_3_4_18 (i1, i2, o1, o2, o3, o4, o5, o6, o7);
input  [7:0] i1;
input  [7:0] i2;
output o1;
output o2;
output o3;
output o4;
output o5;
output [3:0] o6;
output [9:0] o7;
wire   n1;
wire   [2:0] n2;
wire   [3:0] n3;
wire   n4;
wire   [2:0] n5;
wire   [3:0] n6;
wire   n7;
wire   n8;
wire   n9;
wire   n10;
wire   n11;
wire   n12;
wire   n13;
wire   n14;
wire   n15;
wire   n16;
wire   [3:0] n17;
wire   n18;
wire   [3:0] n19;
wire   [3:0] n20;
wire   [3:0] n21;
wire   n22;
wire   [4:0] n23;
wire   n24;
wire   [4:0] n25;
wire   [9:0] n26;
wire   [3:0] n27;
wire   s28_1;
wire   s28_2;
wire   s28_3;
wire   s28_4;
wire   s28_5;
wire   s29_1;
wire   s29_2;
wire   s29_3;
wire   s29_4;
wire   s29_5;
assign n1 = i1[7];
assign n2 = {i1[6],
  i1[5],
  i1[4]};
assign n3 = {i1[3],
  i1[2],
  i1[1],
  i1[0]};
assign n4 = i2[7];
assign n5 = {i2[6],
  i2[5],
  i2[4]};
assign n6 = {i2[3],
  i2[2],
  i2[1],
  i2[0]};
assign n7 = s29_2 | s29_1;
assign n8 = s28_2 | s28_1;
assign n9 = n7 | n8;
assign n10 = s29_3 & s28_4;
assign n11 = s29_4 & s28_3;
assign n12 = n10 | n11;
assign n13 = s29_3 | s28_3;
assign n14 = s29_4 | s28_4;
assign n15 = n1 ^ n4;
assign n16 = 1'b0;
assign n17 = {n16, n2};
assign n18 = 1'b0;
assign n19 = {n18, n5};
assign n20 = n17 + n19;
assign n21 = n20 - n27;
assign n22 = ~s29_5;
assign n23 = {n22, n3};
assign n24 = ~s28_5;
assign n25 = {n24, n6};
assign n26 = {{5{1'b0}}, n23} * {{5{1'b0}}, n25};
assign n27 = 4'b0011;
cf_fp_mul_p_3_4_19 s28 (i2, s28_1, s28_2, s28_3, s28_4, s28_5);
cf_fp_mul_p_3_4_19 s29 (i1, s29_1, s29_2, s29_3, s29_4, s29_5);
assign o7 = n26;
assign o6 = n21;
assign o5 = n15;
assign o4 = n14;
assign o3 = n13;
assign o2 = n12;
assign o1 = n9;
endmodule

module cf_fp_mul_p_3_4_19 (i1, o1, o2, o3, o4, o5);
input  [7:0] i1;
output o1;
output o2;
output o3;
output o4;
output o5;
wire   [2:0] n1;
wire   [3:0] n2;
wire   n3;
wire   [1:0] n4;
wire   n5;
wire   n6;
wire   n7;
wire   n8;
wire   n9;
wire   n10;
wire   n11;
wire   n12;
wire   n13;
wire   n14;
wire   n15;
wire   n16;
wire   n17;
wire   n18;
wire   n19;
wire   n20;
wire   s21_1;
wire   s22_1;
assign n1 = {i1[6],
  i1[5],
  i1[4]};
assign n2 = {i1[3],
  i1[2],
  i1[1],
  i1[0]};
assign n3 = n1[2];
assign n4 = {n1[1],
  n1[0]};
assign n5 = n4[1];
assign n6 = n4[0];
assign n7 = n6;
assign n8 = n3 & n5;
assign n9 = n8 & n7;
assign n10 = n2[3];
assign n11 = n9 & n10;
assign n12 = n2[3];
assign n13 = ~n12;
assign n14 = n9 & n13;
assign n15 = ~s21_1;
assign n16 = n14 & n15;
assign n17 = n9 & s21_1;
assign n18 = s22_1 & s21_1;
assign n19 = ~s21_1;
assign n20 = s22_1 & n19;
cf_fp_mul_p_3_4_21 s21 (n2, s21_1);
cf_fp_mul_p_3_4_20 s22 (n1, s22_1);
assign o5 = n20;
assign o4 = n18;
assign o3 = n17;
assign o2 = n16;
assign o1 = n11;
endmodule

module cf_fp_mul_p_3_4_20 (i1, o1);
input  [2:0] i1;
output o1;
wire   n1;
wire   [1:0] n2;
wire   n3;
wire   n4;
wire   n5;
wire   n6;
wire   n7;
wire   n8;
assign n1 = i1[2];
assign n2 = {i1[1],
  i1[0]};
assign n3 = n2[1];
assign n4 = n2[0];
assign n5 = n4;
assign n6 = n1 | n3;
assign n7 = n6 | n5;
assign n8 = ~n7;
assign o1 = n8;
endmodule

module cf_fp_mul_p_3_4_21 (i1, o1);
input  [3:0] i1;
output o1;
wire   n1;
wire   [2:0] n2;
wire   n3;
wire   [1:0] n4;
wire   n5;
wire   n6;
wire   n7;
wire   n8;
wire   n9;
wire   n10;
wire   n11;
assign n1 = i1[3];
assign n2 = {i1[2],
  i1[1],
  i1[0]};
assign n3 = n2[2];
assign n4 = {n2[1],
  n2[0]};
assign n5 = n4[1];
assign n6 = n4[0];
assign n7 = n6;
assign n8 = n1 | n3;
assign n9 = n5 | n7;
assign n10 = n8 | n9;
assign n11 = ~n10;
assign o1 = n11;
endmodule

