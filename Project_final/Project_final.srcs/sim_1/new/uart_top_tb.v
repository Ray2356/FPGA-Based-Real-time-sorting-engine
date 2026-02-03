`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2023 01:51:14 AM
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

module uart_top_tb;

  reg reset_n;
  reg [7:0] tx_data;
  wire [7:0] rx_data_out;
  wire rx_done;
  wire txd;
  reg rxd;
  reg clk_in;
  reg reset;
  wire rxd_1;
  reg tx_start;
  // Instantiate the uart_top module
  uart_top dut (
    .reset_n(reset_n),
    .rx_data_out(rx_data_out),
    .rx_done(rx_done),
    .txd(txd),
    .rxd(rxd),
    .clk_in(clk_in),
    .reset(reset),
    .rxd_1(rxd_1)

  );

  // Clock generation
 initial begin
        
        reset_n = 1;
        #10 reset_n = 0;
        #1 reset_n = 1;
        clk_in = 0;
        reset = 1;
        tx_start = 0;

        #1 reset = 0;
    end
    always #5 clk_in = ~clk_in;
    // Test case 1
        //#5 data_in = 20'h00016;
        //#5 data_in = 20'h00000;
//        #10 data_in = 20'h0002E;
//        #10 data_in = 20'h0002D;
//        #10 data_in = 20'h0002C;
//        #10 data_in = 20'h0002B;
//        #10 data_in = 20'h0002A;
//        #10 data_in = 20'h00029;
//        #10 data_in = 20'h00028;
//        #10 data_in = 20'h00027;
//        #10 data_in = 20'h00026;
//        #10 data_in = 20'h00025;
//        #10 data_in = 20'h00024;
//        #10 data_in = 20'h00023;
//        #10 data_in = 20'h00022;
//        #10 data_in = 20'h00021;
//        #10 data_in = 20'h00020;
//        #10 data_in = 20'h00015;
//        #10 data_in = 20'h00014;
//        #10 data_in = 20'h00013;
//        #10 data_in = 20'h00012;
//        #10 data_in = 20'h00011;
//        #10 data_in = 20'h0000F;
//        #10 data_in = 20'h0000E;
//        #10 data_in = 20'h0000D;
//        #10 data_in = 20'h0000C;
//        #10 data_in = 20'h0000E;
//        #10 data_in = 20'h0000D;
//        #10 data_in = 20'h0000C;
//        #10 data_in = 20'h0000B;
//        #10 data_in = 20'h0000A;
//        #10 data_in = 20'h00009;
//        #10 data_in = 20'h00008;
//        #10 data_in = 20'h00007;
//        #10 data_in = 20'h00006;
//        #10 data_in = 20'h00005;
//        #10 data_in = 20'h00004;
//        #10 data_in = 20'h00003;
//        #10 data_in = 20'h00002;
integer i;
        always@(posedge clk_in)
        begin
          #70_0000; // wait for 10 time units
//          if ( i % 2 == 0) begin
//          data_in = data_in + 10; // increment data_in by 1
//          end else begin
//          data_in = data_in - 5;
//          end
          tx_data = 8'd2;
          #10 tx_start =1;
          #10 tx_start =0;
          
          #70_0000;
          tx_data = 8'd3;
          #10 tx_start = 1;
          #10 tx_start = 0;
          //$display("cnt = %d", cnt); // display the current value of data_in
//          if (i == 20)begin
//            enab = 0;
            
//          end
//          if (i == 25)begin
//            enab = 1;
            
//          end
    end

endmodule
