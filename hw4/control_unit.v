module control_unit(output[2:0] alu_op,output[1:0] blockSize,output jump,output memWrite,
output memRead,output regWrite,output memToReg,output regDst,output branch,output aluSrc,output leftShift,
output extendSelect,input[31:0] instruction);


wire noti0,noti1,noti2,noti3,noti4,noti5,noti26,noti27,
noti28,noti29,noti30,noti31;

wire sig_xor,sig_xori,sig_slt,sig_sltui,sig_sltu,
sig_slti,sig_lw,sig_lh,sig_lb,sig_lui,sig_sw,sig_sb,
sig_sh,sig_j,sig_jal,sig_jr,sig_beq,sig_bne,sig_add,sig_sub,
sig_and,sig_or,sig_sra,sig_srl,sig_sll,sig_sllv,sig_srlv,
sig_srav,sig_addi,sig_addiu,sig_andi,sig_ori,sig_lbu,sig_lhu,sig_nor,sig_subu;


not n0(noti0,instruction[0]);
not n1(noti1,instruction[1]);
not n2(noti2,instruction[2]);
not n3(noti3,instruction[3]);
not n4(noti4,instruction[4]);
not n5(noti5,instruction[5]);

not n26(noti26,instruction[26]);
not n27(noti27,instruction[27]);
not n28(noti28,instruction[28]);
not n29(noti29,instruction[29]);
not n30(noti30,instruction[30]);
not n31(noti31,instruction[31]);


and a0(sig_xor,noti31,noti30,noti29,noti28,noti27,noti26,instruction[5],noti4,noti3,instruction[2],instruction[1],noti0);
and a1(sig_xori,noti31,noti30,instruction[29],instruction[28],instruction[27],noti26);
and a2(sig_slt,noti31,noti30,noti29,noti28,noti27,noti26,instruction[5],noti4,instruction[3],noti2,instruction[1],noti0);
and a3(sig_sltui,noti31,noti30,instruction[29],noti28,instruction[27],instruction[26]);
and a4(sig_sltu,noti31,noti30,noti29,noti28,noti27,noti26,instruction[5],noti4,instruction[3],noti2,instruction[1],instruction[0]);
and a5(sig_slti,noti31,noti30,instruction[29],noti28,instruction[27],noti26);
and a6(sig_lw,instruction[31],noti30,noti29,noti28,instruction[27],instruction[26]);
and a7(sig_lh,instruction[31],noti30,noti29,noti28,noti27,instruction[26]);
and a8(sig_lb,instruction[31],noti30,noti29,noti28,noti27,noti26);
and a9(sig_lui,noti31,noti30,instruction[29],instruction[28],instruction[27],instruction[26]);
and a10(sig_sw,instruction[31],noti30,instruction[29],noti28,instruction[27],instruction[26]);
and a11(sig_sb,instruction[31],noti30,instruction[29],noti28,noti27,noti26);
and a12(sig_sh,instruction[31],noti30,instruction[29],noti28,noti27,instruction[26]);
and a13(sig_j,noti31,noti30,noti29,noti28,instruction[27],noti26);
and a14(sig_jal,noti31,noti30,noti29,noti28,instruction[27],instruction[26]);
and a15(sig_jr,noti31,noti30,noti29,noti28,noti27,noti26,noti5,noti4,instruction[3],noti2,noti1,noti0);
and a16(sig_beq,noti31,noti30,noti29,instruction[28],noti27,noti26);
and a17(sig_bne,noti31,noti30,noti29,instruction[28],noti27,instruction[26]);
and a18(sig_add,noti31,noti30,noti29,noti28,noti27,noti26,instruction[5],noti4,noti3,noti2,noti1,noti0);
and a19(sig_sub,noti31,noti30,noti29,noti28,noti27,noti26,instruction[5],noti4,noti3,noti2,instruction[1],noti0);
and a20(sig_and,noti31,noti30,noti29,noti28,noti27,noti26,instruction[5],noti4,noti3,instruction[2],noti1,noti0);
and a21(sig_or,noti31,noti30,noti29,noti28,noti27,noti26,instruction[5],noti4,noti3,instruction[2],noti1,instruction[0]);
and a22(sig_sra,noti31,noti30,noti29,noti28,noti27,noti26,noti5,noti4,noti3,noti2,instruction[1],instruction[0]);
and a23(sig_srl,noti31,noti30,noti29,noti28,noti27,noti26,noti5,noti4,noti3,noti2,instruction[1],noti0);
and a24(sig_sll,noti31,noti30,noti29,noti28,noti27,noti26,noti5,noti4,noti3,noti2,noti1,noti0);
and a25(sig_sllv,noti31,noti30,noti29,noti28,noti27,noti26,noti5,noti4,noti3,instruction[2],noti1,noti0);
and a26(sig_srlv,noti31,noti30,noti29,noti28,noti27,noti26,noti5,noti4,noti3,instruction[2],instruction[1],noti0);
and a27(sig_srav,noti31,noti30,noti29,noti28,noti27,noti26,noti5,noti4,noti3,instruction[2],instruction[1],instruction[0]);
and a28(sig_addi,noti31,noti30,instruction[29],noti28,noti27,noti26);
and a29(sig_addiu,noti31,noti30,instruction[29],noti28,noti27,instruction[26]);
and a30(sig_andi,noti31,noti30,instruction[29],instruction[28],noti27,noti26);
and a31(sig_ori,noti31,noti30,instruction[29],instruction[28],noti27,instruction[26]);
and a32(sig_lbu,instruction[31],noti30,noti29,instruction[28],noti27,noti26);
and a33(sig_lhu,instruction[31],noti30,noti29,instruction[28],noti27,instruction[26]);
and a34(sig_nor,noti31,noti30,noti29,noti28,noti27,noti26,instruction[5],noti4,noti3,instruction[2],instruction[1],instruction[0]);
and a35(sig_subu,noti31,noti30,noti29,noti28,noti27,noti26,instruction[5],noti4,noti3,noti2,instruction[1],instruction[0]);


