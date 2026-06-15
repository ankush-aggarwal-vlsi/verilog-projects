`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 09:55:20 AM
// Design Name: 
// Module Name: half_subtractor_gatelevel_testbench
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


module half_subtractor_gatelevel_testbench ;
reg a , b ;
wire diff , borr ;
half_subtractor_gatelevel uut(.a(a) , .b(b) , .diff(diff) , .borr(borr));
integer j ;
initial
begin
$monitor ( $time , 
                    "a = %b , b = %b , diff = %b , borr = %b",
                    a , b , diff , borr ) ;

for ( j = 0 ; j <= 3 ; j = j + 1 )
begin
{a ,b} = j ;
#10 ;
end
$finish ;                  
end
endmodule
