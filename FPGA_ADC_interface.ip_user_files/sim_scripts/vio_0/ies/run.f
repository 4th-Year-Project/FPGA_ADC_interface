-makelib ies_lib/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../FPGA_ADC_interface.srcs/sources_1/ip/vio_0/sim/vio_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib
