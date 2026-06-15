`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 03:11:48 PM
// Design Name: 
// Module Name: mux_2_to_1_behaviourals
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


module mux_2_to_1_behaviourals(
    input io , i1 , s,
    output reg y
    );
always @(*)
y = (~s & io) | (s & i1);
endmodule
