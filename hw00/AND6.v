module MyAND6 (in_x, out_y);
	input [5:0] in_x;
	output out_y;

	assign out_y = in_x[0] & in_x[1] & in_x[2] & in_x[3] & in_x[4] & in_x[5];

endmodule

