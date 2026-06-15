`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 11:20:06 AM
// Design Name: 
// Module Name: mux_8_to_1_dataflow
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


module mux_8_to_1_dataflow(
    input [7:0]i , 
    input [2:0]s,
    output y
    );
assign y = (~s[2] & ~s[1] & ~s[0] & i[0]) |
           (~s[2] & ~s[1] & s[0] & i[1]) |
           (~s[2] & s[1] & ~s[0] & i[2]) |
           (~s[2] & s[1] & s[0] & i[3]) |
           (s[2] & ~s[1] & ~s[0] & i[4]) |
           (s[2] & ~s[1] & s[0] & i[5]) |
           (s[2] & s[1] & ~s[0] & i[6]) |
           (s[2] & s[1] & s[0] & i[7])  ;
endmodule
