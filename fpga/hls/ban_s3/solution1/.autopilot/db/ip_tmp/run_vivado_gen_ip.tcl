create_project prj -part xczu7ev-ffvc1156-2-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/hls/ban_s3/solution1/syn/verilog/ban_interface_fdiv_32ns_32ns_32_9_no_dsp_1_ip.tcl"
source "/home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/hls/ban_s3/solution1/syn/verilog/ban_interface_fcmp_32ns_32ns_1_2_no_dsp_1_ip.tcl"
source "/home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/hls/ban_s3/solution1/syn/verilog/ban_interface_fmul_32ns_32ns_32_3_max_dsp_1_ip.tcl"
source "/home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/hls/ban_s3/solution1/syn/verilog/ban_interface_fsqrt_32ns_32ns_32_8_no_dsp_1_ip.tcl"
source "/home/lorenzo/Documents/PhD/GitHub/ArithmeticNonStandarNumbersLibrary/fpga/hls/ban_s3/solution1/syn/verilog/ban_interface_fadd_32ns_32ns_32_4_full_dsp_1_ip.tcl"
