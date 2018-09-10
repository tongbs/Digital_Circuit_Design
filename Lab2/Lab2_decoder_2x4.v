module Lab2_decoder_2x4(output [4-1:0] Dout, input [2-1:0] A, input enable);

assign 	   Dout[0] = (A[0])&&(A[1])&&enable;
assign	   Dout[1] = (~A[0])&&(A[1])&&enable;
assign     Dout[2] = (A[0])&&(~A[1])&&enable;
assign	   Dout[3] = (~A[0])&&(~A[1])&&enable;

endmodule

