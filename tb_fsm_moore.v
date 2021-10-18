module tb_fsm_moore;

reg CLK, A, B, RESET;
wire [8:0] STATE;

  fsm_moore test1(.clk(CLK), .a(A), .b(B), .reset(RESET), .state(STATE));

initial begin
$dumpfile("dump.vcd");
$dumpvars;
  
A=0; B=0; CLK=0; RESET=1;

#7 RESET=0;
#2 A=1;
#53 A=0; B=1; 
  
#160 $finish;
end

always begin
#5 CLK=~CLK;
end

endmodule
