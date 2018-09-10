module t_Lab1_gatelevel_UDP;
 	wire F;
 	reg A1,B,A,C;

 	Lab1_gatelevel_UDP M3(F,A1,B,A,C);

	initial
	 begin
		A1=1'b0;B=1'b0;A=1'b0;C=1'b0;
		#100 A1=1'b1;B=1'b0;A=1'b0;C=1'b0;
		#100 A1=1'b0;B=1'b1;A=1'b0;C=1'b0;
		#100 A1=1'b0;B=1'b0;A=1'b1;C=1'b0;
		#100 A1=1'b0;B=1'b0;A=1'b0;C=1'b1;
		#100 A1=1'b1;B=1'b0;A=1'b0;C=1'b1;
		#100 A1=1'b0;B=1'b0;A=1'b1;C=1'b1;
		#100 A1=1'b0;B=1'b1;A=1'b0;C=1'b1;
		#100 A1=1'b0;B=1'b1;A=1'b1;C=1'b0;
		#100 A1=1'b1;B=1'b1;A=1'b0;C=1'b0;
		#100 A1=1'b1;B=1'b0;A=1'b1;C=1'b0;
		#100 A1=1'b1;B=1'b1;A=1'b1;C=1'b0;
		#100 A1=1'b1;B=1'b1;A=1'b0;C=1'b1;
		#100 A1=1'b1;B=1'b0;A=1'b1;C=1'b1;
		#100 A1=1'b0;B=1'b1;A=1'b1;C=1'b1;
		#100 A1=1'b1;B=1'b1;A=1'b1;C=1'b1;

	end
	initial #1600 $finish;
	 
endmodule


