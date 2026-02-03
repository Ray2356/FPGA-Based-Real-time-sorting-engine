`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 02:21:30 PM
// Design Name: 
// Module Name: BRAM
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


module BRAM(clk,ena,wea,addra,dina,douta);
input clk,ena,wea;
input[9:0] addra;
input[23:0] dina;
output[23:0] douta;

ram ram(clk,ena,wea,addra,dina,douta);

endmodule

