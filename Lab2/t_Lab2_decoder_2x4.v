module t_Lab2_decoder_2x4;

wire [4-1:0]Dout;
reg enable;
reg [2-1:0] A;


Lab2_decoder_2x4 M0(Dout,A,enable);

initial 
		begin
			enable=1'b0;
			#100 enable=1'b1; A=2'b00;
			repeat(3) #100 A=A+1'b1;
		end
initial #500 $finish;

initial begin
		$monitor ($time ,"%b %b %b",Dout,A,enable);
end		

endmodule

/*initial 
		begin 
			A[0]=1'b0;A[1]=1'b0;enable=1'b0;//000 001 010 100 011 101 110 111
			#100 A[0]=1'b0;A[1]=1'b0;enable=1'b1; $display("Dout = %d",Dout);
			#100 A[0]=1'b0;A[1]=1'b1;enable=1'b0; $display("Dout = %d",Dout);
			#100 A[0]=1'b1;A[1]=1'b0;enable=1'b0; $display("Dout = %d",Dout);
			#100 A[0]=1'b0;A[1]=1'b1;enable=1'b1; $display("Dout = %d",Dout);
			#100 A[0]=1'b1;A[1]=1'b0;enable=1'b1; $display("Dout = %d",Dout);
			#100 A[0]=1'b1;A[1]=1'b1;enable=1'b0; $display("Dout = %d",Dout);
			#100 A[0]=1'b1;A[1]=1'b1;enable=1'b1; $display("Dout = %d",Dout);
		end
	initial #800 $finish;
endmodule
*/			
