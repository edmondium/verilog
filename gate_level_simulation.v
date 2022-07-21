`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2019 09:58:09 PM
// Design Name: 
// Module Name: gate_level_simulation
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


module gate_level_simulation();
    reg a,b,c,d,e;
    wire X,Y;
    
    nand my_gate(X,a,b,c);
    
    wire temp;
    xor(temp,d,e);
    not(Y,temp);

    initial begin
	$dumpfile("gate.vcd");
	$dumpvars(0, gate_level_simulation);
        {a,b,c} = 0;   
        {d,e}   = 0;   #2
        {a,b,c} = 1;   #2
        {a,b,c} = 2;   
        {d,e}   = 1;   #2
        {a,b,c} = 3;   #2
        {a,b,c} = 4;   
        {d,e}   = 2;   #2
        {a,b,c} = 5;   #2
        {a,b,c} = 6;   
        {d,e}   = 3;   #2
        {a,b,c} = 7;   #2
        $stop;  
    end 
endmodule
