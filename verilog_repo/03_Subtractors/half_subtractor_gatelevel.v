`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2026 09:38:19 AM
// Design Name: 
// Module Name: half_subtractor_gatelevel
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


module half_subtractor_gatelevel(
    input a,b,
    output diff,borr
    );
wire na ;
not ( na , a );
xor ( diff , a , b );
and ( borr , na , b ) ; 
endmodule
