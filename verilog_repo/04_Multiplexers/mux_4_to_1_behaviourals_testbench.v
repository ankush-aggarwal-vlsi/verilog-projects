`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 03:59:42 PM
// Design Name: 
// Module Name: mux_4_to_1_behaviourals_testbench
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


module mux_4_to_1_behaviourals_testbench;
reg i0 , i1 , i2 , i3 , s0 , s1 ;
wire y ;
mux_4_to_1_behaviourals uut(.i0(i0) , .i1(i1) , .i2(i2) , .i3(i3) , .s0(s0) , .s1(s1) , .y(y));

integer i ;

initial 
begin
$monitor($time ,
                "i0 = %b , i1 = %b , i2 = %b , i3 = %b , s0 = %b , s1 = %b , y = %b ",
                i0,i1,i2,i3,s0,s1,y);
for ( i = 0 ; i < 64 ; i = i + 1)
begin
{s1 , s0 , i0 , i1 , i2 , i3} = i;
#10;
end
 
$finish ; 
  
end
endmodule
