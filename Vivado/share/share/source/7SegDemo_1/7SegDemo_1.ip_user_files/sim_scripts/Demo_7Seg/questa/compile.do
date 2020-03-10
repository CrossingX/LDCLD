vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"./../../../../7SegDemo_1.srcs/sources_1/bd/Demo_7Seg/ipshared/xilinx.com/bcd2seg7_v1_0/BCD2SEG7.v" \
"./../../../../7SegDemo_1.srcs/sources_1/bd/Demo_7Seg/ip/Demo_7Seg_BCD2SEG7_0_0/sim/Demo_7Seg_BCD2SEG7_0_0.v" \
"./../../../../7SegDemo_1.srcs/sources_1/bd/Demo_7Seg/ipshared/xilinx.com/decimal_counter_v1_0/decimal_counter.v" \
"./../../../../7SegDemo_1.srcs/sources_1/bd/Demo_7Seg/ip/Demo_7Seg_decimal_counter_0_0/sim/Demo_7Seg_decimal_counter_0_0.v" \
"./../../../../7SegDemo_1.srcs/sources_1/bd/Demo_7Seg/ipshared/xilinx.com/clk_div_v1_0/clk_div.v" \
"./../../../../7SegDemo_1.srcs/sources_1/bd/Demo_7Seg/ip/Demo_7Seg_clk_div_0_0/sim/Demo_7Seg_clk_div_0_0.v" \
"./../../../../7SegDemo_1.srcs/sources_1/bd/Demo_7Seg/hdl/Demo_7Seg.v" \


vlog -work xil_defaultlib "glbl.v"

quit -f

