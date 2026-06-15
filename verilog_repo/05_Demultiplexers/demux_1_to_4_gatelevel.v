`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2026 11:40:57 AM
// Design Name: 
// Module Name: demux_1_to_4_gatelevel
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


module demux_1_to_4_gatelevel(
    input i , s0 , s1,
    output y0 , y1 , y2 , y3
    );
wire ns1 , ns0 ;

not(ns0 , s0 );
not(ns1 , s1 );

and(y0 , ns1 , ns0 , i);
and(y1 , ns1 , s0 , i);
and(y2 , s1 , ns0 , i);
and(y3 , s1 , s0 , i);

endmodule
