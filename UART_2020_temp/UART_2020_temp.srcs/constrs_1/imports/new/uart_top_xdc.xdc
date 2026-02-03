set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { rx_data_out[0] }]; # IO_L16N_T2_34 Sch=ld0
set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports { rx_data_out[1] }]; # IO_L6N_T0_34 Sch=ld1
set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports { rx_data_out[2] }]; # IO_L13N_T2_MRCC_34 Sch=ld2
set_property -dict { PACKAGE_PIN V19   IOSTANDARD LVCMOS33 } [get_ports { rx_data_out[3] }]; # IO_L12N_T1_MRCC_34 Sch=ld3
set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { rx_data_out[4] }]; # IO_L7N_T1_34 Sch=ld4
set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports { rx_data_out[5] }]; # IO_L17N_T2_34 Sch=ld5
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { rx_data_out[6] }]; # IO_L5N_T0_DQS_AD1N_34 Sch=ld6
set_property -dict { PACKAGE_PIN V14    IOSTANDARD LVCMOS33 } [get_ports { rx_data_out[7] }];

set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { tx_data[0] }]; # IO_L22P_T3_34 Sch=sw0
set_property -dict { PACKAGE_PIN V16  IOSTANDARD LVCMOS33 } [get_ports { tx_data[1] }]; # IO_L22N_T3_34 Sch=tx_data1
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { tx_data[2] }]; # IO_L19P_T3_34 Sch=tx_data2
set_property -dict { PACKAGE_PIN W17   IOSTANDARD LVCMOS33 } [get_ports { tx_data[3] }]; # IO_L19N_T3_34 Sch=tx_data3
set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports { tx_data[4] }]; # IO_L18N_T2_34 Sch=tx_data4
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { tx_data[5] }]; # IO_L16P_T2_34 Sch=tx_data5
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { tx_data[6] }]; # IO_L18P_T2_34 Sch=tx_data6
set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { tx_data[7] }]; # IO_L17P_T2_34 Sch=tx_data7

#set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports {rxd}];


set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports {rxd}];
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports {txd}];

set_property -dict { PACKAGE_PIN N3   IOSTANDARD LVCMOS33 } [get_ports {rxd_1}];
#input
set_property -dict { PACKAGE_PIN R2   IOSTANDARD LVCMOS33 } [get_ports { reset_n }]; # IO_L17P_T2_34 Sch=tx_data7
set_property -dict { PACKAGE_PIN T1   IOSTANDARD LVCMOS33 } [get_ports { rx_data }]; # IO_L17P_T2_34 Sch=tx_data7

set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { tx_start }];

#output
set_property -dict { PACKAGE_PIN L1   IOSTANDARD LVCMOS33 } [get_ports { rx_done }]; # IO_L17P_T2_34 Sch=tx_data7
#set_property -dict { PACKAGE_PIN P1   IOSTANDARD LVCMOS33 } [get_ports { txd }]; # IO_L17P_T2_34 Sch=tx_data7
set_property PACKAGE_PIN U18 [get_ports reset]
?set_property DIRECTION IN [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property -dict { PACKAGE_PIN W5 IOSTANDARD LVCMOS33 } [get_ports clk_in]; # Clock signal
#create_clock -period 10.0 [get_ports clk_in] # Set the clock period to 20 ns (50 MHz)
create_clock -period 10.000  -waveform {0.000 5.000} [get_ports clk_in]