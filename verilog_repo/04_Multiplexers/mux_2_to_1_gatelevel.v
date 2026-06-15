`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 03:40:10 PM
// Design Name: 
// Module Name: mux_2_to_1_gatelevel
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


module mux_2_to_1_gatelevel(
    input i0,i1,s,
    output y
    );
wire w1 , w2 , ns ;
not(ns , s);
and (w1 , ns , i0);
and (w2 , s , i1);
or (y , w1 , w2);
 
endmodule
