/*
module \$_DLATCH_N_ (E, D, Q);
  //wire [1023:0] _TECHMAP_DO_ = "simplemap; opt";
  input E, D;
  output Q;
//  TLATNX1M _TECHMAP_REPLACE_ (
  sky130_fd_sc_hd__udp_dlatch_p _TECHMAP_REPLACE_ (
    .D(D),
    .GATE(E),
    .Q(Q)
  );
endmodule

module \$_DLATCH_P_ (E, D, Q);
  //wire [1023:0] _TECHMAP_DO_ = "simplemap; opt";
  input E, D;
  output Q;
//  TLATNX1M _TECHMAP_REPLACE_ (
  sky130_fd_sc_hd__udp_dlatch_p _TECHMAP_REPLACE_ (
    .D(D),
    .GATE(E),
    .Q(Q)
  );
endmodule
*/
module \$_DLATCH_N_ (E, D, Q);
  input E, D;
  output Q;
  sky130_fd_sc_hd__dlrtp_1 _TECHMAP_REPLACE_ (
    .D(D),
    .GATE(E),
    .RESET_B(1'b1), //disable reset (active low)
    .Q(Q)
  );
endmodule

module \$_DLATCH_P_ (E, D, Q);
  input E, D;
  output Q;
  sky130_fd_sc_hd__dlrtp_1 _TECHMAP_REPLACE_ (
    .D(D),
    .GATE(E),
    .RESET_B(1'b1), //disable reset (active low)
    .Q(Q)
  );
endmodule
