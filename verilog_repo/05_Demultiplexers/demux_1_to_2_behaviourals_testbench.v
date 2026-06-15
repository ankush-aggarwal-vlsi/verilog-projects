`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 12:23:47 PM
// Design Name: 
// Module Name: demux_1_to_2_behaviourals_testbench
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


module demux_1_to_2_behaviourals_testbench ;
reg i , s ;
wire y0 , y1 ;
demux_1_to_2_behaviourals uut(.i(i) , .s(s) , .y0(y0) , .y1(y1));
initial
begin
$monitor($time, 
                "i = %b , s = %b , y0 = %b , y1 = %b",
                i,s,y0,y1);
                
i = 0 ; s = 0 ; #10 ;
i = 0 ; s = 1 ; #10 ;
i = 1 ; s = 0 ; #10 ;
i = 1 ; s = 1 ; #10 ;
$finish;
end
endmodule
