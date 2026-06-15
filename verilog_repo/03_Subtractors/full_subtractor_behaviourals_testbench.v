`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2026 11:59:32 AM
// Design Name: 
// Module Name: full_subtractor_behaviourals_testbench
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


module full_subtractor_behaviourals_testbench;
reg a , b , bin ; 
wire d , bout ;
full_subtractor_behaviourals uut(.a(a) , .b(b) , .bin(bin) , .d(d) , .bout(bout));
integer j ;
initial
begin
$monitor($time,
                "a = %b , b = %b , bin = %b , d = %b , bout = %b",
                a , b ,bin , d , bout);
for(j = 0 ; j < 8 ; j = j +1 )
begin
{a , b , bin} = j[2:0];
#10 ;
end
$finish;
end
endmodule
