`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edmond Febrinicko Armay
// 
// Create Date: 2022-07-28 06:40:33 PM
// Design Name: 
// Module Name: demux_1_to_4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// demultiplexer 1 to 4 program
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module demux_1_to_4 (
    input I,
    input [1:0] sel,
    output reg [3:0] Y
);
    always @ (sel, I)
    case (sel)
        2'b00: Y = {3'b0, I};
        2'b01: Y = {2'b0, I, 1'b0};
        2'b10: Y = {1'b0, I, 2'b0};
        2'b11: Y = {I, 3'b0};
    endcase
endmodule