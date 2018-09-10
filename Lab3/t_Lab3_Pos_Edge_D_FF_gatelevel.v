module t_Lab3_Pos_Edge_D_FF_gatelevel;

	reg D,clock;
	wire Q,NQ;
	Lab3_Pos_Edge_D_FF_gatelevel M0(Q,NQ,D,clock);
	
	initial
		begin
			clock = 0;
			forever #10 clock=~clock;
		end
	initial #140 $finish;
	
	initial
		begin
			D=1'b0;
			#15 D=1'b1;
			#20 D=1'b0;
			#30 D=1'b1;
			#25 D=1'b0;
		end
endmodule