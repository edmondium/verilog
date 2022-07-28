`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edmond Febrinicko Armay
// 
// Create Date: 2022-07-28 07:16:09 PM
// Design Name: 
// Module Name: demux_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// testbench for demultiplexer 1 to 4
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module demux_TB ();
    reg a;
    reg [1:0] sel;
    wire [3:0] demux_out;
    demux_1_to_4 DUT_demux(a, sel, demux_out);
    initial begin
        $dumpfile("demux.vcd");
        $dumpvars(0, demux_TB);
        a = 0;
        sel = 0; #10;
        a = 1;  #10;
        a = 0;  #10;
        sel = 1; #10;
        a = 1;  #10;
        a = 0;  #10;
        sel = 2; #10;
        a = 1;  #10;
        a = 0;  #10;
        sel = 3; #10;
        a = 1;  #10;
        a = 0;  #10;
        $stop;
    end
endmodule