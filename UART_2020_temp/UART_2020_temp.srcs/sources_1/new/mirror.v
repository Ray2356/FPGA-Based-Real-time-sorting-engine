`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 02:30:54 PM
// Design Name: 
// Module Name: mirror
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


module mirror(rxd,rxd_1);

input rxd;
output reg rxd_1;
always@(*) begin
rxd_1 = rxd;
end
    
    
endmodule
