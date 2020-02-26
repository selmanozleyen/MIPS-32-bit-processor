module mux_4x1(output out,input i0,input i1,input i2,input i3,input s1,input s0);

  wire not_s0,not_s1; 
  wire w1,w2,w3,w4;

  not not_0(not_s0,s0);
  not not_1(not_s1,s1);

  and a1(w1,i0,not_s1,not_s0);
  and a2(w2,i1,not_s1,s0);
  and a3(w3,i2,s1,not_s0);
  and a4(w4,i3,s1,s0);

  or or_1(out,w1,w2,w3,w4);

	
endmodule