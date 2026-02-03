`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2023 05:00:18 PM
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb(

    );
reg reset;
reg clk;
reg [31:0] ID;
reg[19:0] data_in;
wire[19:0] data_out;

comparator uut(
    .clk(clk),
    .reset(reset),
    .data_in(data_in),
    .data_out(data_out)
);

initial begin  
    clk = 0;
    reset = 1;
    data_in = 20'h00000;
      #10 reset = 0;
//      #10 data_in = 20'h00F678; //max value
        #10 data_in = 20'h00001;
        #10 data_in = 20'h00002;
        #10 data_in = 20'h00003;
        #10 data_in = 20'h00004;
        #10 data_in = 20'h00005;
        #10 data_in = 20'h00006;
        #10 data_in = 20'h00007;
        #10 data_in = 20'h00008;
        #10 data_in = 20'h00009;
        #10 data_in = 20'h0000A;
        #10 data_in = 20'h0000B;
        #10 data_in = 20'h0000C;
        #10 data_in = 20'h0000D;
        #10 data_in = 20'h0000E;
        #10 data_in = 20'h0000F;
      #10 data_in = 20'h009ABC;
      #10 data_in = 20'h00A119;
      #10 data_in = 20'h00B194;
      #10 data_in = 20'h00C345;
      #10 data_in = 20'h00D456;
      #10 data_in = 20'h00E567;
      #10 data_in = 20'h000119; //min
      #10 data_in = 20'h000109; //min
      #10 $finish;
end

always #5 clk = ~clk;


endmodule
