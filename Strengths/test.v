`timescale 1ns / 1ps
module test;
  reg in0,in1;
  wire out;
  main m1(out,in0,in1);
  initial 
    begin
            in0=1'b0;in1=1'b0;
    #250    in0=1'b1;in1=1'b0;
    #250    in0=1'b0;in1=1'b1;
    #250    in0=1'b1;in1=1'b1;
    end
endmodule
