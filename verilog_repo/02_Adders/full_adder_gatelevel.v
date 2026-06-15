`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 01:21:36 PM
// Design Name: 
// Module Name: full_adder_gatelevel
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


module full_adder_gatelevel(
    input a,b,cin,
    output s,cout
    );
wire w1 , w2 , w3 ;

xor(s , a , b , cin );

and(w1 , a , b );
and(w2 , b , cin );
and(w3 , cin , a);

or(cout , w1 , w2 , w3 );

endmodule
