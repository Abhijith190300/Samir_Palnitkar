Reference : https://sagar5258.blogspot.com/2016/06/strength-in-verilog.html
<br/>

##### Strength Order : Supply > Strong > Pull > Large (Only for Trireg ) > Weak > Medium(Only for trireg) > Small(Only for trireg) > Highz
<br/>
In this example, I have driven the output(out) with two inputs(in0 and in1) of different strengths and observed the output. <br/> 
in0 has the strength (supply0,pull1) and in1 has the strength (strong1,weak0) 
<br/>

* When in0=0 & in1=0, out would be 0 with supply strength ( Supply0 > weak0 )

* When in0=1 & in1=0, out would be 1 with pull strength ( pull1 > weak0 )

* When in0=0 & in1=1, out would be 0 with supply strength ( Supply0 > strong1 )

* When in0=1 & in1=1, out would be 1 with strong strength ( strong1 > Pull1 )
