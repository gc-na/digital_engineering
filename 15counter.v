module mod15cnt (
input wire clk,
input wire nclr,
output reg [3:0] q
);
always @ (posedge clk or negedge nclr)
begin
  if(!nclr)
q <= 4'b0;
else
  if(q==4'b1110)
    q <= 4'b0;
  else
q <= q + 4'b1;
end
endmodule
