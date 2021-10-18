module fsm_moore (clk, a, b, reset, state);
input clk, a, b, reset;
output reg [8:0] state; 
  
parameter [8:0]
IDLE = 8'b00000000,
A0 = 8'b00000001,
A1 = 8'b00000010,
A2 = 8'b00000100,
A3 = 8'b00001000,
B0 = 8'b00010000,
B1 = 8'b00100000,
B2 = 8'b01000000,
B3 = 8'b10000000;

  always@ (posedge clk) begin
    if(reset)
      state <= IDLE;
	case (state)
		IDLE :begin
          if(a) state = A0;
          else if(b) state = B0;
			end
		A0 :begin
          if(a) state = A1;
			end
		A1 :begin
          if(a) state = A2;
			end
		A2 :begin
          if(a) state = A3;
			end
		A3 :begin
          if(a) state = IDLE;
			end
		B0 :begin
          if(b) state = B1;
			end
		B1 :begin
          if(b) state = B2;
			end
		B2 :begin
          if(b) state = B3;
			end
		B3 :begin
          if(b) state = IDLE;
			end      
	endcase
end
endmodule
