module concat(output [31:0] lui,input[15:0] imm);

buf b31(lui[31],imm[15]);
buf b30(lui[30],imm[14]);
buf b29(lui[29],imm[13]);
buf b28(lui[28],imm[12]);
buf b27(lui[27],imm[11]);
buf b26(lui[26],imm[10]);
buf b25(lui[25],imm[9]);
buf b24(lui[24],imm[8]);
buf b23(lui[23],imm[7]);
buf b22(lui[22],imm[6]);
buf b21(lui[21],imm[5]);
buf b20(lui[20],imm[4]);
buf b19(lui[19],imm[3]);
buf b18(lui[18],imm[2]);
buf b17(lui[17],imm[1]);
buf b16(lui[16],imm[0]);
buf b15(lui[15],1'b0);
buf b14(lui[14],1'b0);
buf b13(lui[13],1'b0);
buf b12(lui[12],1'b0);
buf b11(lui[11],1'b0);
buf b10(lui[10],1'b0);
buf b9(lui[9],1'b0);
buf b8(lui[8],1'b0);
buf b7(lui[7],1'b0);
buf b6(lui[6],1'b0);
buf b5(lui[5],1'b0);
buf b4(lui[4],1'b0);
buf b3(lui[3],1'b0);
buf b2(lui[2],1'b0);
buf b1(lui[1],1'b0);
buf b0(lui[0],1'b0);

endmodule