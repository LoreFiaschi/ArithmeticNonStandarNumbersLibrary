set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {ban_interface} -view {{ban_interface_dataflow_ana.wcfg}} -tclbatch {ban_interface.tcl} -protoinst {ban_interface.protoinst}
