module CPU_IO (E1END, E2MID, E2END, E6END, W1BEG, W2BEG, W2BEGb, W6BEG, OPA_I0, OPA_I1, OPA_I2, OPA_I3, UserCLK, OPB_I0, OPB_I1, OPB_I2, OPB_I3, RES0_O0, RES0_O1, RES0_O2, RES0_O3, RES1_O0, RES1_O1, RES1_O2, RES1_O3, RES2_O0, RES2_O1, RES2_O2, RES2_O3, FrameData, FrameData_O, FrameStrobe, FrameStrobe_O);
	parameter MaxFramesPerCol = 20;
	parameter FrameBitsPerRow = 32;
	parameter NoConfigBits = 20;
	//  NORTH
	//  EAST
	input [3:0] E1END; //wires:4 X_offset:1 Y_offset:0  source_name:NULL destination_name:E1END  
	input [7:0] E2MID; //wires:8 X_offset:1 Y_offset:0  source_name:NULL destination_name:E2MID  
	input [7:0] E2END; //wires:8 X_offset:1 Y_offset:0  source_name:NULL destination_name:E2END  
	input [11:0] E6END; //wires:2 X_offset:6 Y_offset:0  source_name:NULL destination_name:E6END  
	//  SOUTH
	//  WEST
	output [3:0] W1BEG; //wires:4 X_offset:-1 Y_offset:0  source_name:W1BEG destination_name:NULL  
	output [7:0] W2BEG; //wires:8 X_offset:-1 Y_offset:0  source_name:W2BEG destination_name:NULL  
	output [7:0] W2BEGb; //wires:8 X_offset:-1 Y_offset:0  source_name:W2BEGb destination_name:NULL  
	output [11:0] W6BEG; //wires:2 X_offset:-6 Y_offset:0  source_name:W6BEG destination_name:NULL  
	// Tile IO ports from BELs
	input OPA_I0;
	input OPA_I1;
	input OPA_I2;
	input OPA_I3;
	input UserCLK;
	input OPB_I0;
	input OPB_I1;
	input OPB_I2;
	input OPB_I3;
	output RES0_O0;
	output RES0_O1;
	output RES0_O2;
	output RES0_O3;
	output RES1_O0;
	output RES1_O1;
	output RES1_O2;
	output RES1_O3;
	output RES2_O0;
	output RES2_O1;
	output RES2_O2;
	output RES2_O3;
	input [FrameBitsPerRow-1:0] FrameData; //CONFIG_PORT this is a keyword needed to connect the tile to the bitstream frame register
	output [FrameBitsPerRow-1:0] FrameData_O;
	input [MaxFramesPerCol-1:0] FrameStrobe; //CONFIG_PORT this is a keyword needed to connect the tile to the bitstream frame register
	output [MaxFramesPerCol-1:0] FrameStrobe_O;
	//global


//signal declarations
//BEL ports (e.g., slices)
	wire RES0_I0;
	wire RES0_I1;
	wire RES0_I2;
	wire RES0_I3;
	wire RES1_I0;
	wire RES1_I1;
	wire RES1_I2;
	wire RES1_I3;
	wire RES2_I0;
	wire RES2_I1;
	wire RES2_I2;
	wire RES2_I3;
	wire OPA_O0;
	wire OPA_O1;
	wire OPA_O2;
	wire OPA_O3;
	wire OPB_O0;
	wire OPB_O1;
	wire OPB_O2;
	wire OPB_O3;
//jump wires
//internal configuration data signal to daisy-chain all BELs (if any and in the order they are listed in the fabric.csv)
	wire [NoConfigBits-1:0] ConfigBits;

