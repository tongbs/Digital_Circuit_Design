module Lab2_half_sub_dataflow(output D,B,input x,y);

assign B=((!x)&&y);
assign D=(((!x)&&y)||((!y)&&x));

endmodule