`timescale 1ns/100ps
module dff_tb;
reg D = 1'b1;
reg PRN = 1'b1;
reg CLK = 1'b0;
wire Q;
always #5 CLK = ~CLK;
dff testdff (
.d (D),
.preset_n (PRN),
.clk (CLK),
.q (Q)
);
initial
begin
#10 D = 1'b0;
#20 D = 1'b1;
#10 D = 1'b0;
end
initial
begin
#18 PRN = 1'b0;
#5 PRN = 1'b1;
#25 PRN = 1'b0;
end
endmodule
