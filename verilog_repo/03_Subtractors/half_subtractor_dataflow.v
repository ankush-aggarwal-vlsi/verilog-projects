`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 09:24:51 AM
// Design Name: 
// Module Name: half_subtractor_dataflow
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


module half_subtractor_dataflow(
input a , 
input b ,
output diff , 
output borr );
assign diff = a ^ b ;
assign borr = ~a & b ;
endmodule
