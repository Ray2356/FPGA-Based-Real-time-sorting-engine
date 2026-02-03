`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 03:18:08 PM
// Design Name: 
// Module Name: top_tb
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

module top_tb;

    // Inputs
    //reg [23:0] real_time_data;
    reg enab;
    reg reset;
    reg clk;
    reg [9:0] cnt;

    // Outputs
    wire [23:0] large_out;
    wire [23:0] data_out;
    integer i;

    // Instantiate the design under test
    top dut (
        .enab(enab),
        .reset(reset),
        .clk(clk),
        .cnt(cnt),
        .large_out(large_out),
        .data_out(data_out)
       // .real_time_data(real_time_data)
    );

    // Clock generation


    // Reset generation
    initial begin
        //real_time_data = 24'b1000;
        enab = 0;
        clk = 0;
        reset = 1;
        cnt = 0;
        #10 reset = 0;
    end
    always #5 clk = ~clk;
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
        always@(posedge clk)
        begin
        for(i=0;i<40;i=i+1) begin
          #10; // wait for 10 time units
//          if ( i % 2 == 0) begin
//          data_in = data_in + 10; // increment data_in by 1
//          end else begin
//          data_in = data_in - 5;
//          end
          //real_time_data = real_time_data + 1;
          enab = 1;
          cnt = cnt + 1;
          $display("cnt = %d", cnt); // display the current value of data_in
//          if (i == 20)begin
//            enab = 0;
            
//          end
//          if (i == 25)begin
//            enab = 1;
            
//          end
        end
    end

endmodule
