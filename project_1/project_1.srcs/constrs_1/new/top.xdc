set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets gclk]
create_clock -period 10.000 [get_ports gclk]
set_property -dict {PACKAGE_PIN C19 IOSTANDARD LVCMOS33} [get_ports gclk]

set_property -dict {PACKAGE_PIN P4 IOSTANDARD LVCMOS33} [get_ports rst]
set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS33} [get_ports key1]
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports key2]
set_property -dict {PACKAGE_PIN K4 IOSTANDARD LVCMOS33} [get_ports key3]
set_property -dict {PACKAGE_PIN M3 IOSTANDARD LVCMOS33} [get_ports key4]

set_property -dict {PACKAGE_PIN Y4 IOSTANDARD LVCMOS33} [get_ports {led[0]}]
set_property -dict {PACKAGE_PIN V4 IOSTANDARD LVCMOS33} [get_ports {led[1]}]
set_property -dict {PACKAGE_PIN T3 IOSTANDARD LVCMOS33} [get_ports {led[2]}]
set_property -dict {PACKAGE_PIN T4 IOSTANDARD LVCMOS33} [get_ports {led[3]}]
set_property -dict {PACKAGE_PIN P5 IOSTANDARD LVCMOS33} [get_ports {led[4]}]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS33} [get_ports {led[5]}]
set_property -dict {PACKAGE_PIN H3 IOSTANDARD LVCMOS33} [get_ports {led[6]}]
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS33} [get_ports {led[7]}]


set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS33} [get_ports {seg_s[0]}]
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports {seg_s[1]}]
set_property -dict {PACKAGE_PIN A19 IOSTANDARD LVCMOS33} [get_ports {seg_s[2]}]
set_property -dict {PACKAGE_PIN B21 IOSTANDARD LVCMOS33} [get_ports {seg_s[3]}]
set_property -dict {PACKAGE_PIN A21 IOSTANDARD LVCMOS33} [get_ports {seg_ap[0]}]
set_property -dict {PACKAGE_PIN C18 IOSTANDARD LVCMOS33} [get_ports {seg_ap[1]}]
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports {seg_ap[2]}]
set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVCMOS33} [get_ports {seg_ap[3]}]
set_property -dict {PACKAGE_PIN C22 IOSTANDARD LVCMOS33} [get_ports {seg_ap[4]}]
set_property -dict {PACKAGE_PIN B20 IOSTANDARD LVCMOS33} [get_ports {seg_ap[5]}]
set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVCMOS33} [get_ports {seg_ap[6]}]
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports {seg_ap[7]}]


set_property -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS33} [get_ports ad_clk]
set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS33} [get_ports {ad_din[0]}]
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports {ad_din[1]}]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports {ad_din[2]}]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS33} [get_ports {ad_din[3]}]
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports {ad_din[4]}]
set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS33} [get_ports {ad_din[5]}]
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports {ad_din[6]}]
set_property -dict {PACKAGE_PIN D1 IOSTANDARD LVCMOS33} [get_ports {ad_din[7]}]
set_property -dict {PACKAGE_PIN D2 IOSTANDARD LVCMOS33} [get_ports {ad_din[8]}]
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33} [get_ports {ad_din[9]}]
set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVCMOS33} [get_ports {ad_din[10]}]
set_property -dict {PACKAGE_PIN B2 IOSTANDARD LVCMOS33} [get_ports {ad_din[11]}]

