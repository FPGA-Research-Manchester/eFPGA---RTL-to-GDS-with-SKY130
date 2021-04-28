########
# Stream GDS file
########
streamOut OUTPUT/UoM_eFPGA.gds -mapFile ./common/MAP/sky130_lefpin.map -libName UoM_eFPGA -merge { ./common/GDS/sky130_fd_sc_hd.gds ./common/sky130_ef_io.gds } -uniquifyCellNames -outputMacros -units 1000 -mode ALL

########
# Writing Netlist 
########
saveNetlist OUTPUT/UoM_eFPGA.v

########
# Writing SPEF file
########
extractRC
rcOut -spef OUTPUT/UoM_eFPGA.spef

########
# Writing SDF file
########
write_sdf -process 1.0:1.0:1.0 -voltage 1.95:1.80:1.65 -temperature -40:15:100 OUTPUT/UoM_eFPGA.sdf
########
