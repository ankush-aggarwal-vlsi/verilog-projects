`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 11:52:33 AM
// Design Name: 
// Module Name: logic_gates_gatelevel
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


module logic_gates_gatelevel(
    input a,b,
    output ynot , yand, ynand, yor,ynor,yxor,yxnor
    );
    not (ynot , a);
    and (yand , a , b);
    nand (ynand , a , b);
    or (yor , a , b);
    nor (ynor , a , b);
    xor(yxor , a , b);
    xnor(yxnor , a , b);
endmodule
