vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../ipstatic/hdl/verilog/main_flow_control_loop_pipe_sequential_init.v" \
"../../../ipstatic/hdl/verilog/main_main_Pipeline_VITIS_LOOP_21_1.v" \
"../../../ipstatic/hdl/verilog/main_main_Pipeline_VITIS_LOOP_142_1.v" \
"../../../ipstatic/hdl/verilog/main_mux_32_32_1_1.v" \
"../../../ipstatic/hdl/verilog/main.v" \
"../../../../ban_vivado.gen/sources_1/ip/main_0/sim/main_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

