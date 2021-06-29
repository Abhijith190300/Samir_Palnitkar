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
  initial
   begin
   #125    $display("At time %t, \n \t in0 has value %b and strength %v,\n \t in1 has value %b and strength %v,\n \t out has value %b and strength %v \n\n",$time,in0,in0,in1,in1,out,out);
   #250    $display("At time %t, \n \t in0 has value %b and strength %v,\n \t in1 has value %b and strength %v,\n \t out has value %b and strength %v \n\n",$time,in0,in0,in1,in1,out,out);
   #250    $display("At time %t, \n \t in0 has value %b and strength %v,\n \t in1 has value %b and strength %v,\n \t out has value %b and strength %v \n\n",$time,in0,in0,in1,in1,out,out);
   #250    $display("At time %t, \n \t in0 has value %b and strength %v,\n \t in1 has value %b and strength %v,\n \t out has value %b and strength %v \n\n",$time,in0,in0,in1,in1,out,out);
   end
endmodule
