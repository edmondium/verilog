`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edmond Febrinicko Armay
// 
// Create Date: 2022-08-04 08:20:08 PM
// Design Name: 
// Module Name: mux_demux_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// testbench program for multiplexer and demultiplexer
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module mux_demux_TB ();
    reg clk_1MHz, clk_4MHz;
    reg sel1;
    reg [1:0] sel2;
    wire mux_out;
    wire [3:0] demux_out;
    mux_2_to_1 DUT_mux(
        .I({clk_4MHz, clk_1MHz}),
        .sel(sel1),
        .Y(mux_out)
    );
    demux_1_to_4 DUT_demux(
        .I(clk_1MHz),
        .sel(sel2),
        .Y(demux_out)
    );
    always #500 clk_1MHz = ~clk_1MHz;
    always #125 clk_4MHz = ~clk_4MHz;
    initial begin
        $dumpfile("mux_demux.vcd");
        $dumpvars(0, mux_demux_TB);
        clk_1MHz = 0;
        clk_4MHz = 0;
        sel1 = 0;
        sel2 = 0;
        #10_000;
        sel2 = 1;
        #10_000;
        sel1 = 1;
        sel2 = 2;
        #10_000;
        sel2 = 3;
        #10_000;
        $finish;
    end
endmodule