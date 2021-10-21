module upcnt4 (
input clk,
  output reg [3:0] q=0//initial setting
);
always @(posedge clk)
begin
q[3:0] <= q[3:0] + 4'h1;
end
endmodule
