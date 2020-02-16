module adder_13(output[12:0] z,input[12:0] x,input[12:0] y);

	wire[12:0] c;
	full_adder f0(z[0],c[0],x[0],y[0],1'b0);
	full_adder f1(z[1],c[1],x[1],y[1],c[0]);
	full_adder f2(z[2],c[2],x[2],y[2],c[1]);
	full_adder f3(z[3],c[3],x[3],y[3],c[2]);
	full_adder f4(z[4],c[4],x[4],y[4],c[3]);
	full_adder f5(z[5],c[5],x[5],y[5],c[4]);
	full_adder f6(z[6],c[6],x[6],y[6],c[5]);
	full_adder f7(z[7],c[7],x[7],y[7],c[6]);
	full_adder f8(z[8],c[8],x[8],y[8],c[7]);
	full_adder f9(z[9],c[9],x[9],y[9],c[8]);
	full_adder f10(z[10],c[10],x[10],y[10],c[9]);
	full_adder f11(z[11],c[11],x[11],y[11],c[10]);
	full_adder f12(z[12],c[12],x[12],y[12],c[11]);
	
endmodule