set_property -dict {PACKAGE_PIN W2 IOSTANDARD LVCMOS33} [get_ports da1_clk]
set_property -dict {PACKAGE_PIN Y1 IOSTANDARD LVCMOS33} [get_ports da1_wrt]
set_property -dict {PACKAGE_PIN Y2 IOSTANDARD LVCMOS33} [get_ports {da1_out[0]}]
set_property -dict {PACKAGE_PIN AA1 IOSTANDARD LVCMOS33} [get_ports {da1_out[1]}]
set_property -dict {PACKAGE_PIN AB1 IOSTANDARD LVCMOS33} [get_ports {da1_out[2]}]
set_property -dict {PACKAGE_PIN AB2 IOSTANDARD LVCMOS33} [get_ports {da1_out[3]}]
set_property -dict {PACKAGE_PIN AA3 IOSTANDARD LVCMOS33} [get_ports {da1_out[4]}]
set_property -dict {PACKAGE_PIN AB3 IOSTANDARD LVCMOS33} [get_ports {da1_out[5]}]
set_property -dict {PACKAGE_PIN AB5 IOSTANDARD LVCMOS33} [get_ports {da1_out[6]}]
set_property -dict {PACKAGE_PIN AA6 IOSTANDARD LVCMOS33} [get_ports {da1_out[7]}]
set_property -dict {PACKAGE_PIN AB6 IOSTANDARD LVCMOS33} [get_ports {da1_out[8]}]
set_property -dict {PACKAGE_PIN AB7 IOSTANDARD LVCMOS33} [get_ports {da1_out[9]}]
set_property -dict {PACKAGE_PIN AA8 IOSTANDARD LVCMOS33} [get_ports {da1_out[10]}]
set_property -dict {PACKAGE_PIN AB8 IOSTANDARD LVCMOS33} [get_ports {da1_out[11]}]
set_property -dict {PACKAGE_PIN AB10 IOSTANDARD LVCMOS33} [get_ports {da1_out[12]}]
set_property -dict {PACKAGE_PIN AB11 IOSTANDARD LVCMOS33} [get_ports {da1_out[13]}]

set_property -dict {PACKAGE_PIN W1 IOSTANDARD LVCMOS33} [get_ports da2_clk]
set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports da2_wrt]
set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS33} [get_ports {da2_out[0]}]
set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS33} [get_ports {da2_out[1]}]
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS33} [get_ports {da2_out[2]}]
set_property -dict {PACKAGE_PIN L1 IOSTANDARD LVCMOS33} [get_ports {da2_out[3]}]
set_property -dict {PACKAGE_PIN M1 IOSTANDARD LVCMOS33} [get_ports {da2_out[4]}]
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33} [get_ports {da2_out[5]}]
set_property -dict {PACKAGE_PIN N2 IOSTANDARD LVCMOS33} [get_ports {da2_out[6]}]
set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVCMOS33} [get_ports {da2_out[7]}]
set_property -dict {PACKAGE_PIN P2 IOSTANDARD LVCMOS33} [get_ports {da2_out[8]}]
set_property -dict {PACKAGE_PIN R1 IOSTANDARD LVCMOS33} [get_ports {da2_out[9]}]
set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVCMOS33} [get_ports {da2_out[10]}]
set_property -dict {PACKAGE_PIN T1 IOSTANDARD LVCMOS33} [get_ports {da2_out[11]}]
set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVCMOS33} [get_ports {da2_out[12]}]
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {da2_out[13]}]

