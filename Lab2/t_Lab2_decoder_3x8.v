module t_Lab2_decoder_3x8;

wire [8-1:0] Dout;
reg [3-1:0] A;
reg enable;

Lab2_decoder_3x8 M1(Dout,A,enable);

initial 
		begin
			enable=1'b0;
			#100 enable=1'b1; A=3'b000;
			repeat(7) #100 A=A+1'b1;
		end
initial #900 $finish;

initial begin 
		$monitor ($time, "%b %b %b",Dout,A,enable);
end

endmodule



/*initial 
		begin
			A[0]=1'b0;A[1]=1'b0;A[2]=1'b0;enable=1'b0;  //0000 0001 0010 0100 1000 0011 0101 0110 1100 1010 1001 1110 1101 1011 0111 1111 
			#100 A[0]=1'b0;A[1]=1'b0;A[2]=1'b0;enable=1'b1;
			#100 A[0]=1'b0;A[1]=1'b0;A[2]=1'b1;enable=1'b0;
			#100 A[0]=1'b0;A[1]=1'b1;A[2]=1'b0;enable=1'b0;
			#100 A[0]=1'b1;A[1]=1'b0;A[2]=1'b0;enable=1'b0;
			#100 A[0]=1'b0;A[1]=1'b0;A[2]=1'b1;enable=1'b1;
			#100 A[0]=1'b0;A[1]=1'b1;A[2]=1'b0;enable=1'b1;
			#100 A[0]=1'b0;A[1]=1'b1;A[2]=1'b1;enable=1'b0;
			#100 A[0]=1'b1;A[1]=1'b1;A[2]=1'b0;enable=1'b0;
			#100 A[0]=1'b1;A[1]=1'b0;A[2]=1'b1;enable=1'b0;
			#100 A[0]=1'b1;A[1]=1'b0;A[2]=1'b0;enable=1'b1;
			#100 A[0]=1'b1;A[1]=1'b1;A[2]=1'b1;enable=1'b0;
			#100 A[0]=1'b1;A[1]=1'b1;A[2]=1'b0;enable=1'b1;
			#100 A[0]=1'b1;A[1]=1'b0;A[2]=1'b1;enable=1'b1;
			#100 A[0]=1'b0;A[1]=1'b1;A[2]=1'b1;enable=1'b1;
			#100 A[0]=1'b1;A[1]=1'b1;A[2]=1'b1;enable=1'b1;
		end
initial #1600 $finish;

endmodule*/