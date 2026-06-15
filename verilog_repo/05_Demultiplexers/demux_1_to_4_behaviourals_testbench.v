`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 07:00:31 PM
// Design Name: 
// Module Name: demux_1_to_4_behaviourals_testbench
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


module demux_1_to_4_behaviourals_testbench ;
reg i , s0 , s1 ;
wire y0 , y1 , y2 , y3 ;
demux_1_to_4_behaviourals uut(.i(i) , .s0(s0) , .s1(s1) , .y0(y0) , .y1(y1) , .y2(y2) , .y3(y3));
integer j ;
initial
begin
$monitor($time,
                "i = %b , s0 = %b , s1 = %b , y0 = %b , y1 = %b , y2 = %b , y3 = %b",
                i,s0,s1,y0,y1,y2,y3);
for(j = 0 ; j < 8 ; j = j + 1)
begin
{s1 , s0 , i} = j ;
#10 ; 
end
$finish;
end
endmodule
