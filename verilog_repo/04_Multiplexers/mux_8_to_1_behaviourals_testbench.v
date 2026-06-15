`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 10:17:58 AM
// Design Name: 
// Module Name: mux_8_to_1_behaviourals_testbench
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


module mux_8_to_1_behaviourals_testbench ;
reg i0 , i1 , i2 , i3 , i4 , i5 , i6 , i7 , s0 , s1 ,s2 ;
wire y ;
mux_8_to_1_behaviourals uut(.i0(i0) , .i1(i1) , .i2(i2) , .i3(i3) , .i4(i4) , .i5(i5) , .i6(i6) , .i7(i7) , .s0(s0) , .s1(s1) , .s2(s2) , .y(y));
integer j ;
initial 
begin
$monitor($time,
                "i0 = %b , i1 = %b , i2 = %b , i3 = %b , i4 = %b , i5 = %b , i6 = %b , i7 = %b , s0 = %b , s1 = %b , s2 = %b , y = %b ",
                i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);        
for ( j = 0 ; j < 2048 ; j = j + 1 )
begin
{i0 , i1 , i2 , i3 , i4 , i5 , i6 , i7 , s2 , s1 , s0} = j ;
#10 ;
end
$finish ;
end
endmodule
