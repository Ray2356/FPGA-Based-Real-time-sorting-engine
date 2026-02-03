`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/12 13:42:00
// Design Name: 
// Module Name: uart_tx
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


module uart_tx (
    input wire clk,
    input wire reset_n,
    input start,
    input wire [7:0] data,
    output wire txd
);

parameter FREQ = 50_000000;
parameter BPS = 9600;
localparam COUNTER_MAX = FREQ / BPS - 1;

reg [31:0] counter = 0;
reg [9:0] shift_reg = 10'b0;
reg busy = 0;
reg pstart = 0;
assign txd = (busy) ? shift_reg[0] : 1'b1;

always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        counter <= 0;
        shift_reg <= 0;
        busy <= 0;
        
    end else begin
        if (busy) begin
            if (counter == COUNTER_MAX) begin
                counter <= 0;
                shift_reg <= shift_reg >> 1;
                if (shift_reg >> 1 == 1'b0) begin
                    busy <= 0;
                end
            end else begin
                counter <= counter + 1;
            end
        end else if (pstart != start && start) begin
            busy <= 1;
            counter <= 0;
            shift_reg <= {1'b1, data, 1'b0};
        end
    end
    pstart = start;
end


endmodule