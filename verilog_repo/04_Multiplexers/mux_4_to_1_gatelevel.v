`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 08:54:39 AM
// Design Name: 
// Module Name: mux_4_to_1_gatelevel
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


module mux_4_to_1_gatelevel(
    input i0,i1,i2,i3,s0,s1,
    output y
    );
wire ns0 , ns1 ;
wire w1 , w2 , w3 , w4 ;
not(ns0,s0);
not(ns1,s1);

and(w1 , ns1 , ns0 , i0);
and(w2 , ns1 , s0 , i1);
and(w3 , s1 , ns0 , i2);
and(w4  , s1 , s0 , i3);

or(y , w1 , w2 , w3 , w4);
endmodule
