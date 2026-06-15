`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 12:40:32 PM
// Design Name: 
// Module Name: half_adder_dataflow
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


module half_adder_dataflow(
    input a,b,
    output s,cout
    );
assign s = (~a & b )|(a & ~b) ;
assign cout = (a & b);

endmodule
