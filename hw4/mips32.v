module mips32(clk);
input clk;

wire[31:0] instruction;
reg[12:0] ins_address;
initial ins_address = -1;
wire branch_mux;


//Signals
wire jump,branch,memWrite,memRead,regWrite,memToReg,regDst,aluSrc,leftShift,extendSelect;
wire[1:0] blockSize;
wire[2:0] alu_op;
control_unit ctr(alu_op,blockSize,jump,memWrite,memRead,regWrite,memToReg,regDst,branch,
aluSrc,leftShift,extendSelect,instruction);
//Lui signal
wire lui,snot;
not blockSizeNot(snot,blockSize[0]);
and lui_and(lui,blockSize[1],snot);
//JAL signal
wire jal_sig;
and jal_sig_and(jal_sig,jump,instruction[26]);
//JR signal
wire jr_sig,jr_not;
not jr_not_module(jr_not,instruction[27]);
and jr_sig_and(jr_sig,jr_not,jump);

wire[31:0] read_data1;

always @ (posedge clk)
begin
	if (ins_address == 8190) begin
		$finish;
	end
	if (jr_sig == 1)begin
		ins_address = read_data1[12:0];
	end
	else if(jal_sig == 1)begin 
		ins_address = instruction[12:0];
	end
	else if(jump == 1)begin 
		ins_address = instruction[12:0];
	end
	else if(branch_mux == 1) begin
		ins_address = ins_address + 1 + instruction[12:0];
	end
	else begin 
		ins_address = ins_address + 1;
	end
	
end


//Fetch Ins
instruction_memory im(instruction,ins_address,clk);



//Increment PC
//wire[12:0] added_pc;
//adder_13 addPc(added_pc,ins_address,13'b1);

//Add Imm to PC
//wire[12:0] branch_pc;
//adder_13 addPcBranch(branch_pc,added_pc,instruction[12:0]);


//Select Reg Dest
wire[4:0] write_reg;
mux_2x1_5bit mwritereg(write_reg,instruction[20:16],instruction[15:11],regDst);

wire[31:0] read_data2;

//Write is filled in memory module below
wire[31:0] write_data;
mips_registers mr(read_data1,read_data2,write_data,instruction[25:21],
instruction[20:16],write_reg,regWrite,instruction[12:0],jal_sig,clk);


wire[31:0] imm,zero_ext,sign_ext;
extend e1(zero_ext,sign_ext,instruction[15:0]);
mux_2x1_32 extend_selection(imm,zero_ext,sign_ext,extendSelect);

wire[31:0] alu_input2;
mux_2x1_32 aluB(alu_input2,read_data2,imm,aluSrc);

wire res_is_zero,overflow,alu_c;
wire[31:0] alu_res;

//Alu
alu_32 alu(alu_c,overflow,res_is_zero,alu_res,read_data1,alu_input2,alu_op,
leftShift,instruction[0],instruction[10:6],instruction[2]);


//Deciding if there is branch
wire branch_res;
xor branch_res_xor(branch_res,instruction[26],res_is_zero);
and branch_and_zero(branch_mux,branch,branch_res);
//wire[12:0] mux_branch_out;
//mux_2x1_13 b_mux_module(mux_branch_out,added_pc,branch_pc,branch_mux);

//Jump decision
//wire[12:0] jump_address;
//mux_2x1_13 j_mux_module(jump_address,mux_branch_out,instruction[12:0],jump);
//Jr decision
//mux_2x1_13 jr_mux_module(ins_address,jump_address,read_data1[12:0],jr_sig);

//If it is lui
wire[31:0] lui_imm;
concat concat_imm(lui_imm,instruction[15:0]);


//Memory parts
wire[31:0] mem_out;
mips_memory mm(mem_out,read_data2,alu_res[16:0],memWrite,memRead,clk,blockSize);

//Mem to reg decision
wire[31:0] not_lui;
mux_2x1_32 write_data_mux(not_lui,alu_res,mem_out,memToReg);
//If it is lui put to reg data
mux_2x1_32 lui_or_not(write_data,not_lui,lui_imm,lui);




endmodule