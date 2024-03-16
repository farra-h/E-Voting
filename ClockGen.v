module ClockGen(CLK);
output CLK;	

//we must define the clock as a register
//because we initialized, assigned and added it to always block
//so we can't treat it as a normal wire
reg CLK;

//defining the inputs and outputs of our final code
//to create an instance out of it and send it the generated clock signal we made
wire reset;
wire [6:0]led,led2,led3;
wire [9:0]count;

initial CLK=0; 
	
//we can't use just assign statement or initial block because we need to repeat it
always
//we must add a delay time to see the generated wave clearly
//we set the delay time to 50 ps
#50 CLK = ~CLK;

//creating an instance of our final code
counter_to_decoder countertodecoder(CLK,reset,led,led2,led3);
endmodule

//creating the testbench
//it doesn't take any inputs or outputs
module ClockGen_DUT(); 
//we want to create an instance of the clockGen module
//so we must first define its output clk

//we defined it as a wire
//because we didn't use it inside of an always or initial block
wire CLK;
reg reset;
wire [9:0]count;
initial
begin
reset=1; #50;
reset=0;
end			   

//creating the instance
ClockGen CG1(CLK);

endmodule