module mux_2x1(output out,input i0,input i1,input s);

wire s_not;

not (s_not,s);

wire w1,w2;
and a1(w1,i0,s_not);
and a2(w2,i1,s);

or o1(out,w1,w2);
endmodule