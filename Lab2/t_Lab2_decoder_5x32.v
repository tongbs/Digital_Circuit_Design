module t_Lab2_decoder_5x32 ;

wire [32-1:0] Dout;
reg [5-1:0] A;
reg enable;

Lab2_decoder_5x32 M1(Dout,A,enable);

initial 
		begin
		enable=1'b0;
		#100 enable=1'b1; A=5'b00000;
		repeat(31) #100 A=A+1'b1;
		end
initial #3300 $finish;

initial begin
		$monitor ($time,"%b %b %d",Dout,A,enable);
end

endmodule

/*reg [4:0] A;
reg enable;
wire [31:0]Dout;
Lab2_decoder_2x4 M0(Dout, A, enable);
Lab2_decoder_3x8 M1(Dout, A, enable);

initial
	begin
	A=3'b000; enable=1'b1;
	repeat (7) begin
		#10 A = A + 2'b01;
	end
	#10 A = 3'b000; enable = 0;
	repeat (7) begin
		#10 A = A + 2'b01;
	end
	
initial
	begin
	$display("enable A[4] A[3] A[2] A[1] A[0] D[31] D[30] D[29] D[28] D[27] D[26] D[25] D[24] D[23] D[22] D[21] D[20] D[19] D[18] D[17] D[16] D[15] D[14] D[13] D[12] D[11] D[10] D[9] D[8] D[7] D[6] D[5] D[4] D[3] D[2] D[1] D[0]");
	$monitor("%b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b",enable, A[4], A[3], A[2], A[1], A[0], D[31], D[30], D[29], D[28], D[27], D[26], D[25], D[24], D[23], D[22], D[21], D[20], D[19], D[18], D[17], D[16], D[15], D[14], D[13], D[12], D[11], D[10], D[9], D[8], D[7], D[6], D[7], D[6], D[5], D[4], D[3], D[2], D[1], D[0]);
	end
	
initial #200 $finish;
endmodule




*/







