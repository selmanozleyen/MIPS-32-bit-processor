module alu_32(output c_out,output v, output z,
output[31:0] out,input[31:0] a,input[31:0] b,input[2:0] op,
input left_shift_sig,input arithmetic_sig,input[4:0] amt,input valShift);

wire[30:0] c;
wire[31:0] res;
wire set;
alu_1 lsb(res[0],c[0],op[2],a[0],b[0],op[2],op[1],op[0],set);

alu_1 a1(res[1],c[1],c[0],a[1],b[1],op[2],op[1],op[0],1'B0);

alu_1 a2(res[2],c[2],c[1],a[2],b[2],op[2],op[1],op[0],1'B0);

alu_1 a3(res[3],c[3],c[2],a[3],b[3],op[2],op[1],op[0],1'B0);

alu_1 a4(res[4],c[4],c[3],a[4],b[4],op[2],op[1],op[0],1'B0);

alu_1 a5(res[5],c[5],c[4],a[5],b[5],op[2],op[1],op[0],1'B0);

alu_1 a6(res[6],c[6],c[5],a[6],b[6],op[2],op[1],op[0],1'B0);

alu_1 a7(res[7],c[7],c[6],a[7],b[7],op[2],op[1],op[0],1'B0);

alu_1 a8(res[8],c[8],c[7],a[8],b[8],op[2],op[1],op[0],1'B0);

alu_1 a9(res[9],c[9],c[8],a[9],b[9],op[2],op[1],op[0],1'B0);

alu_1 a10(res[10],c[10],c[9],a[10],b[10],op[2],op[1],op[0],1'B0);

alu_1 a11(res[11],c[11],c[10],a[11],b[11],op[2],op[1],op[0],1'B0);

alu_1 a12(res[12],c[12],c[11],a[12],b[12],op[2],op[1],op[0],1'B0);

alu_1 a13(res[13],c[13],c[12],a[13],b[13],op[2],op[1],op[0],1'B0);

alu_1 a14(res[14],c[14],c[13],a[14],b[14],op[2],op[1],op[0],1'B0);
alu_1 a15(res[15],c[15],c[14],a[15],b[15],op[2],op[1],op[0],1'B0);
alu_1 a16(res[16],c[16],c[15],a[16],b[16],op[2],op[1],op[0],1'B0);
alu_1 a17(res[17],c[17],c[16],a[17],b[17],op[2],op[1],op[0],1'B0);
alu_1 a18(res[18],c[18],c[17],a[18],b[18],op[2],op[1],op[0],1'B0);
alu_1 a19(res[19],c[19],c[18],a[19],b[19],op[2],op[1],op[0],1'B0);
alu_1 a20(res[20],c[20],c[19],a[20],b[20],op[2],op[1],op[0],1'B0);
alu_1 a21(res[21],c[21],c[20],a[21],b[21],op[2],op[1],op[0],1'B0);
alu_1 a22(res[22],c[22],c[21],a[22],b[22],op[2],op[1],op[0],1'B0);
alu_1 a23(res[23],c[23],c[22],a[23],b[23],op[2],op[1],op[0],1'B0);
alu_1 a24(res[24],c[24],c[23],a[24],b[24],op[2],op[1],op[0],1'B0);
alu_1 a25(res[25],c[25],c[24],a[25],b[25],op[2],op[1],op[0],1'B0);
alu_1 a26(res[26],c[26],c[25],a[26],b[26],op[2],op[1],op[0],1'B0);
alu_1 a27(res[27],c[27],c[26],a[27],b[27],op[2],op[1],op[0],1'B0);
alu_1 a28(res[28],c[28],c[27],a[28],b[28],op[2],op[1],op[0],1'B0);
alu_1 a29(res[29],c[29],c[28],a[29],b[29],op[2],op[1],op[0],1'B0);
alu_1 a30(res[30],c[30],c[29],a[30],b[30],op[2],op[1],op[0],1'B0);

msb_alu_1 a31(res[31],c_out,v,set,c[30],a[31],b[31],op[2],op[1],op[0],1'B0);


wire znot;
or o1(znot,res[0],res[1],res[2],res[3],res[4],res[4],res[5],res[6]
,res[7],res[8],res[9],res[10],res[11],res[12],res[13],res[14]
,res[15],res[16],res[17],res[18],res[19],res[20],res[21],res[22]
,res[23],res[24],res[25],res[26],res[27],res[28],res[29],res[30],res[31]
);

not n1(z,znot);


wire[31:0] dum2,dum3,shifted;

wire shift_sig,op1_not,op0_not,rev;
not(op1_not,op[1]);
not(op0_not,op[0]);
and (shift_sig,op1_not,op0_not,op[2]);
not n2(rev,b[1]);
//if srlv  srav sllv
wire[4:0] last_shamt;
mux_2x1_5bit selectamt(last_shamt,amt,a[4:0],valShift);
shifter s1(shifted,b,left_shift_sig,arithmetic_sig,last_shamt);

mux_2x1_32 m1(out,res,shifted,shift_sig);




endmodule