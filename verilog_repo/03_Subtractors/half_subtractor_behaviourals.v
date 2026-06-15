`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 09:11:10 AM
// Design Name: 
// Module Name: half_subtractor_behaviourals
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


module half_subtractor_behaviourals(
    input a , b,
    output reg diff , borr
    );

always @(*)
begin
diff = (~a & b) | (a & ~b) ;
borr = ~a & b ; 
end
endmodule
