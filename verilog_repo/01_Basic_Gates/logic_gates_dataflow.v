`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 11:34:31 AM
// Design Name: 
// Module Name: logic_gates_dataflow
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


module logic_gates_dataflow(
    input a,b,
    output ynot,yand,ynand,yor,ynor,yxor,yxnor
    );
    assign ynot = ~a ;
    assign yand = a & b ;
    assign ynand = ~(a & b) ;
    assign yor = a | b ;
    assign ynor = ~(a | b) ;
    assign yxor = (~a & b) | (~b & a);
    assign yxnor = (~a & ~b) | (a & b);
endmodule
