module clkdiv (
input mclk, // Input clock. we are gonna use 1Mhz clock frequency
output reg clkout = 1'b0 // Output clock. we are gonna use 1Khz clock frequency
);
reg [19:0] rCnt = 20'h0_0000;
always @(posedge mclk)
begin
  if (rCnt[19:0] >= 999) begin//(create_clock / generate_clock) - 1
  rCnt[19:0] <= 20'h0_0000;
  clkout <= ~clkout;
  end
  else begin
  rCnt[19:0] <= rCnt[19:0] + 20'h0_0001;
  end
end
endmodule
