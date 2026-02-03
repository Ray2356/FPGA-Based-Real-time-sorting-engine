`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 07:11:57 PM
// Design Name: 
// Module Name: modulator
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


module modulator(input done, input clk, output reg enable);
integer ctrl;
initial begin
ctrl = 0;
end
//done = 0-> reset
//done =1-> perform once
always@(negedge clk) begin
if(!done) begin
ctrl = 1;
end

else begin
if(ctrl) begin
enable <= 1;
ctrl <= 0;
end
else begin
enable <= 0;
end  
end
end
endmodule
