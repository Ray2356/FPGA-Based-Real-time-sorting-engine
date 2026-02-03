`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2023 04:19:22 PM
// Design Name: 
// Module Name: comparator
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


module comparator(
    input  ena,
    input  reset,
    input  clk,
    //input reg [31:0] ID,
    input [23:0] data_in,
    output wire[23:0] large_out,
    output wire[23:0] data_out
    
    );
reg [23:0] A,B;
reg [23:0] temp1,temp2;
reg RSA,RSB;
    
always @(posedge clk or posedge reset) begin
        if (reset) begin
        A <= 24'h0;
        B <= 24'h0;
        RSA <= 1;
        RSB <= 0;
        temp1 = 24'h0;
        temp2 = 24'h0;
        end
        else begin
            if (RSA == 1) begin
                A <= data_in;          //RSA = 1, Read Shift A
                 if ( A < B) begin
                    RSA <= 1;
                    RSB <= 0;
                    temp1 <= A;
                    temp2 <= B;
                    end
                else begin
                    RSB <= 1;
                    RSA <= 0;
                    temp1 <= B;
                    temp2 <= A;
                    end
             end
             else if(RSB == 1) begin 
                B <= data_in;              //RSB = 1, Read Shift B
                 if ( B < A) begin
                    RSB <= 1;
                    RSA <= 0;
                    temp1 <= B; 
                    temp2 <= A;
                    end
                else begin
                    RSB <= 0;
                    RSA <= 1;
                    temp1 <= A; 
                    temp2 <= B;
                    end
             end
        end 
     end 


assign data_out = temp1;
assign large_out = temp2;     
      
    
    
endmodule
