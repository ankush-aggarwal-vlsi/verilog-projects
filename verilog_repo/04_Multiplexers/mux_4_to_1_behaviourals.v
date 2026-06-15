`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 03:52:30 PM
// Design Name: 
// Module Name: mux_4_to_1_behaviourals
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


module mux_4_to_1_behaviourals(
    input i0,i1,i2,i3,s0,s1,
    output reg y 
    );

always @(*)
begin
case ( {s1 , s0} )
        2'b00 : y = i0 ;
        2'b01 : y = i1 ;
        2'b10 : y = i2 ;
        2'b11 : y = i3 ;

endcase
end
endmodule
