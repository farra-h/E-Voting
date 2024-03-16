//to code any counter we just describe the behavior of it using verilog
module counter(clk,reset,count);
input clk,reset;	

//the reason for creating a counter that counts in 10 bits
//is because we want it to count to 999
//Log2(999)= 9.9643408677924
//so we need at least 10 bits to represent the number 999
output reg [9:0]count=0;
//creating a vector to represent the count
//it is from a register type because of the always block we created below
	
//always block for repeating the counting operation
always @(posedge clk or posedge reset)
if(reset) 
//we use <= instead of just = because we are dealing with sequential logic
count<=0;
else if(count==999)
count<=0;
else
count <= count + 1;

endmodule

module conter_dut();
wire clk;
reg reset;
wire [9:0]count;
initial
begin
reset=1; #50;
reset=0;
end
counter cnt(clk,reset,count);
endmodule