########  Extended 40 IO Pins ########
#NET ext1          GND         ;
#NET ext2          VCC(+5V)
set_property -dict {PACKAGE_PIN D21 IOSTANDARD LVCMOS33} [get_ports {ext[3]}]
set_property -dict {PACKAGE_PIN D22 IOSTANDARD LVCMOS33} [get_ports {ext[4]}]
set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS33} [get_ports {ext[5]}]
set_property -dict {PACKAGE_PIN E22 IOSTANDARD LVCMOS33} [get_ports {ext[6]}]
set_property -dict {PACKAGE_PIN F21 IOSTANDARD LVCMOS33} [get_ports {ext[7]}]
set_property -dict {PACKAGE_PIN G22 IOSTANDARD LVCMOS33} [get_ports {ext[8]}]
set_property -dict {PACKAGE_PIN G21 IOSTANDARD LVCMOS33} [get_ports {ext[9]}]
set_property -dict {PACKAGE_PIN H22 IOSTANDARD LVCMOS33} [get_ports {ext[10]}]
set_property -dict {PACKAGE_PIN J22 IOSTANDARD LVCMOS33} [get_ports {ext[11]}]
set_property -dict {PACKAGE_PIN K21 IOSTANDARD LVCMOS33} [get_ports {ext[12]}]
set_property -dict {PACKAGE_PIN K22 IOSTANDARD LVCMOS33} [get_ports {ext[13]}]
set_property -dict {PACKAGE_PIN L21 IOSTANDARD LVCMOS33} [get_ports {ext[14]}]
set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS33} [get_ports {ext[15]}]
set_property -dict {PACKAGE_PIN M22 IOSTANDARD LVCMOS33} [get_ports {ext[16]}]
set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS33} [get_ports {ext[17]}]
set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS33} [get_ports {ext[18]}]
set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS33} [get_ports {ext[19]}]
set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS33} [get_ports {ext[20]}]
set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVCMOS33} [get_ports {ext[21]}]
set_property -dict {PACKAGE_PIN Y22 IOSTANDARD LVCMOS33} [get_ports {ext[22]}]
set_property -dict {PACKAGE_PIN Y21 IOSTANDARD LVCMOS33} [get_ports {ext[23]}]
set_property -dict {PACKAGE_PIN AB22 IOSTANDARD LVCMOS33} [get_ports {ext[24]}]
set_property -dict {PACKAGE_PIN AA21 IOSTANDARD LVCMOS33} [get_ports {ext[25]}]
set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS33} [get_ports {ext[26]}]
set_property -dict {PACKAGE_PIN AA20 IOSTANDARD LVCMOS33} [get_ports {ext[27]}]
set_property -dict {PACKAGE_PIN AB20 IOSTANDARD LVCMOS33} [get_ports {ext[28]}]
set_property -dict {PACKAGE_PIN AA19 IOSTANDARD LVCMOS33} [get_ports {ext[29]}]
set_property -dict {PACKAGE_PIN AA18 IOSTANDARD LVCMOS33} [get_ports {ext[30]}]
set_property -dict {PACKAGE_PIN AB18 IOSTANDARD LVCMOS33} [get_ports {ext[31]}]
set_property -dict {PACKAGE_PIN AB17 IOSTANDARD LVCMOS33} [get_ports {ext[32]}]
set_property -dict {PACKAGE_PIN AA16 IOSTANDARD LVCMOS33} [get_ports {ext[33]}]
set_property -dict {PACKAGE_PIN AB16 IOSTANDARD LVCMOS33} [get_ports {ext[34]}]
set_property -dict {PACKAGE_PIN AA15 IOSTANDARD LVCMOS33} [get_ports {ext[35]}]
set_property -dict {PACKAGE_PIN AB15 IOSTANDARD LVCMOS33} [get_ports {ext[36]}]
set_property -dict {PACKAGE_PIN AA14 IOSTANDARD LVCMOS33} [get_ports {ext[37]}]
set_property -dict {PACKAGE_PIN AB13 IOSTANDARD LVCMOS33} [get_ports {ext[38]}]
#NET ext39         3.3V        ;
#NET ext40         GND         ;

