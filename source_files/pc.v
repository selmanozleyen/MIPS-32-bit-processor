module pc(output [12:0] ins,input clk);

reg[12:0] add;
initial add = 13'b0;

always @(negedge clk)begin

	add = ins;
	if(add == 8191)begin
		$finish;
	end
end 

buf b(ins,add);

always @(posedge clk)begin

	
	if(add == 8191)begin
		$finish;
	end
end 

endmodule