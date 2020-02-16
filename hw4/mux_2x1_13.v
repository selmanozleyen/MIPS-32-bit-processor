module mux_2x1_13(output[12:0] out,input[12:0] i0,input[12:0] i1,input s);

mux_2x1 m0(out[0],i0[0],i1[0],s);
mux_2x1 m1(out[1],i0[1],i1[1],s);
mux_2x1 m2(out[2],i0[2],i1[2],s);
mux_2x1 m3(out[3],i0[3],i1[3],s);
mux_2x1 m4(out[4],i0[4],i1[4],s);
mux_2x1 m5(out[5],i0[5],i1[5],s);
mux_2x1 m6(out[6],i0[6],i1[6],s);
mux_2x1 m7(out[7],i0[7],i1[7],s);
mux_2x1 m8(out[8],i0[8],i1[8],s);
mux_2x1 m9(out[9],i0[9],i1[9],s);
mux_2x1 m10(out[10],i0[10],i1[10],s);
mux_2x1 m11(out[11],i0[11],i1[11],s);
mux_2x1 m12(out[12],i0[12],i1[12],s);

endmodule