// Cascading of routing for wires spanning more than one tile
	wire [FrameBitsPerRow-1:0] FrameData_Oi;
	assign FrameData_Oi = FrameData;

	my_buf data_buf_0 (
	.A(FrameData_Oi[0]),
	.X(FrameData_O[0])
	);

	my_buf data_buf_1 (
	.A(FrameData_Oi[1]),
	.X(FrameData_O[1])
	);

	my_buf data_buf_2 (
	.A(FrameData_Oi[2]),
	.X(FrameData_O[2])
	);

	my_buf data_buf_3 (
	.A(FrameData_Oi[3]),
	.X(FrameData_O[3])
	);

	my_buf data_buf_4 (
	.A(FrameData_Oi[4]),
	.X(FrameData_O[4])
	);

	my_buf data_buf_5 (
	.A(FrameData_Oi[5]),
	.X(FrameData_O[5])
	);

	my_buf data_buf_6 (
	.A(FrameData_Oi[6]),
	.X(FrameData_O[6])
	);

	my_buf data_buf_7 (
	.A(FrameData_Oi[7]),
	.X(FrameData_O[7])
	);

	my_buf data_buf_8 (
	.A(FrameData_Oi[8]),
	.X(FrameData_O[8])
	);

	my_buf data_buf_9 (
	.A(FrameData_Oi[9]),
	.X(FrameData_O[9])
	);

	my_buf data_buf_10 (
	.A(FrameData_Oi[10]),
	.X(FrameData_O[10])
	);

	my_buf data_buf_11 (
	.A(FrameData_Oi[11]),
	.X(FrameData_O[11])
	);

	my_buf data_buf_12 (
	.A(FrameData_Oi[12]),
	.X(FrameData_O[12])
	);

	my_buf data_buf_13 (
	.A(FrameData_Oi[13]),
	.X(FrameData_O[13])
	);

	my_buf data_buf_14 (
	.A(FrameData_Oi[14]),
	.X(FrameData_O[14])
	);

	my_buf data_buf_15 (
	.A(FrameData_Oi[15]),
	.X(FrameData_O[15])
	);

	my_buf data_buf_16 (
	.A(FrameData_Oi[16]),
	.X(FrameData_O[16])
	);

	my_buf data_buf_17 (
	.A(FrameData_Oi[17]),
	.X(FrameData_O[17])
	);

	my_buf data_buf_18 (
	.A(FrameData_Oi[18]),
	.X(FrameData_O[18])
	);

	my_buf data_buf_19 (
	.A(FrameData_Oi[19]),
	.X(FrameData_O[19])
	);

	my_buf data_buf_20 (
	.A(FrameData_Oi[20]),
	.X(FrameData_O[20])
	);

	my_buf data_buf_21 (
	.A(FrameData_Oi[21]),
	.X(FrameData_O[21])
	);

	my_buf data_buf_22 (
	.A(FrameData_Oi[22]),
	.X(FrameData_O[22])
	);

	my_buf data_buf_23 (
	.A(FrameData_Oi[23]),
	.X(FrameData_O[23])
	);

	my_buf data_buf_24 (
	.A(FrameData_Oi[24]),
	.X(FrameData_O[24])
	);

	my_buf data_buf_25 (
	.A(FrameData_Oi[25]),
	.X(FrameData_O[25])
	);

	my_buf data_buf_26 (
	.A(FrameData_Oi[26]),
	.X(FrameData_O[26])
	);

	my_buf data_buf_27 (
	.A(FrameData_Oi[27]),
	.X(FrameData_O[27])
	);

	my_buf data_buf_28 (
	.A(FrameData_Oi[28]),
	.X(FrameData_O[28])
	);

	my_buf data_buf_29 (
	.A(FrameData_Oi[29]),
	.X(FrameData_O[29])
	);

	my_buf data_buf_30 (
	.A(FrameData_Oi[30]),
	.X(FrameData_O[30])
	);

	my_buf data_buf_31 (
	.A(FrameData_Oi[31]),
	.X(FrameData_O[31])
	);

	wire [MaxFramesPerCol-1:0] FrameStrobe_Oi;
	assign FrameStrobe_Oi = FrameStrobe;

	my_buf strobe_buf_0 (
	.A(FrameStrobe_Oi[0]),
	.X(FrameStrobe_O[0])
	)
;
	my_buf strobe_buf_1 (
	.A(FrameStrobe_Oi[1]),
	.X(FrameStrobe_O[1])
	)
;
	my_buf strobe_buf_2 (
	.A(FrameStrobe_Oi[2]),
	.X(FrameStrobe_O[2])
	)
;
	my_buf strobe_buf_3 (
	.A(FrameStrobe_Oi[3]),
	.X(FrameStrobe_O[3])
	)
;
	my_buf strobe_buf_4 (
	.A(FrameStrobe_Oi[4]),
	.X(FrameStrobe_O[4])
	)
