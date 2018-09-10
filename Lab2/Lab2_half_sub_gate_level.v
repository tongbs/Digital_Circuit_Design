module Lab2_half_sub_gate_level(output D,B,input x,y);
wire w1;

	not (w1,x);
	and (B,w1,y);
	xor (D,x,y);

endmodule