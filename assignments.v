`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: LinkedIn Learning
// Engineer: Eduardo Corpeño
// 
// Create Date: 11/04/2019 09:56:07 PM
// Design Name: 
// Module Name: assignments
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// program of non-blocking assignment
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module assignments (
    input i,
    input clk,
    output reg o
);
    reg temp;
    always @ (posedge clk) begin
        temp <= i;
        o <= temp;
    end
endmodule