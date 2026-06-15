`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 08:00:40 PM
// Design Name: 
// Module Name: comparator_1_bit_behaviourals
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


module comparator_1_bit_behaviourals(
    input a,b,
    output reg a_greater_b , a_less_b , a_equal_b
    );
always @(*)
begin
if ({ a , b } == 2'b00)
begin
a_equal_b = 1 ;
a_less_b = 0 ;
a_greater_b = 0 ;
end

else if ({ a , b } == 2'b01)
begin
a_equal_b = 0 ;
a_less_b = 1 ;
a_greater_b = 0 ;
end

else if ({ a , b } == 2'b10)
begin
a_equal_b = 0 ;
a_less_b = 0 ;
a_greater_b = 1 ;
end

else 
begin
a_equal_b = 1 ;
a_less_b = 0 ;
a_greater_b = 0 ;
end


end
endmodule
