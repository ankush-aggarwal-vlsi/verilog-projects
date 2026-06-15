`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2026 06:34:36 PM
// Design Name: 
// Module Name: sr_flipflop
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


module sr_flipflop(
    input s , r , clk , rst,
    output reg q , qbar
    );

always @(posedge clk or posedge rst)
begin
if (rst == 1)
   begin
   q <= 0 ;
   qbar <= 1 ;
   end 
else 
    if({s,r} == 2'b00)
        begin
        q <= q ;
        qbar <= qbar ;
        end
    else if({s,r} == 2'b01)
        begin
        q <= 0 ;
        qbar <= 1 ;
        end
    else if({s,r} == 2'b10)
        begin
        q <= 1 ;
        qbar <= 0 ;
        end
    else
        begin
        q <= 1'bx ;
        qbar <= 1'bx ;
        end

end
endmodule
