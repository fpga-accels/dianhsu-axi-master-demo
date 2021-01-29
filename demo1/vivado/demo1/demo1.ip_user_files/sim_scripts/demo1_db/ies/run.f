-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_8 -sv \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_10 -sv \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/demo1_db/ip/demo1_db_processing_system7_0_0/sim/demo1_db_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/demo1_db/ip/demo1_db_rst_ps7_0_100M_0/sim/demo1_db_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/206f/hdl/verilog/example_buff.v" \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/206f/hdl/verilog/example_control_s_axi.v" \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/206f/hdl/verilog/example_gmem_m_axi.v" \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/206f/hdl/verilog/example.v" \
  "../../../bd/demo1_db/ip/demo1_db_example_0_0/sim/demo1_db_example_0_0.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_21 \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_22 \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_22 \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/demo1_db/ip/demo1_db_auto_pc_0/sim/demo1_db_auto_pc_0.v" \
-endlib
-makelib ies_lib/axi_clock_converter_v2_1_21 \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/1304/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/axi_dwidth_converter_v2_1_22 \
  "../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/2394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/demo1_db/ip/demo1_db_auto_us_0/sim/demo1_db_auto_us_0.v" \
  "../../../bd/demo1_db/ip/demo1_db_auto_pc_1/sim/demo1_db_auto_pc_1.v" \
  "../../../bd/demo1_db/sim/demo1_db.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

