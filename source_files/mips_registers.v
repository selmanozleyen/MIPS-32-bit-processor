module mips_registers
(output[31:0] read_data_1,output[31:0] read_data_2,input [31:0]write_data,input [4:0] read_reg_1,
input [4:0] read_reg_2,input [4:0] write_reg,input signal_reg_write,input[12:0] jal_address,input jal,input clk);

	reg[31:0] registers[31:0];
	
	
	assign read_data_1 = registers[read_reg_1];
	assign read_data_2 = registers[read_reg_2];
	
	
	
	
	
	always @(negedge clk)
	begin
		if(jal == 1'b1)begin
			registers[31][12:0] <= jal_address-1;
		end
		if(signal_reg_write == 1'b1 && write_reg != 5'b0)
		begin
			registers[write_reg]<=write_data;
		end
	end
	
endmodule