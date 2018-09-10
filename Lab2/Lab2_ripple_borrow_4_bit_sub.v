module Lab2_ripple_borrow_4_bit_sub(output [4-1:0]Diff,output Bout,input [4-1:0]X,Y,input Bin);

wire a1,a2,a3;

Lab2_full_sub M0(Diff[0],a1,X[0],Y[0],Bin);
Lab2_full_sub M1(Diff[1],a2,X[1],Y[1],a1);
Lab2_full_sub M2(Diff[2],a3,X[2],Y[2],a2);
Lab2_full_sub M3(Diff[3],Bout,X[3],Y[3],a3);

endmodule