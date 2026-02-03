// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Dec 16 04:21:48 2023
// Host        : 3115A0203 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim d:/Project_final/Project_final.gen/sources_1/ip/ram/ram_sim_netlist.v
// Design      : ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [23:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [23:0]dina;
  wire [23:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [23:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.81135 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ram.mem" *) 
  (* C_INIT_FILE_NAME = "ram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "24" *) 
  (* C_READ_WIDTH_B = "24" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ram_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[23:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[23:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28304)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
