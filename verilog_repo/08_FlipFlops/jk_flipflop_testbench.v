`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2026 06:19:05 PM
// Design Name: 
// Module Name: jk_flipflop_testbench
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


module jk_flipflop_testbench ;
reg j , k , clk , rst ;
wire q , qbar ;
jk_flipflop uut(.j(j) , .k(k) , .clk(clk) , .rst(rst) , .q(q) , .qbar(qbar));

always #5 clk = ~clk ;

initial
begin
clk = 0 ;
rst = 1 ;
j = 0 ;
k = 0 ;
$monitor($time,
                "j = %b , k = %b , clk = %b , rst = %b , q = %b , qbar = %b",
                j , k , clk , rst , q , qbar);

#10 rst = 0 ;

j = 0 ; k = 0 ;
#10 ;

j = 0 ; k = 1 ;
#10 ;

j = 1 ; k = 0 ;
#10 ;

j = 1 ; k = 1 ;
#30 ; 

j = 0 ; k = 0 ;
#10 ;

$finish ;

end
endmodule
