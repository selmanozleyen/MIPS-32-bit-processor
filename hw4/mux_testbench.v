`define DELAY 20
module mux_testbench(); 
reg c3,c2,c1,c0,s1,s0;
wire out;

mux_4x1 muxx(out,c0,c1, c2, c3 ,s1,s0);

initial begin
c0 = 1'b0; c1 = 1'b0; c2 = 1'b0 ;c3 = 1'b0;s0 = 1'b0;s1 = 1'b0;
#`DELAY;
c0 = 1'b0; c1 = 1'b0; c2 = 1'b0 ;c3 = 1'b0;s0 = 1'b0;s1 = 1'b1;
#`DELAY;
c0 = 1'b0; c1 = 1'b0; c2 = 1'b0 ;c3 = 1'b0;s0 = 1'b1;s1 = 1'b0;
#`DELAY;
c0 = 1'b0; c1 = 1'b0; c2 = 1'b0 ;c3 = 1'b0;s0 = 1'b1;s1 = 1'b1;
#`DELAY;
c0 = 1'b0; c1 = 1'b0; c2 = 1'b0 ;c3 = 1'b1;s0 = 1'b0;s1 = 1'b0;
#`DELAY;
c0 = 1'b0; c1 = 1'b0; c2 = 1'b0 ;c3 = 1'b1;s0 = 1'b0;s1 = 1'b1;
#`DELAY;
c0 = 1'b0; c1 = 1'b0; c2 = 1'b0 ;c3 = 1'b1;s0 = 1'b1;s1 = 1'b0;
#`DELAY;
c0 = 1'b0; c1 = 1'b0; c2 = 1'b0 ;c3 = 1'b1;s0 = 1'b1;s1 = 1'b1;
#`DELAY;
c0 = 1'b0; c1 = 1'b0; c2 = 1'b1 ;c3 = 1'b0;s0 = 1'b0;s1 = 1'b0;
#`DELAY;
c0 = 1'b0; c1 = 1'b0; c2 = 1'b1 ;c3 = 1'b0;s0 = 1'b0;s1 = 1'b1;
#`DELAY;
c0 = 1'b0; c1 = 1'b0; c2 = 1'b1 ;c3 = 1'b0;s0 = 1'b1;s1 = 1'b0;
#`DELAY;
c0 = 1'b0; c1 = 1'b0; c2 = 1'b1 ;c3 = 1'b0;s0 = 1'b1;s1 = 1'b1;
#`DELAY;
c0 = 1'b0; c1 = 1'b0; c2 = 1'b1 ;c3 = 1'b1;s0 = 1'b0;s1 = 1'b0;
#`DELAY;
c0 = 1'b0; c1 = 1'b0; c2 = 1'b1 ;c3 = 1'b1;s0 = 1'b0;s1 = 1'b1;
#`DELAY;
c0 = 1'b0; c1 = 1'b0; c2 = 1'b1 ;c3 = 1'b1;s0 = 1'b1;s1 = 1'b0;
#`DELAY;
c0 = 1'b0; c1 = 1'b0; c2 = 1'b1 ;c3 = 1'b1;s0 = 1'b1;s1 = 1'b1;
#`DELAY;
c0 = 1'b0; c1 = 1'b1; c2 = 1'b0 ;c3 = 1'b0;s0 = 1'b0;s1 = 1'b0;
#`DELAY;
c0 = 1'b0; c1 = 1'b1; c2 = 1'b0 ;c3 = 1'b0;s0 = 1'b0;s1 = 1'b1;
#`DELAY;
c0 = 1'b0; c1 = 1'b1; c2 = 1'b0 ;c3 = 1'b0;s0 = 1'b1;s1 = 1'b0;
#`DELAY;
c0 = 1'b0; c1 = 1'b1; c2 = 1'b0 ;c3 = 1'b0;s0 = 1'b1;s1 = 1'b1;
#`DELAY;
c0 = 1'b0; c1 = 1'b1; c2 = 1'b0 ;c3 = 1'b1;s0 = 1'b0;s1 = 1'b0;
#`DELAY;
c0 = 1'b0; c1 = 1'b1; c2 = 1'b0 ;c3 = 1'b1;s0 = 1'b0;s1 = 1'b1;
#`DELAY;
c0 = 1'b0; c1 = 1'b1; c2 = 1'b0 ;c3 = 1'b1;s0 = 1'b1;s1 = 1'b0;
#`DELAY;
c0 = 1'b0; c1 = 1'b1; c2 = 1'b0 ;c3 = 1'b1;s0 = 1'b1;s1 = 1'b1;
#`DELAY;
c0 = 1'b0; c1 = 1'b1; c2 = 1'b1 ;c3 = 1'b0;s0 = 1'b0;s1 = 1'b0;
#`DELAY;
c0 = 1'b0; c1 = 1'b1; c2 = 1'b1 ;c3 = 1'b0;s0 = 1'b0;s1 = 1'b1;
#`DELAY;
c0 = 1'b0; c1 = 1'b1; c2 = 1'b1 ;c3 = 1'b0;s0 = 1'b1;s1 = 1'b0;
#`DELAY;
c0 = 1'b0; c1 = 1'b1; c2 = 1'b1 ;c3 = 1'b0;s0 = 1'b1;s1 = 1'b1;
#`DELAY;
c0 = 1'b0; c1 = 1'b1; c2 = 1'b1 ;c3 = 1'b1;s0 = 1'b0;s1 = 1'b0;
#`DELAY;
c0 = 1'b0; c1 = 1'b1; c2 = 1'b1 ;c3 = 1'b1;s0 = 1'b0;s1 = 1'b1;
#`DELAY;
c0 = 1'b0; c1 = 1'b1; c2 = 1'b1 ;c3 = 1'b1;s0 = 1'b1;s1 = 1'b0;
#`DELAY;
c0 = 1'b0; c1 = 1'b1; c2 = 1'b1 ;c3 = 1'b1;s0 = 1'b1;s1 = 1'b1;
#`DELAY;
c0 = 1'b1; c1 = 1'b0; c2 = 1'b0 ;c3 = 1'b0;s0 = 1'b0;s1 = 1'b0;
#`DELAY;
c0 = 1'b1; c1 = 1'b0; c2 = 1'b0 ;c3 = 1'b0;s0 = 1'b0;s1 = 1'b1;
#`DELAY;
c0 = 1'b1; c1 = 1'b0; c2 = 1'b0 ;c3 = 1'b0;s0 = 1'b1;s1 = 1'b0;
#`DELAY;
c0 = 1'b1; c1 = 1'b0; c2 = 1'b0 ;c3 = 1'b0;s0 = 1'b1;s1 = 1'b1;
#`DELAY;
c0 = 1'b1; c1 = 1'b0; c2 = 1'b0 ;c3 = 1'b1;s0 = 1'b0;s1 = 1'b0;
#`DELAY;
c0 = 1'b1; c1 = 1'b0; c2 = 1'b0 ;c3 = 1'b1;s0 = 1'b0;s1 = 1'b1;
#`DELAY;
c0 = 1'b1; c1 = 1'b0; c2 = 1'b0 ;c3 = 1'b1;s0 = 1'b1;s1 = 1'b0;
#`DELAY;
c0 = 1'b1; c1 = 1'b0; c2 = 1'b0 ;c3 = 1'b1;s0 = 1'b1;s1 = 1'b1;
#`DELAY;
c0 = 1'b1; c1 = 1'b0; c2 = 1'b1 ;c3 = 1'b0;s0 = 1'b0;s1 = 1'b0;
#`DELAY;
c0 = 1'b1; c1 = 1'b0; c2 = 1'b1 ;c3 = 1'b0;s0 = 1'b0;s1 = 1'b1;
#`DELAY;
c0 = 1'b1; c1 = 1'b0; c2 = 1'b1 ;c3 = 1'b0;s0 = 1'b1;s1 = 1'b0;
#`DELAY;
c0 = 1'b1; c1 = 1'b0; c2 = 1'b1 ;c3 = 1'b0;s0 = 1'b1;s1 = 1'b1;
#`DELAY;
c0 = 1'b1; c1 = 1'b0; c2 = 1'b1 ;c3 = 1'b1;s0 = 1'b0;s1 = 1'b0;
#`DELAY;
c0 = 1'b1; c1 = 1'b0; c2 = 1'b1 ;c3 = 1'b1;s0 = 1'b0;s1 = 1'b1;
#`DELAY;
c0 = 1'b1; c1 = 1'b0; c2 = 1'b1 ;c3 = 1'b1;s0 = 1'b1;s1 = 1'b0;
#`DELAY;
c0 = 1'b1; c1 = 1'b0; c2 = 1'b1 ;c3 = 1'b1;s0 = 1'b1;s1 = 1'b1;
#`DELAY;
c0 = 1'b1; c1 = 1'b1; c2 = 1'b0 ;c3 = 1'b0;s0 = 1'b0;s1 = 1'b0;
#`DELAY;
c0 = 1'b1; c1 = 1'b1; c2 = 1'b0 ;c3 = 1'b0;s0 = 1'b0;s1 = 1'b1;
#`DELAY;
c0 = 1'b1; c1 = 1'b1; c2 = 1'b0 ;c3 = 1'b0;s0 = 1'b1;s1 = 1'b0;
#`DELAY;
c0 = 1'b1; c1 = 1'b1; c2 = 1'b0 ;c3 = 1'b0;s0 = 1'b1;s1 = 1'b1;
#`DELAY;
c0 = 1'b1; c1 = 1'b1; c2 = 1'b0 ;c3 = 1'b1;s0 = 1'b0;s1 = 1'b0;
#`DELAY;
c0 = 1'b1; c1 = 1'b1; c2 = 1'b0 ;c3 = 1'b1;s0 = 1'b0;s1 = 1'b1;
#`DELAY;
c0 = 1'b1; c1 = 1'b1; c2 = 1'b0 ;c3 = 1'b1;s0 = 1'b1;s1 = 1'b0;
#`DELAY;
c0 = 1'b1; c1 = 1'b1; c2 = 1'b0 ;c3 = 1'b1;s0 = 1'b1;s1 = 1'b1;
#`DELAY;
c0 = 1'b1; c1 = 1'b1; c2 = 1'b1 ;c3 = 1'b0;s0 = 1'b0;s1 = 1'b0;
#`DELAY;
c0 = 1'b1; c1 = 1'b1; c2 = 1'b1 ;c3 = 1'b0;s0 = 1'b0;s1 = 1'b1;
#`DELAY;
c0 = 1'b1; c1 = 1'b1; c2 = 1'b1 ;c3 = 1'b0;s0 = 1'b1;s1 = 1'b0;
#`DELAY;
c0 = 1'b1; c1 = 1'b1; c2 = 1'b1 ;c3 = 1'b0;s0 = 1'b1;s1 = 1'b1;
#`DELAY;
c0 = 1'b1; c1 = 1'b1; c2 = 1'b1 ;c3 = 1'b1;s0 = 1'b0;s1 = 1'b0;
#`DELAY;
c0 = 1'b1; c1 = 1'b1; c2 = 1'b1 ;c3 = 1'b1;s0 = 1'b0;s1 = 1'b1;
#`DELAY;
c0 = 1'b1; c1 = 1'b1; c2 = 1'b1 ;c3 = 1'b1;s0 = 1'b1;s1 = 1'b0;
#`DELAY;
c0 = 1'b1; c1 = 1'b1; c2 = 1'b1 ;c3 = 1'b1;s0 = 1'b1;s1 = 1'b1;
#`DELAY;


end
 
initial
begin
$monitor("time = %2d, c0 =%1b, c1=%1b, c2=%1b, c3=%1b, s1=%1b , s0 = %1b, out =%1b"
, $time, c0, c1, c2, c3, s1,s0,out);
end
 
endmodule