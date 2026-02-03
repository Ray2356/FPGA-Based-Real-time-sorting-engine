`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 02:40:31 PM
// Design Name: 
// Module Name: uart_top_tb
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
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/12 13:45:28
// Design Name: 
// Module Name: tb_uart_top
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

module uart_top_tb;

  // Inputs
  reg clk_in;
  reg reset_n;
  reg [7:0] tx_data;
  reg tx_start;
  wire [7:0] rx_data_out;
  wire rx_done;
  wire txd;
  reg rxd;
  wire rxd_1;

  // Instantiate uart_top
    mirror mr (
        .rxd(rxd),
        .rxd_1(rxd_1)
    
    );

  // Clock generation
  initial begin
  rxd = 0;
  end
  
  always begin
    #5 clk_in = ~clk_in;
    #5 rxd = ~rxd;
  end



endmodule
