`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2026 12:36:03 PM
// Design Name: 
// Module Name: d_flipflop_behaviourals
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


module d_flipflop_behaviourals(
    input d , 
    input clk , 
    input rst,
    output reg q , 
    output reg qbar
    );
    
always @(posedge clk or posedge rst)
begin
    if (rst == 1'b1) 
    begin
    q <= 1'b0 ; 
    qbar <= 1'b1 ;
    end
        
else 
    begin
    q <= d ;
    qbar <= ~q ;
    end

end
      
endmodule
