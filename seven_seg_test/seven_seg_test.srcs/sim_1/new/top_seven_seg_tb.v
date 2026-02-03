`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 08:16:14 PM
// Design Name: 
// Module Name: top_seven_seg_tb
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

`timescale 1ns / 1ps

module top_seven_seg_tb;

    reg reset;
    reg Clock_100Mhz;
    reg [3:0] In_num;
    wire [6:0] LED_Seg;
    wire [3:0] Anode_Activate;

    // Instantiate the top_seven_seg module
    top_seven_seg top_seven_seg_inst (
        .reset(reset),
        .Clock_100Mhz(Clock_100Mhz),
        .In_num(In_num),
        .LED_Seg(LED_Seg),
        .Anode_Activate(Anode_Activate)
    );

    // Clock generation
    always begin
        #5 Clock_100Mhz = ~Clock_100Mhz;
    end

    // Testbench stimulus
    initial begin
        // Initialize signals
        reset <= 1;
        Clock_100Mhz <= 0;
        In_num <= 4'b0000;

        // Apply reset
        #10 reset <= 0;
        #10 reset <= 1;

        // Test input numbers
        for (integer i = 0; i < 16; i = i + 1) begin
            #10 In_num <= i;
        end

        // Finish the simulation
        #10 $finish;
    end

endmodule
