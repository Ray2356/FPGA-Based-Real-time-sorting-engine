module uart_top (
    input wire reset_n,
    input wire [7:0] tx_data,
    input wire tx_start,
    //input wire rx_data,
    output wire [7:0] rx_data_out,
    output wire rx_done,
    output wire txd,
    input wire rxd,
    input  clk_in,
    input  reset,
    output wire rxd_1
);
wire clk_5MHz;
//wire tx_start;
// [7:0] tx_data_in;
//wire [7:0] rx_data_out;
//wire rx_done;

clk CLKDIV(clk_in, clk_5MHz, reset);
//uart_tx tx (
//    .clk(clk),
//    .reset_n(reset_n),
//    .start(tx_start),
//    .data(tx_data),
//    .txd(txd)
//);

//uart_rx rx (
//    .clk(clk),
//    .reset_n(reset_n),
//    .rxd(txd),
//    .data(rx_data_out),
//    .done(rx_done)
//);

//assign rxd = rx_data;

uart_tx tx (
    .clk(clk_5MHz),
    .reset_n(reset_n),
    .start(tx_start),
    .data(tx_data),
    .txd(txd)
);

uart_rx rx (
    .clk(clk_5MHz),
    .reset_n(reset_n),
    .rxd(rxd),
    .data(rx_data_out),
    .done(rx_done)
);

mirror mr (
    .rxd(txd),
    .rxd_1(rxd_1)

);

//i2o io(
//    .clk(clk_5MHz),
//    .done(rx_done),
//    .data_in(rx_data_out),
//    .data_out(tx_data_in),
//    .start(tx_start)
//);
//uart_transmitter uart_transmitter(
//        .clk(clk_5MHz),
//        .reset(reset_n),
//        .transmit(tx_start),
//        .data(rx_data_out),
//        .TxD(txd),
//        .clear(tx_complete)
//    );
//assign rxd = rx_data;

endmodule