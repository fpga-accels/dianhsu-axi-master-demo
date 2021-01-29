vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_8
vlib riviera/processing_system7_vip_v1_0_10
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_21
vlib riviera/axi_register_slice_v2_1_22
vlib riviera/axi_protocol_converter_v2_1_22
vlib riviera/axi_clock_converter_v2_1_21
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/axi_dwidth_converter_v2_1_22

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 riviera/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 riviera/processing_system7_vip_v1_0_10
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_21 riviera/axi_data_fifo_v2_1_21
vmap axi_register_slice_v2_1_22 riviera/axi_register_slice_v2_1_22
vmap axi_protocol_converter_v2_1_22 riviera/axi_protocol_converter_v2_1_22
vmap axi_clock_converter_v2_1_21 riviera/axi_clock_converter_v2_1_21
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_22 riviera/axi_dwidth_converter_v2_1_22

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv2k12 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/demo1_db/ip/demo1_db_processing_system7_0_0/sim/demo1_db_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/demo1_db/ip/demo1_db_rst_ps7_0_100M_0/sim/demo1_db_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/206f/hdl/verilog/example_buff.v" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/206f/hdl/verilog/example_control_s_axi.v" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/206f/hdl/verilog/example_gmem_m_axi.v" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/206f/hdl/verilog/example.v" \
"../../../bd/demo1_db/ip/demo1_db_example_0_0/sim/demo1_db_example_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -v2k5 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -v2k5 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_22  -v2k5 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/demo1_db/ip/demo1_db_auto_pc_0/sim/demo1_db_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_21  -v2k5 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/1304/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_22  -v2k5 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/2394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/demo1_db/ip/demo1_db_auto_us_0/sim/demo1_db_auto_us_0.v" \
"../../../bd/demo1_db/ip/demo1_db_auto_pc_1/sim/demo1_db_auto_pc_1.v" \
"../../../bd/demo1_db/sim/demo1_db.v" \

vlog -work xil_defaultlib \
"glbl.v"

