`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edmond Febrinicko Armay
// 
// Create Date: 2022-08-13 09:19:27 PM
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 4-bit ALU
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module ALU (
    input [3:0] a,
    input [3:0] b,
    input [2:0] op,
    output reg [7:0] result
);
    always @ (*)
    case (op)
        0 : result = a + b;
        1 : result = a * b;
        2 : result = a % b;
        3 : result = a & b;
        4 : result = a - b;
        5 : result = a / b;
        6 : result = a | b;
        7 : result = a ^ b;
        //default: 
    endcase
endmodule