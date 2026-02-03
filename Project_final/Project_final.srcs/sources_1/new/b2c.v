`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 10:35:44 PM
// Design Name: 
// Module Name: b2c
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


module b2c(input wire [23:0] data_comb, input wire enable, input clk, output reg [23:0] data_out, output reg send);
integer count;
integer trig;
initial begin
data_out <= 24'b0;
send <= 0;
trig <= 0;
count <= 0;
end


always@(posedge clk) begin
if (enable) begin
data_out <= data_comb;
trig <= 1;
end
else
data_out <= 24'b0;

if(trig) begin
    if(count == 100)begin
    send <= 1;
    count <= 0;
    trig <= 0;
    end else begin
    count <= count + 1;
    send <= 0;
    end
    end
end
endmodule
