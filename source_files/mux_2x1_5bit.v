module mux_2x1_5bit(output[4:0] out,input[4:0] i0,input[4:0] i1,input s);

mux_2x1 m0(out[0],i0[0],i1[0],s);
mux_2x1 m1(out[1],i0[1],i1[1],s);
mux_2x1 m2(out[2],i0[2],i1[2],s);
mux_2x1 m3(out[3],i0[3],i1[3],s);
mux_2x1 m4(out[4],i0[4],i1[4],s);

endmodule