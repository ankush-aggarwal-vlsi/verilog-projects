`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 01:12:55 PM
// Design Name: 
// Module Name: full_adder_dataflow_testbench
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


module full_adder_dataflow_testbench ;
reg a , b , cin;
wire s , cout ; 
full_adder_dataflow uut(.a(a) , .b(b) , .cin(cin) , .s(s) , .cout(cout));
initial 
begin
a = 0 ; b = 0 ; cin = 0 ;
$monitor($time,
                "a = %b , b = %b , cin = %b ,s = %b , cout = %b",
                a,b,cin,s,cout);

#10 a = 0 ; b = 0 ; cin = 1 ; 
#10 a = 0 ; b = 1 ; cin = 0 ; 
#10 a = 0 ; b = 1 ; cin = 1 ; 
#10 a = 1 ; b = 0 ; cin = 0 ; 
#10 a = 1 ; b = 0 ; cin = 1 ; 
#10 a = 1 ; b = 1 ; cin = 0 ; 
#10 a = 1 ; b = 1 ; cin = 1 ; 
#10 $finish ; 

end

endmodule
