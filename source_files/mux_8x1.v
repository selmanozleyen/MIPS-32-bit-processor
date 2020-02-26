module mux_8x1(output out,input i0,input i1,input i2,input i3,input i4,
input i5,input i6,input i7,input s2,input s1,input s0);

wire a,b; 
mux_4x1 m1(a,i0,i1,i2,i3,s1,s0);
mux_4x1 m2(b,i4,i5,i6,i7,s1,s0);

wire snot;
not n1(snot,s2);

wire w1,w2;

and a1(w1,snot,a);
and a2(w2,s2,b);

or o1(out,w1,w2);

endmodule