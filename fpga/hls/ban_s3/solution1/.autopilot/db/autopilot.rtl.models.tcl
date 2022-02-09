set SynModuleInfo {
  {SRCNAME operator>= MODELNAME operator_ge RTLNAME ban_interface_operator_ge
    SUBMODULES {
      {MODELNAME ban_interface_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME ban_interface_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME operator/ MODELNAME operator_div RTLNAME ban_interface_operator_div}
  {SRCNAME operator+.2 MODELNAME operator_2 RTLNAME ban_interface_operator_2
    SUBMODULES {
      {MODELNAME ban_interface_mux_32_32_1_1 RTLNAME ban_interface_mux_32_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sqrt MODELNAME sqrt RTLNAME ban_interface_sqrt
    SUBMODULES {
      {MODELNAME ban_interface_fsqrt_32ns_32ns_32_8_no_dsp_1 RTLNAME ban_interface_fsqrt_32ns_32ns_32_8_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 7 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME operator/= MODELNAME operator_div_assign RTLNAME ban_interface_operator_div_assign}
  {SRCNAME operator* MODELNAME operator_mul RTLNAME ban_interface_operator_mul}
  {SRCNAME operator+.3 MODELNAME operator_3 RTLNAME ban_interface_operator_3}
  {SRCNAME _sum MODELNAME p_sum RTLNAME ban_interface_p_sum}
  {SRCNAME operator+.1 MODELNAME operator_1 RTLNAME ban_interface_operator_1}
  {SRCNAME ban_interface MODELNAME ban_interface RTLNAME ban_interface IS_TOP 1
    SUBMODULES {
      {MODELNAME ban_interface_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME ban_interface_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ban_interface_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME ban_interface_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ban_interface_fdiv_32ns_32ns_32_9_no_dsp_1 RTLNAME ban_interface_fdiv_32ns_32ns_32_9_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 8 ALLOW_PRAGMA 1}
    }
  }
}
