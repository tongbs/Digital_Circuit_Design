module Lab1_gatelevel_UDP(F,A1,B,A,C);
	output	F;
	input	A1,B,A,C;
	wire	w1,w2,w3;
	
	not     G1(w1,A1);
	Lab1_UDP M00(w2,w1,B,A,C);
	and	G2(w3,B,C);
	or	G7(F,w3,w2);
endmodule
