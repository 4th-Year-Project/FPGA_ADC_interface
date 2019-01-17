set_property SRC_FILE_INFO {cfile:C:/4th-year-project/FPGA_ADC_interface/FPGA_ADC_interface.srcs/constrs_1/imports/digilent-xdc/Cmod-A7-Master.xdc rfile:../../../FPGA_ADC_interface.srcs/constrs_1/imports/digilent-xdc/Cmod-A7-Master.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets RD_OBUF]
set_property src_info {type:XDC file:1 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN L17 IOSTANDARD LVCMOS33} [get_ports SYSCLK]
set_property src_info {type:XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS33} [get_ports RESET]
set_property src_info {type:XDC file:1 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports ENABLE]
set_property src_info {type:XDC file:1 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M3 IOSTANDARD LVCMOS33} [get_ports {DB[7]}]
set_property src_info {type:XDC file:1 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS33} [get_ports {DB[6]}]
set_property src_info {type:XDC file:1 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVCMOS33} [get_ports {DB[5]}]
set_property src_info {type:XDC file:1 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS33} [get_ports {DB[4]}]
set_property src_info {type:XDC file:1 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN C15 IOSTANDARD LVCMOS33} [get_ports {DB[3]}]
set_property src_info {type:XDC file:1 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H1 IOSTANDARD LVCMOS33} [get_ports {DB[2]}]
set_property src_info {type:XDC file:1 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A15 IOSTANDARD LVCMOS33} [get_ports {DB[1]}]
set_property src_info {type:XDC file:1 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B15 IOSTANDARD LVCMOS33} [get_ports {DB[0]}]
set_property src_info {type:XDC file:1 line:81 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {A[2]}]
set_property src_info {type:XDC file:1 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W6 IOSTANDARD LVCMOS33} [get_ports {A[1]}]
set_property src_info {type:XDC file:1 line:83 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U3 IOSTANDARD LVCMOS33} [get_ports {A[0]}]
set_property src_info {type:XDC file:1 line:84 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports CONVST]
set_property src_info {type:XDC file:1 line:85 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W7 IOSTANDARD LVCMOS33} [get_ports CS]
set_property src_info {type:XDC file:1 line:86 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U8 IOSTANDARD LVCMOS33} [get_ports RD]
set_property src_info {type:XDC file:1 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS33} [get_ports EOC]
set_property src_info {type:XDC file:1 line:136 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name CLK_4MHZ -source [get_pins clkgen1/inst/mmcm_adv_inst/CLKOUT0] -divide_by 2 -add -master_clock clk_out1_clk_wiz_0 [get_pins CLK_4MHZ_reg/Q]
set_property src_info {type:XDC file:1 line:137 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name CLK_4MHZ_1 -source [get_pins clkgen1/inst/mmcm_adv_inst/CLKOUT0] -divide_by 2 -add -master_clock clk_out1_clk_wiz_0_1 [get_pins CLK_4MHZ_reg/Q]
set_property src_info {type:XDC file:1 line:139 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC SLICE_X62Y11 [get_cells CLK_4MHZ_reg]
set_property src_info {type:XDC file:1 line:140 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC SLICE_X62Y11 [get_cells CLK_4MHZ_i_1]
set_property src_info {type:XDC file:1 line:142 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC SLICE_X65Y11 [get_cells CLK_2MHZ_reg]
set_property src_info {type:XDC file:1 line:143 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC SLICE_X65Y10 [get_cells CONVST_reg]
