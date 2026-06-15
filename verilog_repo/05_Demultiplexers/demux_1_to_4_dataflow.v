`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2026 09:39:00 AM
// Design Name: 
// Module Name: demux_1_to_4_dataflow
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


module demux_1_to_4_dataflow(
    input i , 
    input [1:0]s,
    output [3:0]y
    );
assign y[0] = (~s[1] & ~s[0] & i) ;
assign y[1] = (~s[1] & s[0] & i) ;
assign y[2] = (s[1] & ~s[0] & i) ;
assign y[3] = (s[1] & s[0] & i) ;
endmodule
