module xor_2(output out, input i1, input i2);

	wire _i1,_i2;

	wire a1,a2;

	not n1(_i1,i1);
	not n2(_i2,i2);

	and a1_2(a1,i1,_i2);
	and a_12(a2,_i1,i2);

	or o1(out,a1,a2);

endmodule