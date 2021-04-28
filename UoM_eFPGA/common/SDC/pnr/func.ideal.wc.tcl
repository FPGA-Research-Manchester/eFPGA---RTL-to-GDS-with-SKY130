# ==================================================== #
# Constraints for eFPGA_wrapper (19x17)
# ==================================================== #
# 05-04-2021
# ==================================================== #

#########################################
### Clock  definition and modelling
#########################################
## 25MHz Clock
create_clock [get_ports CLK]  -name user_clock -period 40

### Clock transiston time model for ideal mode (max=0.4, min=0.05) 
set_clock_transition -max 0.5 [get_clocks user_clock]
set_clock_transition -min 0.05 [get_clocks user_clock]

### Clock source drive/transition constraint for propagated mode (max=0.7, min=0.05)
set_input_transition -max 0.7 [get_ports CLK] 
set_input_transition -min 0.05 [get_ports CLK] 
# or 
#set_drive -max 0.18 [get_ports CLK] 
#set_drive -min 0.01 [get_ports CLK] 

#########################################
### System Synchronous Input Constraints
#########################################
# Input Pad max/min delay ~= 1.5ns/0.5ns

# WC input setup constraint:               - 0.5ns (Clk delay+pad) + 1.5ns (Signal delay+pad) + 1ns Margin (setup + jitter + other) = 2ns
# Largest possible external input delay:     8.0ns (clock period) - 2ns (minimum input setup constraint) = 6ns
set_input_delay  6   -max -clock user_clock [remove_from_collection [all_inputs] CLK] -network_latency_included

# BC input hold constraint:                  1.5ns (Clk delay+pad) - 0.5ns (Signal delay+pad) + 1ns Margin (setup + jitter + other) = 2ns
# Smallest possible external input delay:    2.0ns
set_input_delay  2   -min -clock user_clock [remove_from_collection [all_inputs] CLK] -network_latency_included

# Drive resistance of all inputs except CLK
# Defined by the max tran time on the input of the IO cell.
set_drive -max 0.3 [remove_from_collection [all_inputs] CLK]
set_drive -min 0.01 [remove_from_collection [all_inputs] CLK]
## or by transition time:
#set_input_transition

######################################### 
### System Synchronous Output Constraints
#########################################
# Input  Pad max/min delay ~= 1.5ns/0.5ns
# Output Pad max/min delay ~= 3.0ns/1.0ns

# WC clock-to-output delay:                  0.5ns+1.5ns (Clk delay+pad) + 0.5+3.0ns (Signal delay+pad) + 1ns Margin (setup + jitter + other) = 6.5ns
# Largest possible external output delay:    8.0ns (clock period) - 6.5ns (minimum input setup constraint) = 1.5ns
set_output_delay  1.5 -max -clock user_clock [all_outputs] -network_latency_included

# BC clock-to-output delay:                  0.25ns+0.5ns (Clk delay+pad) + 0.25ns+1.0ns (Signal delay+pad) - 1ns Margin (setup + jitter + other) = 1ns
# Smallest possible external output delay:   - (1ns) = -1ns
set_output_delay -1.0 -min -clock user_clock [all_outputs] -network_latency_included

# Define additional load capacitance in addition to the output driver pin capacitance of ~3.5pF 
set_load -max 4.00 [all_outputs]
set_load -min 0.01 [all_outputs]

#########################################
### Scan Enable network not important in functional mode
#########################################
# Scan enable is not important in functional mode (when tm == 0)...
#set_case_analysis 0 [get_ports se]

#########################################
### Scan Test Mode
#########################################
#set_case_analysis 0 [get_ports tm]

#########################################
# Prevent Optimisation of IO Pads
#########################################
#set_dont_touch [get_cells PAD_*]
# Prevent any optimisation of reset synchrnoniser/glitch filter during PnR
#set_dont_touch [get_cells system_top_inst/reset_sync]


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
# Note: Lower jitter and skew at min corner


#########################################
# Path Groups
#########################################
# Note: These will effect the quality of optimisation
#group_path -name in2reg  -from [all_inputs]
#group_path -name reg2out -to   [all_outputs]
#group_path -name in2out  -from [all_inputs]  -to [all_outputs] 
#group_path -name reg2reg  -from [all_registers]  -to [all_registers]
#group_path -name reg2reg  -from [all_registers -clock ...]  -to [all_registers -clock 


#########################################
# set_disable_timing for timing loops 
#########################################