or o0(memWrite,sig_sw,sig_sb,sig_sh);
or o1(memRead,sig_lw,sig_lh,sig_lb,sig_lbu,sig_lhu);
or o2(regWrite,sig_xor,sig_xori,sig_slt,sig_sltui,sig_sltu,sig_slti,sig_lw,sig_lh,sig_lb,sig_lui,sig_add,sig_sub,sig_and,sig_or,sig_sra,sig_srl,sig_sll,sig_sllv,sig_srlv,sig_srav,sig_addi,sig_addiu,sig_andi,sig_ori,sig_lbu,sig_lhu,sig_nor,sig_subu);
or o3(memToReg,sig_lw,sig_lh,sig_lb,sig_lbu,sig_lhu);
or o4(regDst,sig_xor,sig_slt,sig_sltu,sig_add,sig_sub,sig_and,sig_or,sig_sra,sig_srl,sig_sll,sig_sllv,sig_srlv,sig_srav,sig_nor,sig_subu);
or o5(branch,sig_beq,sig_bne);
or o6(aluSrc,sig_xori,sig_sltui,sig_slti,sig_lw,sig_lh,sig_lb,sig_sw,sig_sb,sig_sh,sig_addi,sig_addiu,sig_andi,sig_ori,sig_lbu,sig_lhu);
or o7(alu_op[2],sig_slt,sig_sltui,sig_sltu,sig_slti,sig_beq,sig_bne,sig_sub,sig_sra,sig_srl,sig_sll,sig_sllv,sig_srlv,sig_srav,sig_nor,sig_subu);
or o8(alu_op[1],sig_xor,sig_xori,sig_slt,sig_sltui,sig_sltu,sig_slti,sig_lw,sig_lh,sig_lb,sig_sw,sig_sb,sig_sh,sig_beq,sig_bne,sig_add,sig_sub,sig_addi,sig_addiu,sig_lbu,sig_lhu,sig_subu);
or o9(alu_op[0],sig_xor,sig_xori,sig_slt,sig_sltui,sig_sltu,sig_slti,sig_or,sig_ori,sig_nor);
or o10(blockSize[1],sig_xor,sig_xori,sig_slt,sig_sltui,sig_sltu,sig_slti,sig_lw,sig_lui,sig_sw,sig_add,sig_sub,sig_and,sig_or,sig_sra,sig_srl,sig_sll,sig_sllv,sig_srlv,sig_srav,sig_addi,sig_addiu,sig_andi,sig_ori,sig_nor,sig_subu);
or o11(blockSize[0],sig_xor,sig_xori,sig_slt,sig_sltui,sig_sltu,sig_slti,sig_lw,sig_lh,sig_sw,sig_sh,sig_add,sig_sub,sig_and,sig_or,sig_sra,sig_srl,sig_sll,sig_sllv,sig_srlv,sig_srav,sig_addi,sig_addiu,sig_andi,sig_ori,sig_lhu,sig_nor,sig_subu);
or o12(leftShift,sig_sll,sig_sllv);
or o13(jump,sig_j,sig_jal,sig_jr);
or o14(extendSelect,sig_sltui,sig_lw,sig_lh,sig_lb,sig_sw,sig_sb,sig_sh,sig_addiu);

endmodule