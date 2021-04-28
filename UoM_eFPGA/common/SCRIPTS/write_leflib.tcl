##########
# drc check
##########
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_implant -quiet
get_verify_drc_mode -check_implant_across_rows -quiet
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_implant true -check_implant_across_rows false -check_ndr_spacing false -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -report REPORTS/UoM_eFPGA.drc.rpt -limit 1000
verify_drc

##########
# antenna check
##########
set_verify_drc_mode -area {0 0 0 0}
verifyProcessAntenna -reportfile REPORTS/UoM_eFPGA.antenna.rpt -error 1000

##########
# write LEF file
##########
#write_lef_abstract OUTPUT/UoM_eFPGA.lef -specifyTopLayer met5 -stripePin -PgpinLayers {met1 met2}
write_lef_abstract OUTPUT/UoM_eFPGA.lef -specifyTopLayer met5 -stripePin -PgpinLayers {met4 met5} -5.7

##########
# write Lib file
##########
#check_timing
write_model_timing -type arc REPORTS/UoM_eFPGA_timing.rpt
write_model_timing -type slack REPORTS/UoM_eFPGA_timing_slack.rpt

source ./common/MMMC/UoM_eFPGA_mmmc_TClib.view 
do_extract_model -check -verilog_shell_file UoM_eFPGA_verilog_timing -verilog_shell_module UoM_eFPGA_verilog_timing -view func_view_tc OUTPUT/UoM_eFPGA.lib
do_extract_model -check -view func_view_tc -blackbox OUTPUT/UoM_eFPGA_blackbox.lib
