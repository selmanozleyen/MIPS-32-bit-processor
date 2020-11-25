# MIPS-32-bit-processor
A 32 bit processor written in structural VerilogHDL in Quartus II. It supports 36 intructions and has a data memory of 128KB.
# Prerequisites
“memory.txt” and “instructions.txt” files are need in the simulation
directory. Some test instructions are given ,it includes all the instructions.
# Instructions
There are 36 instructions 8 instruction is extra. The system is designed for 128 KB data memory all
the wires are written according to that but I made the data byte array size 501 in the memory
module otherwise it was very slow (my computer didn’t run it) to compile. Others remain the same.
These are the instructions supported with some of their control signals.

<html>
	<head>
		<meta charset="UTF-8">
			<title>able</title>
		</head>
		<body>
			<b>
				<u>Instruction Table</u>
			</b>
			<hr>
				<table cellspacing=0 border=1>
					<tr>
						<td style=min-width:50px>Ins. Name</td>
						<td style=min-width:50px>Type</td>
						<td style=min-width:50px>Opcode</td>
						<td style=min-width:50px>Func.</td>
						<td style=min-width:50px>MemWrite</td>
						<td style=min-width:50px>MemRead</td>
						<td style=min-width:50px>RegWrite</td>
						<td style=min-width:50px>MemtoReg</td>
						<td style=min-width:50px>RegDst</td>
						<td style=min-width:50px>Branch</td>
					</tr>
					<tr>
						<td style=min-width:50px>Xor</td>
						<td style=min-width:50px>R</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>10 0110</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Xori</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>00 1110</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Slt</td>
						<td style=min-width:50px>R</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>10 1010</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Sltui</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>00 1011</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Sltu</td>
						<td style=min-width:50px>R</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>10 1011</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Slti</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>00 1010</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Lw</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>10 0011</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Lh</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>10 0001</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Lb</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>10 0000</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Lui</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>00 1111</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>X</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Sw</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>10 1011 </td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>X</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Sb</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>10 1000</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>X</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>sh</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>10 1001</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>X</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>J</td>
						<td style=min-width:50px>J</td>
						<td style=min-width:50px>00 0010</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>X</td>
						<td style=min-width:50px>X</td>
						<td style=min-width:50px>X</td>
					</tr>
					<tr>
						<td style=min-width:50px>Jal</td>
						<td style=min-width:50px>J</td>
						<td style=min-width:50px>00 0011</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>X</td>
						<td style=min-width:50px>X</td>
						<td style=min-width:50px>X</td>
					</tr>
					<tr>
						<td style=min-width:50px>Jr</td>
						<td style=min-width:50px>R</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>00 1000</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>X</td>
						<td style=min-width:50px>X</td>
						<td style=min-width:50px>X</td>
					</tr>
					<tr>
						<td style=min-width:50px>Beq</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>00 0100</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>X</td>
						<td style=min-width:50px>X</td>
						<td style=min-width:50px>1</td>
					</tr>
					<tr>
						<td style=min-width:50px>Bne</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>00 0101</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>X</td>
						<td style=min-width:50px>X</td>
						<td style=min-width:50px>1</td>
					</tr>
					<tr>
						<td style=min-width:50px>Add</td>
						<td style=min-width:50px>R</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>10 0000</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Sub</td>
						<td style=min-width:50px>R</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>10 0010</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>And</td>
						<td style=min-width:50px>R</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>10 0100</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Or</td>
						<td style=min-width:50px>R</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>10 0101</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Sra</td>
						<td style=min-width:50px>R</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>00 0011</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Srl</td>
						<td style=min-width:50px>R</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>00 0010</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Sll</td>
						<td style=min-width:50px>R</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>sllv</td>
						<td style=min-width:50px>R</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>00 0100</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>srlv</td>
						<td style=min-width:50px>R</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>00 0110</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>srav</td>
						<td style=min-width:50px>R</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>00 0111</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Addi</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>00 1000</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Addiu</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>00 1001</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Andi</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>00 1100</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>Ori</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>00 1101</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>lbu</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>10 0100</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>lhu</td>
						<td style=min-width:50px>I</td>
						<td style=min-width:50px>10 0101</td>
						<td style=min-width:50px>XX XXXX</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>nor</td>
						<td style=min-width:50px>R</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>10 0111</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
					</tr>
					<tr>
						<td style=min-width:50px>subu</td>
						<td style=min-width:50px>R</td>
						<td style=min-width:50px>00 0000</td>
						<td style=min-width:50px>10 0011</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
						<td style=min-width:50px>1</td>
						<td style=min-width:50px>0</td>
					</tr>
				</table>
				<hr>
				</body>
			</html>
