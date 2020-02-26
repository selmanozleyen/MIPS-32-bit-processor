module mips_memory(output reg[31:0] data_out, input[31:0] data_in, input[16:0] address,
input write_enable,input read_enable, input clk,input[1:0] write_size);


reg[7:0]  memory[500:0];

always @ (posedge clk)
begin

	if(read_enable == 1'b1 && (write_size == 2'b10 || write_size == 2'b11) )
	begin
		data_out<={memory[address+3],memory[address+2],memory[address+1],memory[address]};
		
	end
	if(read_enable == 1'b1 && write_size == 2'b01)
	begin
		data_out <= {16'b0,memory[address+1],memory[address]};
		
	end
	if(read_enable == 1'b1 && write_size == 2'b00)
	begin
		data_out <= {24'b0,memory[address]};
		
	end
end

always @ (negedge clk)
begin
	//4byte block
	if(write_enable == 1'b1 && (write_size == 2'b10 || write_size == 2'b11) )
	begin
		{memory[address+3],memory[address+2],memory[address+1],memory[address]} <= data_in;
	end
	if(write_enable == 1'b1 && write_size == 2'b01)
	begin
		{memory[address+1],memory[address]} <=data_in[15:0];
	end
	if(write_enable == 1'b1 && write_size == 2'b00)
	begin
		memory[address] <= data_in[7:0];
	end
	
end


endmodule