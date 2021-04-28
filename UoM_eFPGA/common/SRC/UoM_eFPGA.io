(global
  version = 3
  io_order = clockwise
  space = 20
)

(iopad
  (topleft
    (inst name="CornerCell1" cell=sky130_ef_io__corner_pad offset=0 orientation=R90 place_status=fixed)
  )

  (left 
    (inst name="ReceiveLED_out" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #pin L1 (bottom to top)
    (inst name="s_data_in" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="s_clk_in" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="Rx_in" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="CLK_in" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
   
    (inst name="inst_io_0" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_1" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_2" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_3" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_4" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_5" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_6" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_7" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_8" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_9" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
 
    (inst name="pad_vccd_l" cell=sky130_ef_io__vccd_lvc_pad orientation=R90 place_status=fixed)  #
    (inst name="pad_vssd_l" cell=sky130_ef_io__vssd_lvc_pad orientation=R90 place_status=fixed)  #

    (inst name="inst_io_10" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_11" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_12" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_13" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_14" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_15" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_16" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_17" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_18" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_19" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_20" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_21" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_22" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
    (inst name="inst_io_23" cell=sky130_ef_io__gpiov2_pad orientation=R90 place_status=fixed)  #
  )

  (topright
    (inst name="CornerCell2" cell=sky130_ef_io__corner_pad offset=0 orientation=R0 place_status=fixed)
  )

  (top
    (inst name="inst_io_24" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_25" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_26" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_27" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_28" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_29" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="pad_vssd_t" cell=sky130_ef_io__vssd_lvc_pad orientation=R0 place_status=fixed)  # left to right
    (inst name="pad_vccd_t" cell=sky130_ef_io__vccd_lvc_pad orientation=R0 place_status=fixed)  #
    (inst name="pad_vddio_t" cell=sky130_ef_io__vddio_lvc_pad orientation=R0 place_status=fixed)  #
    (inst name="pad_vssio_t" cell=sky130_ef_io__vssio_lvc_pad orientation=R0 place_status=fixed)  #
    (inst name="pad_vdda_t" cell=sky130_ef_io__vdda_lvc_pad orientation=R0 place_status=fixed)  #
    (inst name="pad_vssa_t" cell=sky130_ef_io__vssa_lvc_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_89" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_88" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_87" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_86" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_85" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_84" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_83" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_82" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_81" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_80" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_79" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_78" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_77" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_76" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_75" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_74" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_73" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
    (inst name="inst_io_72" cell=sky130_ef_io__gpiov2_pad orientation=R0 place_status=fixed)  #
  )

  (bottomright
    (inst name="CornerCell3" cell=sky130_ef_io__corner_pad offset=0 orientation=R270 place_status=fixed)
  )

  (right
    (inst name="pad_vssd_r" cell=sky130_ef_io__vssd_lvc_pad orientation=R270 place_status=fixed) 
    (inst name="pad_vccd_r" cell=sky130_ef_io__vccd_lvc_pad orientation=R270 place_status=fixed) 
    (inst name="inst_io_48" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  # Bottom -> Top
    (inst name="inst_io_49" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_50" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_51" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_52" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_53" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_54" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_55" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_56" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_57" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_58" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_59" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_60" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_61" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_62" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_63" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_64" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_65" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_66" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_67" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_68" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_69" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_70" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
    (inst name="inst_io_71" cell=sky130_ef_io__gpiov2_pad orientation=R270 place_status=fixed)  #
  )

  (bottomleft
    (inst name="CornerCell4" cell=sky130_ef_io__corner_pad offset=0 orientation=R180 place_status=fixed)
  )

  (bottom
    (inst name="pad_vdda_b" cell=sky130_ef_io__vdda_lvc_pad orientation=R180 place_status=fixed)  #
    (inst name="pad_vssa_b" cell=sky130_ef_io__vssa_lvc_pad orientation=R180 place_status=fixed)  #
    (inst name="pad_vssd_b" cell=sky130_ef_io__vssd_lvc_pad orientation=R180 place_status=fixed) 
    (inst name="pad_vccd_b" cell=sky130_ef_io__vccd_lvc_pad orientation=R180 place_status=fixed)
    (inst name="pad_vddio_b" cell=sky130_ef_io__vddio_lvc_pad orientation=R180 place_status=fixed)
    (inst name="pad_vssio_b" cell=sky130_ef_io__vssio_lvc_pad orientation=R180 place_status=fixed)
    (inst name="inst_io_30" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  # left -> right
    (inst name="inst_io_31" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
    (inst name="inst_io_32" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
    (inst name="inst_io_33" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
    (inst name="inst_io_34" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
    (inst name="inst_io_35" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
    (inst name="inst_io_36" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
    (inst name="inst_io_37" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
    (inst name="inst_io_38" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
    (inst name="inst_io_39" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
    (inst name="inst_io_40" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
    (inst name="inst_io_41" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
    (inst name="inst_io_42" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
    (inst name="inst_io_43" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
    (inst name="inst_io_44" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
    (inst name="inst_io_45" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
    (inst name="inst_io_46" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
    (inst name="inst_io_47" cell=sky130_ef_io__gpiov2_pad orientation=R180 place_status=fixed)  #
  )
)

