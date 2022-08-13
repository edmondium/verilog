`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edmond Febrinicko Armay
// 
// Create Date: 2022-08-04 10:56:23 PM
// Design Name: 
// Module Name: triple
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Display the result for input values 0, 1, 3, 5, 10, and 15
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module triple (
    input [3:0] a,
    output [5:0] result
);
    assign result = 3*a;
endmodule