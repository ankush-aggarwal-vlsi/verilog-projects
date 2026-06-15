`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 03:16:43 PM
// Design Name: 
// Module Name: mux_2_to_1_behaviourals_testbench
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


module mux_2_to_1_behaviourals_testbench ;
reg io , i1 , s ;
wire y ;
mux_2_to_1_behaviourals uut(.io(io) , .i1(i1) , .s(s) , .y(y));
initial 
begin
s = 0 ; io = 0 ; i1 = 0 ;
$monitor($time , 
                "io = %b , i1 = %b , s = %b , y = %b ",
                io,i1,s,y);
#10 s = 1 ; io = 0 ; i1 = 1 ;
#10 s = 0 ; io = 1 ; i1 = 0 ;
#10 s = 1 ; io = 1 ; i1 = 0 ;
#10 $finish ;
                
end


endmodule
