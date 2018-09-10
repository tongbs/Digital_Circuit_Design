module Lab3_Mealy_SerialAdder_structural(output s, input x, y, clock, reset);

wire A,D; 

D_ff_AR M1(A,D,clock,reset);

assign D=((A&x)|(x&y)|(A&y));
assign s=((A&(~x)&(~y))|((~A)&x&(~y))|(A&x&y)|((~A)&(~x)&y));

endmodule