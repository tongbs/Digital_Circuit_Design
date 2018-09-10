module Lab3_Pos_Edge_D_FF_gatelevel(output Q, NQ, input D, clock);

	wire a1,a2,a3,a4;
	nand #(2) M1(a1,a4,a2);
	nand #(2) M2(a2,a1,clock);//a2=Sb
	nand #(2) M3(a3,a2,clock,a4);//a3=Rb
	nand #(2) M4(a4,a3,D);
	Lab3_SbRb_Latch_gatelevel M5(Q,NQ,a2,a3);
	
endmodule
	