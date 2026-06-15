`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 06:31:17 PM
// Design Name: 
// Module Name: demux_1_to_2_gatelevel
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


module demux_1_to_2_gatelevel(
    input i , s,
    output y0 , y1
    );
wire ns ;
not(ns , s );
and(y0 , i , ns ) ;
and(y1 , i , s);

endmodule
