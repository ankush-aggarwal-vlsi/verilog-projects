`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 08:32:30 PM
// Design Name: 
// Module Name: comparator_1_bit_gatelevel_testbench
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


module comparator_1_bit_dataflow_testbench ;
reg a , b ;
wire a_gretaer_b , a_less_b , a_equal_b ; 
comparator_1_bit_gatelevel uut(.a(a) , .b(b) , .a_gretaer_b(a_gretaer_b) , .a_less_b(a_less_b) , .a_equal_b(a_equal_b));
integer j ;
initial 
begin
$monitor($time,
                "a = %b, b = %b , a_gretaer_b = %b , a_less_b = %b , a_equal_b = %b ",
                a , b , a_gretaer_b , a_less_b , a_equal_b );
for(j = 0 ; j < 4 ; j = j + 1 ) 
begin
{a , b } = j ; 
#10 ;

end
$finish ; 
end
endmodule

