`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 09:24:49 PM
// Design Name: 
// Module Name: toserial
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


module toserial(busy,send,clk,POP0,POP1,POP2,POP3,POP4,POP5,POP6,POP7,POP8,POP9,POP10,POP11,POP12,POP13,POP14,POP15,able,tx_data8,start);
input wire busy;
reg [4:0] num = 4'd15;
input send;
input clk;
input [23:0] POP0;
input [23:0] POP1;
input [23:0] POP2;
input [23:0] POP3;
input [23:0] POP4;
input [23:0] POP5;
input [23:0] POP6;
input [23:0] POP7;
input [23:0] POP8;
input [23:0] POP9;
input [23:0] POP10;
input [23:0] POP11;
input [23:0] POP12;
input [23:0] POP13;
input [23:0] POP14;
input [23:0] POP15;
input [0:15] able;
output reg [7:0] tx_data8;
reg [383:0] tx_data;
output reg start;
integer length = 16*24;
wire [4:0] count;
initial begin
tx_data <= 384'b0;
start <= 0;
end

always@(posedge clk) begin
//for (i = 0; i < length; i = i + 1)
//    begin
//    if(able[i]== 1)
//    tx_data = {tx_data,POP[i]};
//    end
if (send) begin
    //if(!busy) begin
    case(num)
    4'd15:begin
    tx_data <= {POP0,POP1,POP2,POP3,POP4,POP5,POP6,POP7,       
POP8,POP9,POP10,POP11,POP12,POP13,POP14,POP15};
    end
    4'd14:begin
    tx_data <= {POP0,POP1,POP2,POP3,POP4,POP5,POP6,POP7,      
    POP8,POP9,POP10,POP11,POP12,POP13,POP14};
    end
    4'd13:begin
    tx_data <= {POP0,POP1,POP2,POP3,POP4,POP5,POP6,POP7,      
    POP8,POP9,POP10,POP11,POP12,POP13};
    end
    4'd12:begin
    tx_data <= {POP0,POP1,POP2,POP3,POP4,POP5,POP6,POP7,       
    POP8,POP9,POP10,POP11,POP12};
    end
    4'd11:begin
    tx_data <= {POP0,POP1,POP2,POP3,POP4,POP5,POP6,POP7,   
    POP8,POP9,POP10,POP11};
    end
    4'd10:begin
    tx_data <= {POP0,POP1,POP2,POP3,POP4,POP5,POP6,POP7,       
    POP8,POP9,POP10};
    end
    4'd9:begin
    tx_data <= {POP0,POP1,POP2,POP3,POP4,POP5,POP6,POP7,      
    POP8,POP9};
    end
    4'd8:begin
    tx_data <= {POP0,POP1,POP2,POP3,POP4,POP5,POP6,POP7,
    POP8};
    end     
    4'd7:tx_data <= {POP0,POP1,POP2,POP3,POP4,POP5,POP6,POP7};
    4'd6:tx_data <= {POP0,POP1,POP2,POP3,POP4,POP5,POP6};
    4'd5:tx_data <= {POP0,POP1,POP2,POP3,POP4,POP5};
    4'd4:tx_data <= {POP0,POP1,POP2,POP3,POP4};
    4'd3:tx_data <= {POP0,POP1,POP2,POP3};
    4'd2:tx_data <= {POP0,POP1,POP2};
    4'd1:tx_data <= {POP0,POP1};
    4'd0:tx_data <= {POP0};
    endcase
    
  
end
else if (tx_data != 1'b0)
if(!busy) begin
start = 1;

tx_data8 <= tx_data[7:0];
tx_data <= tx_data >> 8;

end else begin
start = 0;
end
         
        
end

endmodule
