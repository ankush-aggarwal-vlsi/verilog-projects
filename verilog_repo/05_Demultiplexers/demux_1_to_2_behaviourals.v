`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 12:20:43 PM
// Design Name: 
// Module Name: demux_1_to_2_behaviourals
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


module demux_1_to_2_behaviourals(
    input i , s,
    output reg y0 , y1
    );
always @(*)
begin
y0 = (~s & i) ; 
y1 = (s & i) ;
end

endmodule
