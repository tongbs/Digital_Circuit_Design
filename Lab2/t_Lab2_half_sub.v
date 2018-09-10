module t_Lab2_half_sub;
reg x,y;
wire B,D;

Lab2_half_sub_gate_level M0(D,B,x,y);
Lab2_half_sub_dataflow M1(D,B,x,y);
Lab2_half_sub_behavior M2(D,B,x,y);

initial 
		begin
		x=1'b0;y=1'b0; //x=0,y=0
		#50x=1'b0;y=1'b1;//
		#50x=1'b1;y=1'b0;
		#50x=1'b1;y=1'b1;//x=1,y=1
		end
initial #200 $finish;
endmodule
