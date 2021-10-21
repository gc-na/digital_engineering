module seg7dec (
input [3:0] val,
output reg [6:0] seg // from MSB {A, B, C, D, E, F, G}
);
always @(*)
begin
case (val[3:0])
4'h0 : seg[6:0] = 7'b111_1110;
4'h1 : seg[6:0] = 7'b011_0000;
4'd2 : seg[6:0] = 7'b110_1101;     
4'd3 : seg[6:0] = 7'b111_1001;     
4'd4 : seg[6:0] = 7'b011_0011;     
4'd5 : seg[6:0] = 7'b101_1011;     
4'd6 : seg[6:0] = 7'b101_1111;     
4'd7 : seg[6:0] = 7'b111_0000;   
4'd8 : seg[6:0] = 7'b111_1111;   
4'd9 : seg[6:0] = 7'b111_1011;   
default: seg[6:0] = 7'b100_0111; // 4'hF
endcase
end
endmodule
