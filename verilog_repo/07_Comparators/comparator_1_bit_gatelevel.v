`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 08:33:52 PM
// Design Name: 
// Module Name: comparator_1_bit_gatelevel
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


module comparator_1_bit_gatelevel(
    input a,b,
    output a_gretaer_b , a_less_b , a_equal_b
    );
wire na , nb ;
not(na , a) ;
not(nb , b) ;

and(a_gretaer_b , a , nb);
and(a_less_b , na ,b);
xnor(a_equal_b , a , b);
endmodule
