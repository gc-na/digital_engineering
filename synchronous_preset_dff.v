module dff (
input wire clk,
input wire d,
input wire preset_n,
input wire clr,
output reg q
);
  always @ (posedge clk)
begin
  if((~clr)&(~preset_n))
		 q <= 1'b1;
  else if(clr&(~preset_n))
      begin
         q = 1'b1;
      end
  else if((~clr)&preset_n)
      begin
         q = 1'b0;
      end
  else if(clk&preset_n&clr)
     begin
         q = d;
	  end
end
endmodule
