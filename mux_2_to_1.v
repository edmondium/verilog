`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: LinkedIn Learning
// Engineer: Eduardo Corpeño
// 
// Create Date: 11/07/2019 04:28:15 PM
// Design Name: 
// Module Name: mux_2_to_1
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
module mux_2_to_1 (
    input [1:0] I,
    input sel,
    output reg Y
);
    always @ (sel, I) begin
        if (sel == 0)
        Y = I[0];
        else
            Y = I[1];
    end
endmodule