set_property DRIVE 16 [get_ports da1_clk]
set_property DRIVE 16 [get_ports da2_wrt]
set_property DRIVE 16 [get_ports da2_clk]
set_property DRIVE 16 [get_ports da1_wrt]
set_property DRIVE 16 [get_ports ad_clk]
set_property SLEW FAST [get_ports da1_clk]
set_property SLEW FAST [get_ports da2_wrt]
set_property SLEW FAST [get_ports da2_clk]
set_property SLEW FAST [get_ports da1_wrt]
set_property SLEW FAST [get_ports ad_clk]
set_property DRIVE 16 [get_ports {da1_out[13]}]
set_property DRIVE 16 [get_ports {da1_out[12]}]
set_property DRIVE 16 [get_ports {da1_out[11]}]
set_property DRIVE 16 [get_ports {da1_out[10]}]
set_property DRIVE 16 [get_ports {da1_out[9]}]
set_property DRIVE 16 [get_ports {da1_out[8]}]
set_property DRIVE 16 [get_ports {da1_out[7]}]
set_property DRIVE 16 [get_ports {da1_out[6]}]
set_property DRIVE 16 [get_ports {da1_out[5]}]
set_property DRIVE 16 [get_ports {da1_out[4]}]
set_property DRIVE 16 [get_ports {da1_out[3]}]
set_property DRIVE 16 [get_ports {da1_out[2]}]
set_property DRIVE 16 [get_ports {da1_out[1]}]
set_property DRIVE 16 [get_ports {da1_out[0]}]
set_property DRIVE 16 [get_ports {da2_out[13]}]
set_property DRIVE 16 [get_ports {da2_out[12]}]
set_property DRIVE 16 [get_ports {da2_out[11]}]
set_property DRIVE 16 [get_ports {da2_out[10]}]
set_property DRIVE 16 [get_ports {da2_out[9]}]
set_property DRIVE 16 [get_ports {da2_out[8]}]
set_property DRIVE 16 [get_ports {da2_out[7]}]
set_property DRIVE 16 [get_ports {da2_out[6]}]
set_property DRIVE 16 [get_ports {da2_out[5]}]
set_property DRIVE 16 [get_ports {da2_out[4]}]
set_property DRIVE 16 [get_ports {da2_out[3]}]
set_property DRIVE 16 [get_ports {da2_out[2]}]
set_property DRIVE 16 [get_ports {da2_out[1]}]
set_property DRIVE 16 [get_ports {da2_out[0]}]
set_property DRIVE 16 [get_ports {led[7]}]
set_property DRIVE 16 [get_ports {led[6]}]
set_property DRIVE 16 [get_ports {led[5]}]
set_property DRIVE 16 [get_ports {led[4]}]
set_property DRIVE 16 [get_ports {led[3]}]
set_property DRIVE 16 [get_ports {led[2]}]
set_property DRIVE 16 [get_ports {led[1]}]
set_property DRIVE 16 [get_ports {led[0]}]
set_property DRIVE 16 [get_ports {seg_ap[7]}]
set_property DRIVE 16 [get_ports {seg_ap[6]}]
set_property DRIVE 16 [get_ports {seg_ap[5]}]
set_property DRIVE 16 [get_ports {seg_ap[4]}]
set_property DRIVE 16 [get_ports {seg_ap[3]}]
set_property DRIVE 16 [get_ports {seg_ap[2]}]
set_property DRIVE 16 [get_ports {seg_ap[1]}]
set_property DRIVE 16 [get_ports {seg_ap[0]}]
set_property DRIVE 16 [get_ports {seg_s[3]}]
set_property DRIVE 16 [get_ports {seg_s[2]}]
set_property DRIVE 16 [get_ports {seg_s[1]}]
set_property DRIVE 16 [get_ports {seg_s[0]}]
set_property SLEW FAST [get_ports {da1_out[13]}]
set_property SLEW FAST [get_ports {da1_out[12]}]
set_property SLEW FAST [get_ports {da1_out[11]}]
set_property SLEW FAST [get_ports {da1_out[10]}]
set_property SLEW FAST [get_ports {da1_out[9]}]
set_property SLEW FAST [get_ports {da1_out[8]}]
set_property SLEW FAST [get_ports {da1_out[7]}]
set_property SLEW FAST [get_ports {da1_out[6]}]
set_property SLEW FAST [get_ports {da1_out[5]}]
set_property SLEW FAST [get_ports {da1_out[4]}]
set_property SLEW FAST [get_ports {da1_out[3]}]
set_property SLEW FAST [get_ports {da1_out[2]}]
set_property SLEW FAST [get_ports {da1_out[1]}]
set_property SLEW FAST [get_ports {da1_out[0]}]
set_property SLEW FAST [get_ports {da2_out[13]}]
set_property SLEW FAST [get_ports {da2_out[12]}]
set_property SLEW FAST [get_ports {da2_out[11]}]
set_property SLEW FAST [get_ports {da2_out[10]}]
set_property SLEW FAST [get_ports {da2_out[9]}]
set_property SLEW FAST [get_ports {da2_out[8]}]
set_property SLEW FAST [get_ports {da2_out[7]}]
set_property SLEW FAST [get_ports {da2_out[6]}]
set_property SLEW FAST [get_ports {da2_out[5]}]
set_property SLEW FAST [get_ports {da2_out[4]}]
set_property SLEW FAST [get_ports {da2_out[3]}]
set_property SLEW FAST [get_ports {da2_out[2]}]
set_property SLEW FAST [get_ports {da2_out[1]}]
set_property SLEW FAST [get_ports {da2_out[0]}]
set_property SLEW FAST [get_ports {led[7]}]
set_property SLEW FAST [get_ports {led[6]}]
set_property SLEW FAST [get_ports {led[5]}]
set_property SLEW FAST [get_ports {led[4]}]
set_property SLEW FAST [get_ports {led[3]}]
set_property SLEW FAST [get_ports {led[2]}]
set_property SLEW FAST [get_ports {led[1]}]
set_property SLEW FAST [get_ports {led[0]}]
set_property SLEW FAST [get_ports {seg_ap[7]}]
set_property SLEW FAST [get_ports {seg_ap[6]}]
set_property SLEW FAST [get_ports {seg_ap[5]}]
set_property SLEW FAST [get_ports {seg_ap[4]}]
set_property SLEW FAST [get_ports {seg_ap[3]}]
set_property SLEW FAST [get_ports {seg_ap[2]}]
set_property SLEW FAST [get_ports {seg_ap[1]}]
set_property SLEW FAST [get_ports {seg_ap[0]}]
set_property SLEW FAST [get_ports {seg_s[3]}]
set_property SLEW FAST [get_ports {seg_s[2]}]
set_property SLEW FAST [get_ports {seg_s[1]}]
set_property SLEW FAST [get_ports {seg_s[0]}]

