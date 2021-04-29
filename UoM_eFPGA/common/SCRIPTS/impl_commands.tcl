# Copyright 2021 University of Manchester
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

##--- Set user grids
setPreference ConstraintUserXGrid 0.1
setPreference ConstraintUserXOffset 0.1
setPreference ConstraintUserYGrid 0.1
setPreference ConstraintUserYOffset 0.1
setPreference SnapAllCorners 1

set init_lef_file {\
	/home/nguyendao/SKY130/Innovus/UoM_eFPGA/common/LEFfile/sky130_fd_sc_hd.tlef \
	/home/nguyendao/SKY130/Innovus/UoM_eFPGA/common/LEFfile/sky130_fd_sc_hd.lef \
	/home/nguyendao/SKY130/Innovus/UoM_eFPGA/common/LEFfile/sky130_ef_io.lef \
	/home/nguyendao/SKY130/Innovus/UoM_eFPGA/common/LEFfile/eFPGA_top.lef }
set init_verilog /home/nguyendao/SKY130/Innovus/UoM_eFPGA/common/SRC/UoM_eFPGA.v
set init_design_uniquify 1
set init_design_settop 1
set init_top_cell UoM_eFPGA
set init_mmmc_file /home/nguyendao/SKY130/Innovus/UoM_eFPGA/common/MMMC/UoM_eFPGA_mmmc.view
set init_io_file /home/nguyendao/SKY130/Innovus/UoM_eFPGA/common/SRC/UoM_eFPGA.io
set init_pwr_net {vddio vccd vdda}
set init_gnd_net {vssio vssd vssa}
init_design
setCTSMode -bottomPreferredLayer 2
setMaxRouteLayer 6

##################
# FloorPlan
##################
floorPlan -site unithd -d 4475 4410 65 30 65 30 -noSnapToGrid -noResize

##################
# Place Hardmacro
##################
#deselectAll
relativeFPlan --relativePlace inst_eFPGA_top BR Top_Core_Boundary BL 10 10 R0

saveDesign SAVED/blks_placed.invs

addIoFiller -cell sky130_ef_io__com_bus_slice_20um sky130_ef_io__com_bus_slice_10um sky130_ef_io__com_bus_slice_5um sky130_ef_io__com_bus_slice_1um -fillAnyGap -fillerOrient R0 -prefix FILLER -side top
addIoFiller -cell sky130_ef_io__com_bus_slice_20um sky130_ef_io__com_bus_slice_10um sky130_ef_io__com_bus_slice_5um sky130_ef_io__com_bus_slice_1um -fillAnyGap -fillerOrient R180 -prefix FILLER -side bottom
addIoFiller -cell sky130_ef_io__com_bus_slice_20um sky130_ef_io__com_bus_slice_10um sky130_ef_io__com_bus_slice_5um sky130_ef_io__com_bus_slice_1um -fillAnyGap -fillerOrient R90 -prefix FILLER -side left
addIoFiller -cell sky130_ef_io__com_bus_slice_20um sky130_ef_io__com_bus_slice_10um sky130_ef_io__com_bus_slice_5um sky130_ef_io__com_bus_slice_1um -fillAnyGap -fillerOrient R270 -prefix FILLER -side right

###################
## Add halo (L-B-R-T)
###################
addHaloToBlock {10 10 10 10} -allBlock

saveDesign SAVED/blks_halo.invs

##################
# Global Connect 
##################
clearGlobalNets
globalNetConnect vccd -type pgpin -pin VPWR -inst *
globalNetConnect vssd -type pgpin -pin VGND -inst *
globalNetConnect vccd -type pgpin -pin vccd -inst *
globalNetConnect vssd -type pgpin -pin vssd -inst *
globalNetConnect vddio -type pgpin -pin vddio -inst *
globalNetConnect vssio -type pgpin -pin vssio -inst *
#globalNetConnect vdda -type pgpin -pin vdda -inst *
#globalNetConnect vssa -type pgpin -pin vssa -inst *

