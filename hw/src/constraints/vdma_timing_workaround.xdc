#https://www.xilinx.com/support/answers/71984.html
#2017.3-2018.3
set_false_path -from [get_cells -hierarchical  -filter "NAME =~*axi_vdma_0*MM2S*LB_BUILT_IN*/*rstbt*/*rst_reg[*]"]
set_false_path -from [get_cells -hierarchical  -filter "NAME =~*axi_vdma_0*MM2S*LB_BUILT_IN*/*rstbt*/*rst_reg_reg"]
set_false_path -to   [get_pins  -hierarchical  -filter "NAME =~*axi_vdma_0*MM2S*LB_BUILT_IN*/*rstbt*/*PRE"]
set_false_path -to   [get_pins  -hierarchical  -filter "NAME =~*axi_vdma_0*S2MM*LB_BUILT_IN*/*rstbt*/*PRE"]
set_false_path -from [get_cells -hierarchical  -filter "NAME =~*axi_vdma_0*S2MM*LB_BUILT_IN*/*rstbt*/*rst_reg_reg && IS_SEQUENTIAL"]
set_false_path -from [get_cells -hierarchical  -filter "NAME =~*axi_vdma_0*S2MM*LB_BUILT_IN*/*rstbt*/*rst_reg[*]"]