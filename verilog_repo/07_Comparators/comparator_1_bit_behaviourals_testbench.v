`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 08:12:04 PM
// Design Name: 
// Module Name: comparator_1_bit_behaviourals_testbench
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


module comparator_1_bit_behaviourals_testbench ;
reg a , b ;
wire a_greater_b , a_less_b , a_equal_b ;
comparator_1_bit_behaviourals uut(.a(a) , .b(b) , .a_greater_b(a_greater_b) , .a_less_b(a_less_b) , .a_equal_b(a_equal_b));
initial
begin
$monitor($time , 
                "a = %b , b = %b , a_greater_b = %b , a_less_b = %b , a_equal_b = %b ",
                a,b,a_greater_b , a_less_b , a_equal_b);
begin
a = 0 ; b = 0 ; #10 ; 
a = 0 ; b = 1 ; #10 ; 
a = 1 ; b = 0 ; #10 ; 
a = 1 ; b = 1 ; #10 ; 
end
$finish ; 
end
endmodule
