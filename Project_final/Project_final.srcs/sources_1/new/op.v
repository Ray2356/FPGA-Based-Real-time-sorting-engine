`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 01:22:19 PM
// Design Name: 
// Module Name: op
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


module op(reset,clk,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,opable);


input clk;
input [19:0] in1;
  
//input  R_W;
output [19:0] POP;
output able;
input reset;
input wire [4:0] length;
wire [19:0] PUSH;
reg [19:0] POP;
integer i;
//reg [4:0] tos;
integer tos;
//wire R_W;
reg able;  //write enable

reg [19:0] temp[0:15];

initial begin
able = 0;
end

always @ (posedge clk or reset)
if(reset) begin
   for( i = 0; i < 16; i = i + 1) begin
   temp[i] = 0;
   end
   tos = 0;
   able = 0;
end 
else begin
    );
endmodule
