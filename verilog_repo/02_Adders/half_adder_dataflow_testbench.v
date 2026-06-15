`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 12:42:48 PM
// Design Name: 
// Module Name: half_adder_dataflow_testbench
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


module half_adder_dataflow_testbench ;
reg a , b ;
wire s , cout ;
half_adder_dataflow uut(.a(a) , .b(b) , .s(s) , .cout(cout));
initial 
begin 
a = 0 ; b = 0 ;
$monitor($time,
                "a = %b , b = %b , s = %b , cout = %b",
                a,b,s,cout);
#10 a = 0 ; b = 1 ;
#10 a = 1 ; b = 0 ;
#10 a = 1 ; b = 1 ;
#10 $finish ;               
end
endmodule
