module testbench_rom;
  reg clock; 
  reg en; 
  reg [3:0] addr;
  wire [3:0] data; 
  
  ROM_CODE r1(
    .clock(clock),
    .en(en),
    .addr(addr),
    .data(data)
  );
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1, testbench_rom);       
      
      clock=1'b1;
      forever #5 clock = ~clock;
    end
  
  initial
    begin
      en = 1'b0;
      #10;                  
      
      en = 1'b1;      
      addr = 4'b1010;
      #10;
      
      addr = 4'b0110;
      #10;
      
      addr = 4'b0011;
      #10;
      
      en = 1'b0;
      addr = 4'b1111;
      #10;
            
      en = 1'b1;
      addr = 4'b1000;
      #10;
      
      addr = 4'b0000;
      #10;
      
      addr = 4'bxxxx;
      #10;
    end
  
  initial
    begin
      #80 $stop;
    end
  
endmodule  