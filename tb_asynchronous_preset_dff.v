`timescale 1ns/100ps
module tb_dff_clr;
reg D = 1'b1;
reg PRN = 1'b1;
reg CLK = 1'b0;
reg CLR = 1'b0;
wire Q;
always #5 CLK = ~CLK;
dff tb_clr (
.d (D),
.preset_n (PRN),
.clk (CLK),
.clr (CLR),
.q (Q)
);
initial
begin
  $dumpfile("dump.vcd");
$dumpvars;
#10 D = 1'b0;
#20 D = 1'b1;
#10 D = 1'b0;
#20 D = 1'b0;
#20 D = 1'b1;
#10 D = 1'b0;
#300 $finish;
end
initial
begin
#18 PRN = 1'b0;
#5 PRN = 1'b1;
#25 PRN = 1'b0;
#10 CLR=1'b1;
#10 PRN = 1'b1;
#18 PRN = 1'b0;
#5 PRN = 1'b1;
#25 PRN = 1'b0;
end
endmodule
