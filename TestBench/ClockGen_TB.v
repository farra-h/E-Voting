//--------------------------------------------------------------------------------------------------
//
// Title       : ClockGen_tb
// Design      : design9
// Author      : Sandy 3Laa
// Company     : Dell
//
//-------------------------------------------------------------------------------------------------
//
// File        : ClockGen_TB.v
// Generated   : Sun Dec 17 01:28:27 2023
// From        : ClockGen_TB_settings.txt
// By          : tb_verilog.pl ver. ver 1.2s
//
//-------------------------------------------------------------------------------------------------
//
// Description : 
//
//-------------------------------------------------------------------------------------------------

`timescale 1ps / 1ps
module ClockGen_tb;


//Internal signals declarations:
wire CLK;



// Unit Under Test port map
	ClockGen UUT (
		.CLK(CLK));

initial
	$monitor($realtime,,"ps %h ",CLK);
endmodule
