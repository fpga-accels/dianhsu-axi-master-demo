vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/demo1_db/ip/demo1_db_processing_system7_0_0/sim/demo1_db_processing_system7_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/demo1_db/ip/demo1_db_rst_ps7_0_100M_0/sim/demo1_db_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/ec67/hdl" "+incdir+../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/206f/hdl/verilog/example_buff.v" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/206f/hdl/verilog/example_control_s_axi.v" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/206f/hdl/verilog/example_gmem_m_axi.v" \
"../../../../demo1.gen/sources_1/bd/demo1_db/ipshared/206f/hdl/verilog/example.v" \
"../../../bd/demo1_db/ip/demo1_db_example_0_0/sim/demo1_db_example_0_0.v" \
"../../../bd/demo1_db/ip/demo1_db_auto_pc_0/sim/demo1_db_auto_pc_0.v" \
"../../../bd/demo1_db/ip/demo1_db_auto_us_0/sim/demo1_db_auto_us_0.v" \
"../../../bd/demo1_db/ip/demo1_db_auto_pc_1/sim/demo1_db_auto_pc_1.v" \
"../../../bd/demo1_db/sim/demo1_db.v" \

vlog -work xil_defaultlib \
"glbl.v"

