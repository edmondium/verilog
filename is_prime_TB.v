`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Edmond Febrinicko Armay
// 
// Create Date: 2022-07-31 08:39:46 PM
// Design Name: 
// Module Name: is_prime_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// testbench for prime number program
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module is_prime_TB ();
    reg [2:0] cba;
    wire prime;
    reg pass;
    //is_prime_gates DUT_IP(cba[2], cba[1], cba[0], prime);
    //is_prime_boolean DUT_IP(cba[2], cba[1], cba[0], prime);
    is_prime_procedural DUT_IP(cba[2], cba[1], cba[0], prime);
    initial begin
        //$dumpfile("prime_gates.vcd");
        //$dumpfile("prime_boolean.vcd");
        $dumpfile("prime_procedural.vcd");
        $dumpvars(0, is_prime_TB);
        cba = 0; pass = 1; #10;
        pass = (prime == 1)? 0:pass;
        cba = 1; #10;
        pass = (prime == 1)? 0:pass;
        cba = 2; #10;
        pass = (prime == 0)? 0:pass;
        cba = 3; #10;
        pass = (prime == 0)? 0:pass;
        cba = 4; #10;
        pass = (prime == 1)? 0:pass;
        cba = 5; #10;
        pass = (prime == 0)? 0:pass;
        cba = 6; #10;
        pass = (prime == 1)? 0:pass;
        cba = 7; #10;
        pass = (prime == 0)? 0:pass;
        if (pass) begin
            $display("Nice job, you aced the challenge! Pat yourself on the back!");
        end
        else
            $display("There is something wrong with your module. Don't give up!");
        $stop;
    end
endmodule