module t_Lab1_dataflow;
	wire F;
	reg A,B,C;

	Lab1_dataflow M2(F,A,B,C);

	initial
	  begin
		 A=1'b0;B=1'b0;C=1'b0;
		#100 A=1'b0;B=1'b0;C=1'b1;
		#100 A=1'b0;B=1'b1;C=1'b0;
		#100 A=1'b0;B=1'b1;C=1'b1;
		#100 A=1'b1;B=1'b0;C=1'b0;
		#100 A=1'b1;B=1'b0;C=1'b1;
		#100 A=1'b1;B=1'b1;C=1'b0;
		#100 A=1'b1;B=1'b1;C=1'b1;
	end
	initial #800 $finish;
endmodule

