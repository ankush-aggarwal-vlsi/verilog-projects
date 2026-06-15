`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2026 11:44:23 AM
// Design Name: 
// Module Name: demux_1_to_4_gatelevel_testbench
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


module demux_1_to_4_gatelevel_testbench ;
reg s1 , s0 , i ;
wire y0 , y1 , y2 , y3 ;
demux_1_to_4_gatelevel uut(.i(i) , .s0(s0) , .s1(s1) , .y0(y0) , .y1(y1) , .y2(y2) , .y3(y3));
initial
begin
$monitor($time , 
                "i = %b , s0 = %b , s1 = %b , y0 = %b , y1 = %b , y2 = %b , y3 = %b ",
                i,s0,s1,y0,y1,y2,y3);
                
s1 = 0 ; s0 = 0 ; i = 0 ; #10 ; 
s1 = 0 ; s0 = 0 ; i = 1 ; #10 ; 
s1 = 0 ; s0 = 1 ; i = 0 ; #10 ; 
s1 = 0 ; s0 = 1 ; i = 1 ; #10 ; 
s1 = 1 ; s0 = 0 ; i = 0 ; #10 ; 
s1 = 1 ; s0 = 0 ; i = 1 ; #10 ; 
s1 = 1 ; s0 = 1 ; i = 0 ; #10 ; 
s1 = 1 ; s0 = 1 ; i = 1 ; #10 ; 
$finish ;
end
endmodule