set_property PULLTYPE PULLUP [get_ports {ext[38]}]
set_property PULLTYPE PULLUP [get_ports {ext[37]}]
set_property PULLTYPE PULLUP [get_ports {ext[36]}]
set_property PULLTYPE PULLUP [get_ports {ext[35]}]
set_property PULLTYPE PULLUP [get_ports {ext[34]}]
set_property PULLTYPE PULLUP [get_ports {ext[33]}]
set_property PULLTYPE PULLUP [get_ports {ext[32]}]
set_property PULLTYPE PULLUP [get_ports {ext[31]}]
set_property PULLTYPE PULLUP [get_ports {ext[30]}]
set_property PULLTYPE PULLUP [get_ports {ext[29]}]
set_property PULLTYPE PULLUP [get_ports {ext[28]}]
set_property PULLTYPE PULLUP [get_ports {ext[27]}]
set_property PULLTYPE PULLUP [get_ports {ext[26]}]
set_property PULLTYPE PULLUP [get_ports {ext[25]}]
set_property PULLTYPE PULLUP [get_ports {ext[24]}]
set_property PULLTYPE PULLUP [get_ports {ext[23]}]
set_property PULLTYPE PULLUP [get_ports {ext[22]}]
set_property PULLTYPE PULLUP [get_ports {ext[21]}]
set_property PULLTYPE PULLUP [get_ports {ext[20]}]
set_property PULLTYPE PULLUP [get_ports {ext[19]}]
set_property PULLTYPE PULLUP [get_ports {ext[18]}]
set_property PULLTYPE PULLUP [get_ports {ext[17]}]
set_property PULLTYPE PULLUP [get_ports {ext[16]}]
set_property PULLTYPE PULLUP [get_ports {ext[15]}]
set_property PULLTYPE PULLUP [get_ports {ext[14]}]
set_property PULLTYPE PULLUP [get_ports {ext[13]}]
set_property PULLTYPE PULLUP [get_ports {ext[12]}]
set_property PULLTYPE PULLUP [get_ports {ext[11]}]
set_property PULLTYPE PULLUP [get_ports {ext[10]}]
set_property PULLTYPE PULLUP [get_ports {ext[9]}]
set_property PULLTYPE PULLUP [get_ports {ext[8]}]
set_property PULLTYPE PULLUP [get_ports {ext[7]}]
set_property PULLTYPE PULLUP [get_ports {ext[6]}]
set_property PULLTYPE PULLUP [get_ports {ext[5]}]
set_property PULLTYPE PULLUP [get_ports {ext[4]}]
set_property PULLTYPE PULLUP [get_ports {ext[3]}]
