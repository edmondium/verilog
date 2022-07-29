`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edmond Febrinicko Armay
// 
// Create Date: 2022-07-28 08:28:52 PM
// Design Name: 
// Module Name: boolean
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// program of continuous assignment
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module boolean (
    input a,
    input b,
    input c,
    output F
);
    assign F = (~a & ~b & c) | (a & ~b & c);
endmodule