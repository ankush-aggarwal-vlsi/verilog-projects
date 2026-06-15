`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2026 01:03:30 PM
// Design Name: 
// Module Name: jk_flipflop
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


module jk_flipflop(
    input j , k , clk , rst,
    output reg q , qbar
    );
always @(posedge clk or posedge rst)
begin
    if(rst)
        begin
        q <= 0 ; 
        qbar <= 1 ;
        end
    else
        if ({j,k} == 2'b00)
            begin
            q <= q ;
            qbar <= ~q ;
            end
        else if({j,k} == 2'b01)
            begin
            q <= 0 ;
            qbar <= 1 ;
            end
        else if({j,k} == 2'b10)
            begin
            q <= 1 ;
            qbar <= 0 ;
            end
        else
            begin
            q <= qbar ;
            qbar <= q ;
            end      
end
endmodule
