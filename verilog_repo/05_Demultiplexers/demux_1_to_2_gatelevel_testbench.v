`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 06:33:38 PM
// Design Name: 
// Module Name: demux_1_to_2_gatelevel_testbench
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


module demux_1_to_2_gatelevel_testbench ;
reg  i , s ;
wire  y0 , y1 ;
demux_1_to_2_gatelevel uut(.i(i) , .s(s) , .y0(y0) , .y1(y1));
integer j ;
initial
begin
$monitor($time,
                "i = %b , s = %b , y0 = %b , y1 = %b",
                i,s,y0,y1);
for(j = 0 ; j < 4 ; j = j + 1)
begin
{s , i} = j ; 
#10 ; 
end
$finish;
end

endmodule
