`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 12:09:25 PM
// Design Name: 
// Module Name: half_adder_behaviourals
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


module half_adder_behaviourals(
    input a,b,
    output reg s,cout
    );
always @(*)
begin
s = ( ~a & b ) | ( ~b & a );
cout = a & b ;
end
endmodule
