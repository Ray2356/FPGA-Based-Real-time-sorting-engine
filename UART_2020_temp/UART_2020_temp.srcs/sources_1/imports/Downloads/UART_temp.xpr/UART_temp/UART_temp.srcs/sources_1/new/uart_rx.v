module uart_rx (
    input wire clk,
    input wire reset_n,
    input wire rxd,
    output wire [7:0] data,
    output wire done
    
    );

parameter FREQ = 50_000000;
parameter BPS = 9600;
localparam COUNTER_MAX = FREQ / BPS - 1;
localparam SAMPLING_COUNT = 3 * (COUNTER_MAX + 1) / 2;
reg temp = 0;//control done
reg [31:0] counter = 0;
reg [9:0] shift_reg = 10'b0;
reg [2:0] sampling_counter = 0;
reg busy = 0;
reg		[3:0]		rx_cnt;			//对接收数据计数	
//assign data = shift_reg[7:0];

assign data = temp?{shift_reg[0],shift_reg[1],shift_reg[2],shift_reg[3],shift_reg[4],shift_reg[5],shift_reg[6],shift_reg[7]}:data;
//assign done = (busy && shift_reg[0] && counter == COUNTER_MAX);
assign done = temp;
always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        counter <= COUNTER_MAX;
        shift_reg <= 10'b0;
        sampling_counter <= 0;
        busy <= 0;
    end else begin
        if (!busy) begin
            if (!rxd) begin
                busy <= 1;
                counter <= COUNTER_MAX/2;
                sampling_counter <= 0;
                rx_cnt <= 4'd0;
                temp <= 0;
            end
        end else begin
            if (counter == COUNTER_MAX*2) begin
                counter <= COUNTER_MAX;
                if (sampling_counter < 0) begin
                    sampling_counter <= sampling_counter + 1;
                end 
                else
                begin
                    if((rx_cnt	== 4'd8))
                    begin
                    busy <= 0;
                    temp <= 1;
                    end
                    else
                    begin
                    rx_cnt = rx_cnt + 1;
                    shift_reg <= {shift_reg[8:0], rxd};
                    sampling_counter <= 0;
                    end
                end
            end else begin
                counter <= counter + 1;
            end
        end
    end
end

endmodule