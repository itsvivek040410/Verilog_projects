module testbench;
  reg [7:0] data; 
  reg [5:0] addr;
  reg we;
  reg clock; 
  wire [7:0] q;
  
  Singleportram spr1 (
    .data(data),
    .addr(addr),
    .we(we),
    .clock(clock),
    .q(q)
  );
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1, testbench);       
      clock=1'b1;
      forever #5 clock = ~clock;
    end
 
  initial
    begin
      data = 8'h01;
      addr = 5'd0;
      we = 1'b1;
      #10;   
	  data = 8'h02;
      addr = 5'd1;     
      #10;
      data = 8'h03;
      addr = 5'd2;     
      #10;
      addr = 5'd0;
      we = 1'b0;
      #10;
      addr = 5'd1;
      #10;
      addr = 5'd2;
      #10;
      data = 8'h04;
      addr = 5'd1;
      we = 1'b1;
      #10;
      addr = 5'd1;
      we = 1'b0;
      #10;
      addr = 5'd3;
      #10;
    end
  
  initial
    #90 $stop;
  
endmodule