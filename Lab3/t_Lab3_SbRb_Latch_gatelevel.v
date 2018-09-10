module  t_Lab3_SbRb_Latch_gatelevel;
	reg Sb,Rb;
	wire Q,NQ;
	
	Lab3_SbRb_Latch_gatelevel M0(Q,NQ,Sb,Rb);
	
	initial
		begin
		Sb=1'b1;Rb=1'b0; //10
		#10 Rb=1'b1; //11
		#10 Sb=1'b0; //01
		#10 Sb=1'b1; //11
		#10 Sb=1'b0;Rb=1'b0; //00
		#10 Sb=1'b1;Rb=1'b1;//11
		end
initial #60 $finish;

endmodule