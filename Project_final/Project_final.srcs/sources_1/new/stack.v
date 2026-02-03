`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2023 07:51:38 PM
// Design Name: 
// Module Name: stack
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


module stack(enable,reset,clk,PUSH,POP,length,able);
input enable;
input clk;
input [23:0] PUSH;
//input  R_W;
output [23:0] POP;
output able;
input reset;
input wire [4:0] length;
wire [23:0] PUSH;
reg [23:0] POP;
integer i;
//reg [4:0] tos;
integer tos;
//wire R_W;
reg able;  //write enable

reg [23:0] temp[0:15];

initial begin
able = 0;
end

always @ (posedge clk)

if(reset) begin
   for( i = 0; i < 16; i = i + 1) begin
   temp[i] = 0;
   end
   tos = 0;
   able = 0;
end 
else  begin
if(tos != length)
    
    begin
        //$display(length);
        temp[tos] = PUSH; 
        tos = tos + 1;
    end
else if(tos == length)
    begin
        POP = temp[0];
        if (POP) begin
        able = 1;
        end
        for (i = 0; i < length; i = i + 1)
        begin
        temp[i]<=temp[i+1];
        end
        temp[tos] = PUSH; 
    end
end

endmodule