# Boundary rings
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -stacked_via_top_layer met5 -type core_rings -jog_distance 1.7 -threshold 1.7 -nets {vssd vccd} -follow io -stacked_via_bottom_layer li1 -layer {bottom met5 top met5 right met4 left met4} -width 4 -spacing 2 -offset 5

######################
### Add power rails
######################
#addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit met5 -max_same_layer_jog_length 3.2 -padcore_ring_bottom_layer_limit met3 -set_to_set_distance 30 -skip_via_on_pin Standardcell -stacked_via_top_layer met5 -padcore_ring_top_layer_limit met5 -spacing 1.6 -merge_stripes_value 1.7 -layer met4 -block_ring_bottom_layer_limit met3 -width 1.6 -nets {vssd vccd} -stacked_via_bottom_layer li1
#
#####################
## Global power route
#####################
sroute -connect { blockPin corePin floatingStripe } -layerChangeRange { li1 met5 } -blockPinTarget { nearestRingStripe nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { li1 met5 } -nets { vssd vccd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { li1 met5 }

saveDesign SAVED/sroute.invs

######################
# Add Well Tap
######################
addWellTap -cell sky130_fd_sc_hd__tapvpwrvgnd_1 -cellInterval 40 -inRowOffset 25 -prefix WELLTAP

#####################
## Placement
#####################
place_opt_design


setTieHiLoMode -reset
setTieHiLoMode -cell sky130_fd_sc_hd__conb_1 -maxFanOut 10 -honorDontTouch false -createHierPort false
addTieHiLo -cell sky130_fd_sc_hd__conb_1 -prefix TIE

saveDesign SAVED/placed.invs

#############
# clock tree synthesys - ccopt
############
#set_ccopt_mode -integration native
#update_constraint_mode -name func_mode_prop -sdc_files [list /home/nguyendao/SKY130/Innovus/UoM_eFPGA/common/SDC/pnr/func.prop.tcl]
#
#create_ccopt_clock_tree_spec -file ccopt_native.spec
#source ccopt_native.spec
#ccopt_design
#saveDesign SAVED/cts.invs
#report_ccopt_skew_groups -file ccopt_skew_groups.rpt
#report_ccopt_clock_trees -file ccopt_clock_trees.rpt
#report_ccopt_worst_chain -file ccopt_worst_chain.rpt
#
#setAnalysisMode -cppr both -clockGatingCheck 1 -timeBorrowing 1 -useOutputPinCap 1 -sequentialConstProp 1 -timingSelfLoopsNoSkew 0 -enableMultipleDriveNet 1 -clkSrcPath 1 -warn 1 -usefulSkew 1 -analysisType onChipVariation -skew true -clockPropagation sdcControl -log 1
#update_analysis_view -name func_view_wc -constraint_mode func_mode_prop
#update_analysis_view -name func_view_bc -constraint_mode func_mode_prop
#set_analysis_view -update_timing
#clearClockDomains
#setClockDomains -all
#set_interactive_constraint_modes {func_mode_prop}
#set_propagated_clock [all_clocks]
#redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
#timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix fabric4_postCTS -outDir timingReports
#setOptMode -fixCap true -fixTran true -fixFanoutLoad true
#
#optDesign -postCTS -hold
#
#saveDesign SAVED/cts_opt.invs

#############
# Add Fillers
############
addFiller -cell sky130_fd_sc_hd__fill_8 sky130_fd_sc_hd__fill_4 sky130_fd_sc_hd__fill_2 sky130_fd_sc_hd__fill_1 -prefix FILLER -doDRC

saveDesign SAVED/add_corefillers.invs

###############
# Routing
##############
setNanoRouteMode -quiet -routeInsertAntennaDiode 1
setNanoRouteMode -quiet -routeAntennaCellName sky130_fd_sc_hd__diode_2
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail

saveDesign SAVED/nanorouted.invs

