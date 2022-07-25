`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edmond Febrinicko Armay
// 
// Create Date: 2022-07-25 04:24:58 PM
// Design Name: 
// Module Name: full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// full adder program
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module full_adder (
    input A, input B, input Cin, output S, output Cout
);
    wire P, G, H;
    half_adder ha1(A, B, P, G);
    half_adder ha2(
        .A(P),
        .B(Cin),
        .S(S),
        .Cout(H)
        );
    or(Cout, G, H);
endmodule