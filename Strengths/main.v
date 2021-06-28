`timescale 1ns / 1ps
module main(out,in0,in1);
  output out;
  input in0,in1;
  assign (supply0,pull1) out = in0;
  assign (strong1,weak0) out = in1;
  //  Order : Supply > Strong > Pull > Large (Only for Trireg ) > Weak > Medium(Only for trireg) > Small(Only for trireg) > highz
  // When in0=0 & in1=0, out would be 0 with supply strength ( Supply0 > weak0 )
  // When in0=1 & in1=0, out would be 1 with pull strength ( pull1 > weak0 )
  // When in0=0 & in1=1, out would be 0 with supply strength ( Supply0 > strong1 )
  // When in0=1 & in1=1, out would be 1 with strong strength ( strong1 > Pull1 )
endmodule
