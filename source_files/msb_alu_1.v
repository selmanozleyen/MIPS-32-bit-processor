module msb_alu_1(output res, output ci_o,output v,output set,
input ci,input ai,input bi,input op2,input op1,input op0,input lessi);

	wire o_xor;
	xor_2 x(o_xor,bi,op2);
	
	wire o_and_1,o_or_1;
	and(o_and_1,ai,o_xor);
	or(o_or_1,ai,o_xor);
	
	wire o_not_1;
	not(o_not_1,o_and_1);
	
	wire ai_bi_or;
	or(ai_bi_or,ai,bi);
	wire nor_res;
	not(nor_res,ai_bi_or);
	
	
	wire o_and_2;
	and(o_and_2,o_not_1,o_or_1);
	
	wire o_and_3;
	and(o_and_3,o_and_2,ci);
	
	or(ci_o,o_and_1,o_and_3);
	
	wire o_or_3;
	or(o_or_3,ci,o_and_2);
	
	wire o_and_4,o_not_2;
	not(o_not_2,o_and_3);
	and (o_and_4,o_not_2,o_or_3);
	
	
	wire dum;
	mux_8x1 m1(res,o_and_1,o_or_1,o_and_4,o_and_2,
		dum,nor_res,o_and_1,lessi,op2,op1,op0);
	
	//mux_4x1 m1(res,o_and_1,o_or_1,o_and_4,lessi,op1,op0);
	xor_2 x1(v,ci_o,ci);
	xor_2 x2(set,o_and_4,v);
	
	
endmodule