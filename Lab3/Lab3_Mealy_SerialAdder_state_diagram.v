module Lab3_Mealy_SerialAdder_state_diagram(output reg s, input x, y, clock, reset);

reg  [2-1:0]state;
reg  [2-1:0]next_state;


parameter S0 = 1'b0,S1 = 1'b1;

	always@(posedge clock,negedge reset) begin
		if(reset == 1'b0)begin
			state <= S0;
		end
		else begin
			state <= next_state;
		end
	end
	
	always@(state,x,y) begin
		case(state)	
			S0: 
				if(x==1 && y==1)/*({x,y}==2'00)||({x,y}==2'01)||({x,y}==2'10)*/begin next_state = S1; end
			    else begin next_state = S0; end
			    
			S1: 
				if(x==0 && y==0)/*({x,y}==2'01)||({x,y}==2'10)||({x,y}==2'11)*/begin next_state = S0; end
			    else begin next_state = S1; end
				
		endcase
	end
	//{x,y}==2'00
	always@(state,x,y)begin
		case(state)
			S0: 
				if(x==y)begin s=1'b0; end
				else begin s=1'b1; end 
			/*if(({x,y}==2'00)||({x,y}==2'11)) s =1'b0;
			   else if(({x,y}==2'01)||({x,y}==2'10)) s=1'b1;
			   else begin end*/
			S1: 
				if(x==y) begin s=1'b1; end
				else begin s=1'b0; end
			/*if(({x,y}==2'00)||({x,y}==2'11)) s=1'b1;
			   else if(({x,y}==2'01)||{x,y}==2'10) s=1'b0;
			   else begin end*/
		endcase
	end
endmodule
 