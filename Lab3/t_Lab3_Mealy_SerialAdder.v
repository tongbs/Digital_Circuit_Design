module t_Lab3_Mealy_SerialAdder;
	reg x,y,clock,reset;
	wire s;
	
	Lab3_Mealy_SerialAdder_state_diagram G0(s,x,y,clock,reset);
	Lab3_Mealy_SerialAdder_structural G1(s,x,y,clock,reset);
	
	initial #440 $finish;	
	initial	begin clock=1'b0;forever #20 clock=~clock;end
	
	initial begin
		reset = 1'b0;
		x=1'b0;y=1'b0;
		#40 reset = 1'b1;
		#40 x=1'b0;y=1'b0;
		#40 x=1'b0;y=1'b1;
		#40 x=1'b1;y=1'b0;
		#40 x=1'b1;y=1'b1;
		#40 x=1'b1;y=1'b1;//s1
		#40 x=1'b0;y=1'b1;
	    #40 x=1'b1;y=1'b0;
		#40 x=1'b1;y=1'b1;
		#40 x=1'b0;y=1'b0;
	end
endmodule