;
	my_buf strobe_buf_5 (
	.A(FrameStrobe_Oi[5]),
	.X(FrameStrobe_O[5])
	)
;
	my_buf strobe_buf_6 (
	.A(FrameStrobe_Oi[6]),
	.X(FrameStrobe_O[6])
	)
;
	my_buf strobe_buf_7 (
	.A(FrameStrobe_Oi[7]),
	.X(FrameStrobe_O[7])
	)
;
	my_buf strobe_buf_8 (
	.A(FrameStrobe_Oi[8]),
	.X(FrameStrobe_O[8])
	)
;
	my_buf strobe_buf_9 (
	.A(FrameStrobe_Oi[9]),
	.X(FrameStrobe_O[9])
	)
;
	my_buf strobe_buf_10 (
	.A(FrameStrobe_Oi[10]),
	.X(FrameStrobe_O[10])
	)
;
	my_buf strobe_buf_11 (
	.A(FrameStrobe_Oi[11]),
	.X(FrameStrobe_O[11])
	)
;
	my_buf strobe_buf_12 (
	.A(FrameStrobe_Oi[12]),
	.X(FrameStrobe_O[12])
	)
;
	my_buf strobe_buf_13 (
	.A(FrameStrobe_Oi[13]),
	.X(FrameStrobe_O[13])
	)
;
	my_buf strobe_buf_14 (
	.A(FrameStrobe_Oi[14]),
	.X(FrameStrobe_O[14])
	)
;
	my_buf strobe_buf_15 (
	.A(FrameStrobe_Oi[15]),
	.X(FrameStrobe_O[15])
	)
;
	my_buf strobe_buf_16 (
	.A(FrameStrobe_Oi[16]),
	.X(FrameStrobe_O[16])
	)
;
	my_buf strobe_buf_17 (
	.A(FrameStrobe_Oi[17]),
	.X(FrameStrobe_O[17])
	)
;
	my_buf strobe_buf_18 (
	.A(FrameStrobe_Oi[18]),
	.X(FrameStrobe_O[18])
	)
;
	my_buf strobe_buf_19 (
	.A(FrameStrobe_Oi[19]),
	.X(FrameStrobe_O[19])
	)
;

// configuration storage latches
	CPU_IO_ConfigMem Inst_CPU_IO_ConfigMem (
	.FrameData(FrameData),
	.FrameStrobe(FrameStrobe),
	.ConfigBits(ConfigBits)
	);

//BEL component instantiations
	InPass4_frame_config Inst_OPA_InPass4_frame_config (
	.O0(OPA_O0),
	.O1(OPA_O1),
	.O2(OPA_O2),
	.O3(OPA_O3),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.I0(OPA_I0),
	.I1(OPA_I1),
	.I2(OPA_I2),
	.I3(OPA_I3),
	.UserCLK(UserCLK),
	.ConfigBits(ConfigBits[4-1:0])
	);

	InPass4_frame_config Inst_OPB_InPass4_frame_config (
	.O0(OPB_O0),
	.O1(OPB_O1),
	.O2(OPB_O2),
	.O3(OPB_O3),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.I0(OPB_I0),
	.I1(OPB_I1),
	.I2(OPB_I2),
	.I3(OPB_I3),
	.UserCLK(UserCLK),
	.ConfigBits(ConfigBits[8-1:4])
	);

	OutPass4_frame_config Inst_RES0_OutPass4_frame_config (
	.I0(RES0_I0),
	.I1(RES0_I1),
	.I2(RES0_I2),
	.I3(RES0_I3),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.O0(RES0_O0),
	.O1(RES0_O1),
	.O2(RES0_O2),
	.O3(RES0_O3),
	.UserCLK(UserCLK),
	.ConfigBits(ConfigBits[12-1:8])
	);

	OutPass4_frame_config Inst_RES1_OutPass4_frame_config (
	.I0(RES1_I0),
	.I1(RES1_I1),
	.I2(RES1_I2),
	.I3(RES1_I3),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.O0(RES1_O0),
	.O1(RES1_O1),
	.O2(RES1_O2),
	.O3(RES1_O3),
	.UserCLK(UserCLK),
	.ConfigBits(ConfigBits[16-1:12])
	);

	OutPass4_frame_config Inst_RES2_OutPass4_frame_config (
	.I0(RES2_I0),
	.I1(RES2_I1),
	.I2(RES2_I2),
	.I3(RES2_I3),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.O0(RES2_O0),
	.O1(RES2_O1),
	.O2(RES2_O2),
	.O3(RES2_O3),
	.UserCLK(UserCLK),
	.ConfigBits(ConfigBits[20-1:16])
	);


