module Lab1_gatelevel(F,A,B,C);
	output F;
	input  A,B,C;
	wire   w1,w3,w4,w5,w6;

	not G1(w1,A);
	and G2(w3,B,w1);
	and G3(w4,A,C);
	and G4(w5,B,C);
	or  G5(w6,w3,w4);
	or  G6(F,w6,w5);

endmodule 

	  