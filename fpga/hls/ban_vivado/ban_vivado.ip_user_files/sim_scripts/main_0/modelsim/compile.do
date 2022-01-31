vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../ipstatic/hdl/verilog/main_flow_control_loop_pipe_sequential_init.v" \
"../../../ipstatic/hdl/verilog/main_main_Pipeline_VITIS_LOOP_21_1.v" \
"../../../ipstatic/hdl/verilog/main_main_Pipeline_VITIS_LOOP_142_1.v" \
"../../../ipstatic/hdl/verilog/main_mux_32_32_1_1.v" \
"../../../ipstatic/hdl/verilog/main.v" \
"../../../../ban_vivado.gen/sources_1/ip/main_0/sim/main_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

