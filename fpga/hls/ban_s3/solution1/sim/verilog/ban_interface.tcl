
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_ban_interface_top/AESL_inst_ban_interface/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_ban_interface_top/AESL_inst_ban_interface/ap_return -into $return_group -radix hex
add_wave /apatb_ban_interface_top/AESL_inst_ban_interface/ap_local_deadlock -into $return_group -radix hex
add_wave /apatb_ban_interface_top/AESL_inst_ban_interface/ap_local_block -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $cinputgroup]
add_wave /apatb_ban_interface_top/AESL_inst_ban_interface/op -into $return_group -radix hex
add_wave /apatb_ban_interface_top/AESL_inst_ban_interface/f_op -into $return_group -radix hex
add_wave /apatb_ban_interface_top/AESL_inst_ban_interface/b_op2 -into $return_group -radix hex
add_wave /apatb_ban_interface_top/AESL_inst_ban_interface/b_op1 -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_ban_interface_top/AESL_inst_ban_interface/ap_start -into $blocksiggroup
add_wave /apatb_ban_interface_top/AESL_inst_ban_interface/ap_done -into $blocksiggroup
add_wave /apatb_ban_interface_top/AESL_inst_ban_interface/ap_idle -into $blocksiggroup
add_wave /apatb_ban_interface_top/AESL_inst_ban_interface/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_ban_interface_top/AESL_inst_ban_interface/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_ban_interface_top/AESL_inst_ban_interface/ap_clk -into $clockgroup
save_wave_config ban_interface.wcfg
run all

