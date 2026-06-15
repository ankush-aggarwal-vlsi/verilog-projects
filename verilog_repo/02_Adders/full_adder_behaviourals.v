`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 12:57:49 PM
// Design Name: 
// Module Name: full_adder_behaviourals
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


module full_adder_behaviourals(
    input a,b,cin,
    output reg s,cout
    );
always @(*)
begin
s = a ^b ^ cin ;
cout = (a & b) | (b & cin) | (cin&a) ;

end
endmodule
