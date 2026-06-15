`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 11:10:39 AM
// Design Name: 
// Module Name: logic_gate_behaviourals
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


module logic_gate_behaviourals(
    input a,b,
    output reg ynot,yand,ynand,yor,ynor,yxor,yxnor
    );
    always @(a,b)
    begin
    ynot = ~a ;
    yand = a & b ;
    ynand = ~(a & b);
    yor = a | b;
    ynor = ~(a | b);
    yxor = (~a & b) | (~b & a);
    yxnor = (~a & ~b) | (a & b);  
    end
    
endmodule
