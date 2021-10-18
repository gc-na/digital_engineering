module dff (
input wire clk,
input wire d,
input wire preset_n,
output reg q
);
always @ (posedge clk or negedge preset_n)
begin
if(!preset_n)
q <= 1'b1;
else
q <= d;
end
endmodule
