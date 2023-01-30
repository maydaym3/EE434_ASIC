module ADD8 (i_A, i_B, i_C, o_S, o_C);
	input [7:0] i_A, i_B;
	input i_C;
	output [7:0] o_S;
	output o_C;

	assign {o_C, o_S} = i_A + i_B + i_C;
endmodule

