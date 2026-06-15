`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 08:38:49 AM
// Design Name: 
// Module Name: mux_4_to_1_dataflow_testbench
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


module mux_4_to_1_dataflow_testbench ;
reg i0 , i1, i2 ,i3 , s0 , s1 ;
wire y ;
mux_4_to_1_dataflow uut(.i0(i0) , .i1(i1) , .i2(i2) , .i3(i3) , .s0(s0) , .s1(s1) , .y(y));
integer j ;
initial 
begin
$monitor($time, 
                "i0 = %b , i1 = %b , i2 = %b , i3 = %b , s0 = %b , s1 = %b , y = %b",
                i0,i1,i2,i3,s0,s1,y);
for(j = 0 ; j < 64 ; j = j+1 ) 
begin
{i0 , i1 , i2 , i3 , s1 , s0} = j ;
#10 ;
end  
$finish ;  
end

endmodule
