`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 04:21:31 PM
// Design Name: 
// Module Name: i2o
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


module i2o(input clk,input done,input wire [7:0] data_in,output reg [7:0] data_out,output wire start);

reg temp;
reg temp2;
assign start = temp2;
initial begin
temp2 <=1;
data_out <= 8'b0;
temp <= 0;
end

always @(negedge done or posedge done) begin

data_out <= data_in;
temp2 <= ~temp2;

end

always @(posedge clk) begin
if (temp) begin
    if (temp2) begin
    temp <= temp + 1;
    end
end else begin

temp <= 0;
end

end

    
    
endmodule
