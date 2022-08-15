`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edmond Febrinicko Armay
// 
// Create Date: 2022-07-29 08:29:20 PM
// Design Name: 
// Module Name: boolean_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// testbench for boolean program
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module boolean_TB ();
    reg a, b, c;
    wire F;
    boolean DUT_boolean(a, b, c, F);
    initial begin
        $dumpfile("boolean.vcd");
        $dumpvars(0, boolean_TB);
        {a, b, c} = 0; #10;
        {a, b, c} = 1; #10;
        {a, b, c} = 2; #10;
        {a, b, c} = 3; #10;
        {a, b, c} = 4; #10;
        {a, b, c} = 5; #10;
        {a, b, c} = 6; #10;
        {a, b, c} = 7; #10;
        $stop;
    end
endmodule