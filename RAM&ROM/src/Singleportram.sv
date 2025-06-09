
module Singleportram(
input [7:0] data,
input [5:0] addr,
input we,
input clock,
output [7:0] q
    );   
reg [7:0] ram [63:0];
reg [5:0] addr_reg;
always @(posedge clock)
begin 
  if(we)
    ram[addr] <= data;
    else
    addr_reg <= addr;
end
assign q= ram[addr_reg];    
endmodule
