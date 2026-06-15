`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2026 06:49:43 PM
// Design Name: 
// Module Name: sr_flipflop_testbench
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


module sr_flipflop_testbench ;
reg s , r ,clk , rst ;
wire q , qbar ;
sr_flipflop uut(.s(s) , .r(r) , .clk(clk) , .rst(rst) , .q(q) , .qbar(qbar));
always #5 clk = ~clk ;
initial
begin
clk = 0 ;
rst = 0 ;
s = 0 ;
r = 0 ;

$monitor($time,
                "s = %b , r = %b , clk = %b , rst = %b , q = %b , qbar = %b",
                s , r ,clk , rst , q ,qbar);
// Apply reset
        #10 rst = 0;
    
        // Hold
        s = 0; r = 0;
        #10;
    
        // Reset
        s = 0; r = 1;
        #10;
    
        // Set
        s = 1; r = 0;
        #10;
    
        // Invalid
        s = 1; r = 1;
        #10;
    
        // Back to Hold
        s = 0; r = 0;
        #10;
    
        $finish;
    end
    
    endmodule
