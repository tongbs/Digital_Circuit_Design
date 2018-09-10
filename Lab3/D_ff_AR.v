module D_ff_AR(Q,D,clk,reset);

input D,clk,reset;
output Q;
reg Q;

	always@(posedge clk,negedge reset) begin
		if(!reset) Q<=1'b0;
		else Q<=D;
	end
	
endmodule

