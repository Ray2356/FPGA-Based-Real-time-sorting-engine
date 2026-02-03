`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 05:19:29 PM
// Design Name: 
// Module Name: Data_comb
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

//input 3 data_in and generate 1 data_comb duing ONE_CLOCK_CYCLE!
module Data_comb(rx_done,reset,data_in,data_comb,done);
input rx_done;
input reset;
input [7:0] data_in;
output reg [23:0] data_comb;
output reg done;
reg [1:0] count;
reg [23:0] data_temp;
initial begin
count <= 2'b0;
data_comb <= 0;
done <= 0;
data_temp <= 24'b0;
data_comb <= 24'b0;
end

always@(posedge rx_done)
begin
if (!reset)
    begin
    count <= 0;
    data_comb <= 0;
    done <= 0;
    end
else begin 
    case(count)
        2'b00: if( data_temp[23:16] != data_in)begin
        data_temp[7:0] <= data_in;
        count <= 2'b01;
        done <= 0;
        end
        2'b01: if( data_temp[7:0] != data_in) begin
        data_temp[15:8] <= data_in;
        count <= 2'b10;
        end
        2'b10:if( data_temp[15:8] != data_in)begin
        data_temp[23:16] <= data_in;
        done <= 1;
        count <= 2'b00;
        end
    endcase
    end
    if(done)begin
    data_comb <= data_temp;
    done <= 0;
    end
end


endmodule
