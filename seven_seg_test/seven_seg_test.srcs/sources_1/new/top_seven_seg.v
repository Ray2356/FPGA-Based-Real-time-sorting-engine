`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 07:20:29 PM
// Design Name: 
// Module Name: top_seven_seg
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


module top_seven_seg (
    input reset,
    input Clock_100Mhz,
    input wire [3:0] In_num,
    output [6:0] LED_Seg,
    output [3:0] Anode_Activate
);

    wire [15:0] display_num;
    assign display_num[15:4] = 16'b0;
    assign display_num[3:0] = In_num[3:0];
    seven_segment_display SSDV (
        .reset(reset), .Clock_100Mhz(Clock_100Mhz), .displayed_number(display_num),
        .LED_out(LED_Seg), .anode_Activate(Anode_Activate)
    );

endmodule