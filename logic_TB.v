`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edmond Febrinicko Armay
// 
// Create Date: 2022-07-29 07:04:42 PM
// Design Name: 
// Module Name: logic_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// testbench for logic program
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module logic_TB ();
    reg [2:0] in;
    wire out;
    LOGIC DUT_logic(in[2], in[1], in[0], out);
    initial begin
        $dumpfile("logic.vcd");
        $dumpvars(0, logic_TB);
        in = 0; #10;
        in = 1; #10;
        in = 2; #10;
        in = 3; #10;
        in = 4; #10;
        in = 5; #10;
        in = 6; #10;
        in = 7; #10;
        $stop;
    end
endmodule