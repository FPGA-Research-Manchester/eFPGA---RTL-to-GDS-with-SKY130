# ==================================================== #
# Constraints for UoM_eFPGA (15x15)
# ==================================================== #
# 05-04-2021
# ==================================================== #

#########################################
### Clock  definition and modelling
#########################################
## 25MHz Clock
create_clock [get_ports CLK]  -name user_clock -period 40

### Clock transiston time model for ideal mode (max=0.5, min=0.05) 
set_clock_transition -max 0.5 [get_clocks user_clock]
set_clock_transition -min 0.05 [get_clocks user_clock]

### Clock source drive/transition constraint for propagated mode (max=0.7, min=0.05)
set_input_transition -max 0.7 [get_ports CLK] 
set_input_transition -min 0.05 [get_ports CLK] 

#########################################
### System Synchronous Input Constraints
#########################################

# WC input setup constraint:
set_input_delay  6   -max -clock user_clock [remove_from_collection [all_inputs] CLK] -network_latency_included

# BC input hold constraint:
set_input_delay  2   -min -clock user_clock [remove_from_collection [all_inputs] CLK] -network_latency_included

# Drive resistance of all inputs except CLK
# Defined by the max tran time on the input of the IO cell.
set_drive -max 0.3 [remove_from_collection [all_inputs] CLK]
set_drive -min 0.01 [remove_from_collection [all_inputs] CLK]

######################################### 
### System Synchronous Output Constraints
#########################################
# WC clock-to-output delay:
set_output_delay  1.5 -max -clock user_clock [all_outputs] -network_latency_included

# BC clock-to-output delay:
set_output_delay -1.0 -min -clock user_clock [all_outputs] -network_latency_included

# Define additional load capacitance in addition to the output driver pin capacitance of ~4pF 
set_load -max 4.00 [all_outputs]
set_load -min 0.01 [all_outputs]

#########################################
# Incremental ideal clock model constraints
# For WC timing corners
#########################################

### clock network insertion delay model
set_clock_latency 2.0  [get_clocks user_clock]
## NOTE: this models the max clock latencies at the WC corner only

### Clock jitter (max=0.15, min=0.1) + Clock Skew (max=0.35, min=0.3)
set_clock_uncertainty -setup 0.5  [get_clocks user_clock]
set_clock_uncertainty -hold  0.4  [get_clocks user_clock]

#########################################
# set_disable_timing for timing loops 
#########################################

