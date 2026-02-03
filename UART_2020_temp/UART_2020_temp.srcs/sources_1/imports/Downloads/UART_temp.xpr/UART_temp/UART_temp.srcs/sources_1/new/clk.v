`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2023 05:01:12 PM
// Design Name: 
// Module Name: clk
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

module clk(clk_in, clk_5MHz, reset);

input clk_in; // 100MHz
output clk_5MHz;
input reset;


clk_wiz_0 CLKGEN(
  .clk_out1(clk_5MHz),
  .reset(reset),
  .locked(),
  .clk_in1(clk_in)
 );
 
endmodule
