// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Dec 16 04:21:47 2023
// Host        : 3115A0203 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_sim_netlist.v
// Design      : ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28448)
`pragma protect data_block
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
FmDvyzg=
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
