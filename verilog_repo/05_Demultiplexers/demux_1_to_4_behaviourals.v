`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 06:44:42 PM
// Design Name: 
// Module Name: demux_1_to_4_behaviourals
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


module demux_1_to_4_behaviourals(
    input i , s0 , s1,
    output reg y0 , y1 , y2 , y3
    );
always @(*)
begin
y0  = 0 ;
y1 = 0 ; 
y2 = 0 ;
y3 = 0 ;
if ({s1,s0} == 2'b00)
y0 = i;
else if ({s1,s0} == 2'b01)
y1 = i;
else if ({s1,s0} == 2'b10)
y2 = i;
else 
y3 = i;

end
endmodule
