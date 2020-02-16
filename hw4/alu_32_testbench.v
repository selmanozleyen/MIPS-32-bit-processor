`define DELAY 20
module alu_32_testbench(); 
wire  v,z;
wire[31:0] res;
reg[31:0] a,b;
reg[2:0] op;
reg left_shift,arit;
reg[4:0] amt;
wire carry_out;

alu_32 alW(carry_out,v,z,res, a, b ,op,left_shift,arit,amt);

initial
begin
//testing add operator for positive numbers
amt[4:0] = 5'b0;
left_shift = 0;
arit = 0;
op[2:0] = 3'b010;
a[31:0] = 32'b00000000000000000000000000000001;
b[31:0] = 32'b00000000000000000001000000000001;
#`DELAY;
//testing add operation for negative numbers
op[2:0] = 3'b010;
a[31:0] = 32'b11100000000000000000000000000001;
b[31:0] = 32'b11110010100000000001000000000001;
#`DELAY;
//testing the overflow output
op[2:0] = 3'b010;
a[31:0] = 32'b10000000000000000000000000000001;
b[31:0] = 32'b10000000000000000000000000000001;
#`DELAY;

//Testing and
op[2:0] = 3'b000;
a[31:0] = 32'b10000000000000000000010010000011;
b[31:0] = 32'b10000001000001000100000010000101;
#`DELAY;
//Testing or
op[2:0] = 3'b001;
a[31:0] = 32'b10000000000000000000010010000011;
b[31:0] = 32'b10000001000001000100000010000101;
#`DELAY;
//Testing substraction
op[2:0] = 3'b110;
a[31:0] = 32'b10000000000000000000010010000011;
b[31:0] = 32'b10000001000001000100000010000101;
#`DELAY;

//testing sub operator for positive numbers
op[2:0] = 3'b110;
a[31:0] = 32'b00000000000000000000000000000001;
b[31:0] = 32'b00000000000000000001000000000001;
#`DELAY;
//testing sub operation for negative numbers
op[2:0] = 3'b110;
a[31:0] = 32'b11100000000000000000000000000001;
b[31:0] = 32'b11110010100000000001000000000001;
#`DELAY;
//testing the overflow output
op[2:0] = 3'b110;
a[31:0] = 32'b10000000000000000000000000000001;
b[31:0] = 32'b10000000000000000000000000000001;
//You can see set on less than results above




//Testing Xor
#`DELAY;
op[2:0] = 3'b011;
a[31:0] = 32'b11111111111111111111111111111111;
b[31:0] = 32'b11111111111111111111111111111111;
#`DELAY;
a[31:0] = 32'b0;
b[31:0] = 32'b11111111111111111111111111111111;
#`DELAY;
a[31:0] = 32'b0;
b[31:0] = 32'b0;
//Testing Nor
#`DELAY;
op[2:0] = 3'b101;
a[31:0] = 32'b11111111111111111111111111111111;
b[31:0] = 32'b11111111111111111111111111111111;
#`DELAY;
a[31:0] = 32'b0;
b[31:0] = 32'b11111111111111111111111111111111;
#`DELAY;
a[31:0] = 32'b0;
b[31:0] = 32'b0;
//Testing Shift
#`DELAY;
op[2:0] = 3'b100;
a[31:0] = 32'b11111111111111111111111111111111;
//Shift 1
amt[4:0] = 1;
left_shift = 0;
arit = 0;
#`DELAY;
left_shift = 0;
arit = 1;
#`DELAY;
left_shift = 1;
arit = 0;
#`DELAY;


//Shift 2
amt[4:0] = 2;
left_shift = 0;
arit = 0;
#`DELAY;
left_shift = 0;
arit = 1;
#`DELAY;
left_shift = 1;
arit = 0;
#`DELAY;
//Shift 3
amt[4:0] = 3;
left_shift = 0;
arit = 0;
#`DELAY;
left_shift = 0;
arit = 1;
#`DELAY;
left_shift = 1;
arit = 0;
#`DELAY;
//Shift 8
amt[4:0] = 8;
left_shift = 0;
arit = 0;
#`DELAY;
left_shift = 0;
arit = 1;
#`DELAY;
left_shift = 1;
arit = 0;
#`DELAY;
//Shift 19
amt[4:0] = 19;
left_shift = 0;
arit = 0;
#`DELAY;
left_shift = 0;
arit = 1;
#`DELAY;
left_shift = 1;
arit = 0;
#`DELAY;
//Shift 19
amt[4:0] = 31;
left_shift = 0;
arit = 0;
#`DELAY;
left_shift = 0;
arit = 1;
#`DELAY;
left_shift = 1;
arit = 0;
#`DELAY;





end

 
initial
begin
$monitor("%d opcode(%3b) %d = %d | %32b opcode %32b = %32b , carry_out=%1b, v=%1b, z=%1b",
a,op,b,res,a,b,res, carry_out, v, z);
end

 



 
endmodule