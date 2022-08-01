`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Linkedin Learning
// Engineer: Eduardo Corpeño, Edmond Febrinicko Armay
// 
// Create Date: 10/28/2019 08:37:01 PM
// Design Name: 
// Module Name: is_prime_gates
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// program of prime number using gates method
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module is_prime_gates (
    input c,
    input b,
    input a,
    output P
);
    wire w1, w2, w3;
    not(w1, c);
    and(w2, w1, b);
    and(w3, a, c);
    or(P, w2, w3);
endmodule