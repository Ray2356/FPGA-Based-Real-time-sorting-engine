`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 06:52:23 PM
// Design Name: 
// Module Name: seven_segment_display
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


module seven_segment_display (
    input Clock_100Mhz,
    output reg [3:0] anode_Activate,
    input reset,
    output reg [6:0] LED_out,
    input wire [15:0] displayed_number
);
    reg [3:0] LED_BCD;
    reg [17:0] refresh_counter;
    reg [1:0] LED_activating_counter;
    reg [15:0] displayed_number_dec;
    initial begin
        LED_BCD = 4'b0;
        refresh_counter = 18'b0;
        LED_activating_counter = 2'b0;
        displayed_number_dec = 16'b0;
    end
    always @(LED_BCD) begin
        case (LED_BCD)
            4'b0000: LED_out <= 7'b0000001; // "0"
            4'b0001: LED_out <= 7'b1001111; // "1"
            4'b0010: LED_out <= 7'b0010010; // "2"
            4'b0011: LED_out <= 7'b0000110; // "3"
            4'b0100: LED_out <= 7'b1001100; // "4"
            4'b0101: LED_out <= 7'b0100100; // "5"
            4'b0110: LED_out <= 7'b0100000; // "6"
            4'b0111: LED_out <= 7'b0001111; // "7"
            4'b1000: LED_out <= 7'b0000000; // "8"
            4'b1001: LED_out <= 7'b0000100; // "9"
            default: LED_out <= 7'bxxxxxxx;
        endcase
    end
    always @(posedge Clock_100Mhz) begin
        if (!reset) begin
            refresh_counter <= 18'b0;
        end else begin
        //LED_activating_counter <= refresh_counter[1:0];
            refresh_counter <= refresh_counter + 1;
            if(refresh_counter == 18'b111111111111111111) begin
                LED_activating_counter <= LED_activating_counter + 1;
            end
        end
    end
    
    always @(LED_activating_counter) begin
        case (LED_activating_counter)
            2'b00: begin
                anode_Activate <= 4'b0111;
                LED_BCD <= displayed_number_dec[15:12];
            end
            2'b01: begin
                anode_Activate <= 4'b1011;
                LED_BCD <= displayed_number_dec[11:8];
            end
            2'b10: begin
                anode_Activate <= 4'b1101;
                LED_BCD <= displayed_number_dec[7:4];
            end
            2'b11: begin
                anode_Activate <= 4'b1110;
                LED_BCD <= displayed_number_dec[3:0];
            end
            default: anode_Activate <= 4'bxxxx;
        endcase
    end

    always @(displayed_number) begin
        case (displayed_number[3:0])
            4'b1010: begin
                displayed_number_dec[7:4] <= 4'b0001;
                displayed_number_dec[3:0] <= 4'b0000;
            end 
            4'b1011: begin
                displayed_number_dec[7:4] <= 4'b0001;
                displayed_number_dec[3:0] <= 4'b0001;
            end
            4'b1100: begin
                displayed_number_dec[7:4] <= 4'b0001;
                displayed_number_dec[3:0] <= 4'b0010;
            end
            4'b1101: begin
                displayed_number_dec[7:4] <= 4'b0001;
                displayed_number_dec[3:0] <= 4'b0011;
            end
            4'b1110: begin
                displayed_number_dec[7:4] <= 4'b0001;
                displayed_number_dec[3:0] <= 4'b0100;
            end
            4'b1111: begin
                displayed_number_dec[7:4] <= 4'b0001;
                displayed_number_dec[3:0] <= 4'b0101;
            end
            default: displayed_number_dec <= displayed_number;
        endcase
    end

endmodule
