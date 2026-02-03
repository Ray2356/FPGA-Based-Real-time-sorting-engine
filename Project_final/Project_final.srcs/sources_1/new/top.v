`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 02:55:58 PM
// Design Name: 
// Module Name: top
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


module top(
    input  reset,
    input  clk,
    //input  enab,
    //input wire [9:0] cnt,

    input wire [7:0] data_in,
     input wire rx_done,
    input wire busy,
    //input num,
    //output wire [0:383] tx
    output wire [7:0] tx,
    output wire start,
    output wire [23:0] data_comb1
);
    wire [0:15] able;
    wire [23:0] data_out0,data_out1, data_out2, data_out3, data_out4, data_out5, data_out6, data_out7, data_out8, data_out9, data_out10, data_out11, data_out12, data_out13, data_out14, data_out15;
    wire [23:0] large_out1, large_out2, large_out3, large_out4, large_out5, large_out6, large_out7, large_out8, large_out9, large_out10, large_out11, large_out12, large_out13, large_out14, large_out15;
    wire [23:0] POP[0:15];
    wire wea; 
    //wire [23:0] real_time_data;
    wire [23:0] douta;
    wire done;
    wire ena;
    wire send;
    wire [23:0] data_comb;
    
    
    
    
    Data_comb db(rx_done,reset,data_in,data_comb,done);
    modulator md(done,clk,ena);
    b2c B(data_comb,ena,clk,douta,send);
    
    //BRAM BRAMIN(clk,1,0,cnt,real_time_data,douta);
    
    //comparator comp1(enab,reset, clk, real_time_data, large_out1, data_out1);
    comparator comp1(reset, clk, douta, large_out1, data_out1);
    comparator comp2(reset, clk, data_out1, large_out2, data_out2);
    comparator comp3(reset, clk, data_out2, large_out3, data_out3);
    comparator comp4(reset, clk, data_out3, large_out4, data_out4);
    comparator comp5(reset, clk, data_out4, large_out5, data_out5);
    comparator comp6(reset, clk, data_out5, large_out6, data_out6);
    comparator comp7(reset, clk, data_out6, large_out7, data_out7);
    comparator comp8(reset, clk, data_out7, large_out8, data_out8);
    comparator comp9(reset, clk, data_out8, large_out9, data_out9);
    comparator comp10(reset, clk, data_out9, large_out10, data_out10);
    comparator comp11(reset, clk, data_out10, large_out11, data_out11);
    comparator comp12(reset, clk, data_out11, large_out12, data_out12);
    comparator comp13(reset, clk, data_out12, large_out13, data_out13);
    comparator comp14(reset, clk, data_out13, large_out14, data_out14);
    comparator comp15(reset, clk, data_out14, large_out15, data_out15);
    comparator comp16(reset, clk, data_out15, large_out, data_out);
    stack stack1(reset,clk,large_out1,POP[0],15,able[0]);
    stack stack2(reset,clk,large_out2,POP[1],14,able[1]);
    stack stack3(reset,clk,large_out3,POP[2],13,able[2]);
    stack stack4(reset,clk,large_out4,POP[3],12,able[3]);
    stack stack5(reset,clk,large_out5,POP[4],11,able[4]);
    stack stack6(reset,clk,large_out6,POP[5],10,able[5]);
    stack stack7(reset,clk,large_out7,POP[6],9,able[6]);
    stack stack8(reset,clk,large_out8,POP[7],8,able[7]);
    stack stack9(reset,clk,large_out9,POP[8],7,able[8]);
    stack stack10(reset,clk,large_out10,POP[9],6,able[9]);
    stack stack11(reset,clk,large_out11,POP[10],5,able[10]);
    stack stack12(reset,clk,large_out12,POP[11],4,able[11]);
    stack stack13(reset,clk,large_out13,POP[12],3,able[12]);
    stack stack14(reset,clk,large_out14,POP[13],2,able[13]);
    stack stack15(reset,clk,large_out15,POP[14],1,able[14]);
    stack stack16(reset,clk,large_out,POP[15],0,able[15]);
    
    toserial ts(busy,send,clk,POP[0],POP[1],POP[2],POP[3],POP[4],POP[5],POP[6],POP[7],POP[8],POP[9],POP[10],POP[11],POP[12],POP[13],POP[14],POP[15],able,tx,start);
    assign data_comb1 = data_comb [15:8];
endmodule

