`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 08:20:40 PM
// Design Name: 
// Module Name: comparator_1_bit_dataflow
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


module comparator_1_bit_dataflow(
    input a , b,
    output a_gretaer_b , a_less_b , a_equal_b
    );
assign a_gretaer_b = ( a > b) ;
assign a_less_b = ( a < b ) ;
assign a_equal_b = ( a == b ) ;

endmodule
