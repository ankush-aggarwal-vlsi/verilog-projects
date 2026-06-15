`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2026 11:59:03 AM
// Design Name: 
// Module Name: full_subtractor_behaviourals
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


module full_subtractor_behaviourals(
    input a , b , bin,
    output reg d , bout
    );
always @(*)
begin
d = a ^ b ^ bin ;
bout = (~a & b)|(~a & bin)|(b & bin);
end
endmodule
