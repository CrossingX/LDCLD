vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"./../../../../DemoPJ1.srcs/sources_1/bd/DemoPJ1/ipshared/xilinx.com/shift_register_8bit_v1_0/shift_register_8bit.v" \
"./../../../../DemoPJ1.srcs/sources_1/bd/DemoPJ1/ip/DemoPJ1_shift_register_8bit_0_0/sim/DemoPJ1_shift_register_8bit_0_0.v" \
"./../../../../DemoPJ1.srcs/sources_1/bd/DemoPJ1/ip/DemoPJ1_shift_register_8bit_1_0/sim/DemoPJ1_shift_register_8bit_1_0.v" \
"./../../../../DemoPJ1.srcs/sources_1/bd/DemoPJ1/ipshared/xilinx.com/clk_div_v1_0/clk_div.v" \
"./../../../../DemoPJ1.srcs/sources_1/bd/DemoPJ1/ip/DemoPJ1_clk_div_0_0/sim/DemoPJ1_clk_div_0_0.v" \
"./../../../../DemoPJ1.srcs/sources_1/bd/DemoPJ1/hdl/DemoPJ1.v" \
"./../../../../DemoPJ1.srcs/sources_1/bd/DemoPJ1/ipshared/xilinx.com/xup_inv_v1_0/xup_inv.srcs/sources_1/new/xup_inv.v" \
"./../../../../DemoPJ1.srcs/sources_1/bd/DemoPJ1/ip/DemoPJ1_xup_inv_0_0/sim/DemoPJ1_xup_inv_0_0.v" \


vlog -work xil_defaultlib "glbl.v"

quit -f

