`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 11:50:44 AM
// Design Name: 
// Module Name: mux_8_to_1_gatelevel
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


module mux_8_to_1_gatelevel(
    input [7:0]i , 
    input [2:0]s,
    output y
    );
wire s0_n , s1_n , s2_n ;
wire w1 , w2, w3 , w4 , w5 , w6 , w7 , w8 ;
not(s0_n , s[0]);
not(s1_n , s[1]);
not(s2_n , s[2]);

and(w1 , s2_n , s1_n , s0_n , i[0]);
and(w2 , s2_n , s1_n , s[0] , i[1]);
and(w3 , s2_n , s[1] , s0_n , i[2]);
and(w4 , s2_n , s[1] , s[0] , i[3]);
and(w5 , s[2] , s1_n , s0_n , i[4]);
and(w6 , s[2] , s1_n , s[0] , i[5]);
and(w7 , s[2] , s[1] , s0_n , i[6]);
and(w8 , s[2] , s[1] , s[0] , i[7]);

or(y , w1 ,w2, w3, w4 ,w5 , w6, w7 , w8);

endmodule
