`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2026 12:18:01 PM
// Design Name: 
// Module Name: full_subtractor_dataflow
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


module full_subtractor_dataflow(
    input a , b , bin,
    output d , bout
    );
assign d = (a ^ b ^ bin);
assign bout = ( ~a & b ) | ( ~a & bin ) | ( b & bin ) ;
    
endmodule
