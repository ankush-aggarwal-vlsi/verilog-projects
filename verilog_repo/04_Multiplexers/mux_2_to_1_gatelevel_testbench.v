`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 03:45:14 PM
// Design Name: 
// Module Name: mux_2_to_1_gatelevel_testbench
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


module mux_2_to_1_gatelevel_testbench ;
reg i0 , i1 , s ;
wire y ;
mux_2_to_1_gatelevel uut(.i0(i0) , .i1(i1) , .s(s) , .y(y));
initial
begin
$monitor ($time , 
                "i0 = %b , i1 = %b , s = %b , y = %b",
                i0,i1,s,y);
s = 0 ; i0 = 0 ; i1 = 0 ;
#10 s = 0 ; i0 = 0 ; i1 = 1 ;
#10 s = 0 ; i0 = 1 ; i1 = 0 ;
#10 s = 0 ; i0 = 1 ; i1 = 1 ;
#10 s = 1 ; i0 = 0 ; i1 = 0 ;
#10 s = 1 ; i0 = 0 ; i1 = 1 ;
#10 s = 1 ; i0 = 1 ; i1 = 0 ;
#10 s = 1 ; i0 = 1 ; i1 = 1 ;
#10 $finish ;

end
endmodule
