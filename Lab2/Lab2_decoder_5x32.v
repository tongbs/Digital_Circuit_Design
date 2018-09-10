module Lab2_decoder_5x32 (output [32-1:0] Dout, input [5-1:0] A, input enable);

wire [4-1:0]Dout1;

Lab2_decoder_2x4 M0(Dout1,A[4:3],enable);
Lab2_decoder_3x8 M1(Dout[31:24],A[2:0],Dout1[3]);
Lab2_decoder_3x8 M2(Dout[23:16],A[2:0],Dout1[2]);
Lab2_decoder_3x8 M3(Dout[15:8],A[2:0],Dout1[1]);
Lab2_decoder_3x8 M4(Dout[7:0],A[2:0],Dout1[0]);

endmodule