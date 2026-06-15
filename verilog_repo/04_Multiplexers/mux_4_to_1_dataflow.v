`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 08:34:02 AM
// Design Name: 
// Module Name: mux_4_to_1_dataflow
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_4_to_1_dataflow(
    input i0,i1,i2,i3,s0,s1,
    output y
    );
assign y = (~s1 & ~s0 & i0) | (~s1 & s0 & i1) | (s1 & ~s0 & i2) | (s1 & s0 & i3) ;
endmodule
