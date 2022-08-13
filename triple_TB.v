`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edmond Febrinicko Armay
// 
// Create Date: 2022-08-13 11:10:58 PM
// Design Name: 
// Module Name: triple_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// testbench for triple.v program
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module triple_TB ();
    reg [3:0] num_value;
    wire [5:0] result;
    triple DUT_triple(num_value, result);
    initial begin
        $dumpfile("triple.vcd");
        $dumpvars(0, triple_TB);
        $monitor("The triple of %d is %d.", num_value, result);
        num_value = 4'd0; #10;
        num_value = 4'd1; #10;
        num_value = 4'd3; #10;
        num_value = 4'd5; #10;
        num_value = 4'd10; #10;
        num_value = 4'd15; #10;
        $finish;
    end
endmodule