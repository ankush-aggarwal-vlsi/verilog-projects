`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 11:18:24 AM
// Design Name: 
// Module Name: logic_gates_testbench
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


module logic_gates_testbench ;
reg a , b ;
wire ynot , yand , ynand , yor , ynor , yxor , yxnor ;
logic_gate_behaviourals uut(.a(a) , .b(b) , .ynot(ynot) , .yand(yand) , .ynand(ynand) , .yor(yor) , .ynor(ynor) , .yxor(yxor) , .yxnor(yxnor));
initial
begin
a = 0 ; b = 0 ;
$monitor($time,"a=%b,b=%b,ynot=%b,yand=%b,ynand=%b,yor=%b,ynor=%b,yxor=%b,yxnor=%b",a,b,ynot,yand,ynand,yor,ynor,yxor,yxnor);
#10 a = 0 ; b = 1 ;
#10 a = 1 ; b = 0 ;
#10 a = 1 ; b = 1 ;
#10 $finish ;
end
endmodule
