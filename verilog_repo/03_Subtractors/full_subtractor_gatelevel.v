`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2026 12:22:29 PM
// Design Name: 
// Module Name: full_subtractor_gatelevel
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


module full_subtractor_gatelevel(
    input a , b , bin ,
    output d , bout
    );
wire na ;
wire w1 , w2 , w3 ;
not(na , a);

xor(d , a ,b , bin) ;
and(w1 , na , b);
and(w2 , na , bin);
and(w3 , b , bin) ;
or(bout , w1 , w2 , w3);

endmodule
