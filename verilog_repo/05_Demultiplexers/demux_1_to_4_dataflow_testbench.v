`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2026 09:43:55 AM
// Design Name: 
// Module Name: demux_1_to_4_dataflow_testbench
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


module demux_1_to_4_dataflow_testbench ;
reg i ;
reg [1:0]s;
wire [3:0]y ;
demux_1_to_4_dataflow uut(.i(i) , .s(s) , .y(y));
integer j ;
initial
begin
$monitor($time,
                "i = %b , s = %b , y = %b",
                i,s,y);
for(j = 0 ; j < 8 ; j = j + 1)
begin
{s[1] , s[0] , i} = j[2:0] ;
#10 ; 
end
$finish;
end
endmodule
