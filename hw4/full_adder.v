module full_adder(output z,output co,input x,input y,input cin);
	wire xr1;
	xor_2 x1(xr1,x,y);
	xor_2 x2(z,cin,xr1);

	wire a1,a2;
	and ag1(a1,x,y);
	and ag2(a2,cin,xr1);
	
	or o1(co,a1,a2);
endmodule