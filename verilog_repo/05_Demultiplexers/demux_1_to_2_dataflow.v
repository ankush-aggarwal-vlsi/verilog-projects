`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 06:16:44 PM
// Design Name: 
// Module Name: demux_1_to_2_dataflow
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


module demux_1_to_2_dataflow(
    input i , s,
    output y0 , y1
    );
assign y0 = (i & ~s) ;
assign y1 = (i & s) ;
endmodule
