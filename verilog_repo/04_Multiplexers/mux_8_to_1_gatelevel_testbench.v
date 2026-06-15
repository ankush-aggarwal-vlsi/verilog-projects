`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 12:04:38 PM
// Design Name: 
// Module Name: mux_8_to_1_gatelevel_testbench
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


module mux_8_to_1_gatelevel_testbench ;
reg [7:0]i ;
reg [2:0]s ;
wire y ;
mux_8_to_1_gatelevel uut(.i(i) , .s(s) , .y(y));
integer j ;
initial
begin
$monitor($time,
                "i = %b , s = %b , y = %b",
                i,s,y);

for(j = 0 ; j < 2048 ; j = j + 1)
begin
i = j[10:3];
s = j[2:0];
#10 ;
end
$finish ;
end

endmodule
