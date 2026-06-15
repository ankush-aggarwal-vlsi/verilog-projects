`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 09:14:34 AM
// Design Name: 
// Module Name: half_subtractor_testbench
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


module half_subtractor_testbench_behviourals ;
reg a , b ;
wire diff , borr ;
half_subtractor_behaviourals uut(.a(a) , .b(b) , .diff(diff) , .borr(borr));
integer j ; 
initial 
begin
$monitor($time ,
                "a = %b , b = %b , diff = %b , borr = %b",
                a , b , diff , borr ) ;
for(j = 0 ; j < 4 ; j = j + 1)
begin
{a , b} = j ;
#10 ; 
end
$finish ;
end
endmodule