//switch matrix component instantiation
	CPU_IO_switch_matrix Inst_CPU_IO_switch_matrix (
	.E1END0(E1END[0]),
	.E1END1(E1END[1]),
	.E1END2(E1END[2]),
	.E1END3(E1END[3]),
	.E2MID0(E2MID[0]),
	.E2MID1(E2MID[1]),
	.E2MID2(E2MID[2]),
	.E2MID3(E2MID[3]),
	.E2MID4(E2MID[4]),
	.E2MID5(E2MID[5]),
	.E2MID6(E2MID[6]),
	.E2MID7(E2MID[7]),
	.E2END0(E2END[0]),
	.E2END1(E2END[1]),
	.E2END2(E2END[2]),
	.E2END3(E2END[3]),
	.E2END4(E2END[4]),
	.E2END5(E2END[5]),
	.E2END6(E2END[6]),
	.E2END7(E2END[7]),
	.E6END0(E6END[0]),
	.E6END1(E6END[1]),
	.E6END2(E6END[2]),
	.E6END3(E6END[3]),
	.E6END4(E6END[4]),
	.E6END5(E6END[5]),
	.E6END6(E6END[6]),
	.E6END7(E6END[7]),
	.E6END8(E6END[8]),
	.E6END9(E6END[9]),
	.E6END10(E6END[10]),
	.E6END11(E6END[11]),
	.OPA_O0(OPA_O0),
	.OPA_O1(OPA_O1),
	.OPA_O2(OPA_O2),
	.OPA_O3(OPA_O3),
	.OPB_O0(OPB_O0),
	.OPB_O1(OPB_O1),
	.OPB_O2(OPB_O2),
	.OPB_O3(OPB_O3),
	.W1BEG0(W1BEG[0]),
	.W1BEG1(W1BEG[1]),
	.W1BEG2(W1BEG[2]),
	.W1BEG3(W1BEG[3]),
	.W2BEG0(W2BEG[0]),
	.W2BEG1(W2BEG[1]),
	.W2BEG2(W2BEG[2]),
	.W2BEG3(W2BEG[3]),
	.W2BEG4(W2BEG[4]),
	.W2BEG5(W2BEG[5]),
	.W2BEG6(W2BEG[6]),
	.W2BEG7(W2BEG[7]),
	.W2BEGb0(W2BEGb[0]),
	.W2BEGb1(W2BEGb[1]),
	.W2BEGb2(W2BEGb[2]),
	.W2BEGb3(W2BEGb[3]),
	.W2BEGb4(W2BEGb[4]),
	.W2BEGb5(W2BEGb[5]),
	.W2BEGb6(W2BEGb[6]),
	.W2BEGb7(W2BEGb[7]),
	.W6BEG0(W6BEG[0]),
	.W6BEG1(W6BEG[1]),
	.W6BEG2(W6BEG[2]),
	.W6BEG3(W6BEG[3]),
	.W6BEG4(W6BEG[4]),
	.W6BEG5(W6BEG[5]),
	.W6BEG6(W6BEG[6]),
	.W6BEG7(W6BEG[7]),
	.W6BEG8(W6BEG[8]),
	.W6BEG9(W6BEG[9]),
	.W6BEG10(W6BEG[10]),
	.W6BEG11(W6BEG[11]),
	.RES0_I0(RES0_I0),
	.RES0_I1(RES0_I1),
	.RES0_I2(RES0_I2),
	.RES0_I3(RES0_I3),
	.RES1_I0(RES1_I0),
	.RES1_I1(RES1_I1),
	.RES1_I2(RES1_I2),
	.RES1_I3(RES1_I3),
	.RES2_I0(RES2_I0),
	.RES2_I1(RES2_I1),
	.RES2_I2(RES2_I2),
	.RES2_I3(RES2_I3)
	);

endmodule
