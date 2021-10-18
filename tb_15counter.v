module tb_mod15cnt ();
reg clk=1'b0;
reg nclr=1'b0;
wire [3:0] q;

mod15cnt aaa(clk, nclr, q);
always #5 clk = ~clk;
initial begin
$dumpfile("dump.vcd");
$dumpvars;
nclr=0;
#20;
nclr=1;
#300 $finish;
end
endmodule
