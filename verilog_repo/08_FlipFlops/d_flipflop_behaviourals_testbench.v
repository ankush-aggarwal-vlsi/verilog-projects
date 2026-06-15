`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2026 12:49:01 PM
// Design Name: 
// Module Name: d_flipflop_behaviourals_testbench
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

module d_flipflop_behaviourals_testbench;

reg clk, rst, d;
wire q, qbar;

// DUT
d_flipflop_behaviourals uut (
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q),
    .qbar(qbar)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    d = 0;

    $monitor($time,
        " clk=%b rst=%b d=%b q=%b qbar=%b",
        clk, rst, d, q, qbar
    );

    #12 rst = 0;   // release reset

    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 1;
    #10 d = 0;

    #20 $finish;
end

endmodule