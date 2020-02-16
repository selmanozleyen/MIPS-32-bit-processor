module instruction_memory(output reg[31:0] ins,input[12:0] address,input clk);
	reg[31:0] instructions[8191:0];
	
	
always @ (negedge clk)
begin

	ins = instructions[address];
end
	
endmodule