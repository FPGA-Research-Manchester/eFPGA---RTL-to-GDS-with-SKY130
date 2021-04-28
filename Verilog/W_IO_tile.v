module W_IO (E1BEG, E2BEG, E2BEGb, E6BEG, W1END, W2MID, W2END, W6END, A_I_top, A_T_top, A_O_top, UserCLK, B_I_top, B_T_top, B_O_top, FrameData, FrameData_O, FrameStrobe, FrameStrobe_O);
	parameter MaxFramesPerCol = 20;
	parameter FrameBitsPerRow = 32;
	parameter NoConfigBits = 12;
	//  NORTH
	//  EAST
	output [3:0] E1BEG; //wires:4 X_offset:1 Y_offset:0  source_name:E1BEG destination_name:NULL  
	output [7:0] E2BEG; //wires:8 X_offset:1 Y_offset:0  source_name:E2BEG destination_name:NULL  
	output [7:0] E2BEGb; //wires:8 X_offset:1 Y_offset:0  source_name:E2BEGb destination_name:NULL  
	output [11:0] E6BEG; //wires:2 X_offset:6 Y_offset:0  source_name:E6BEG destination_name:NULL  
	//  SOUTH
	//  WEST
	input [3:0] W1END; //wires:4 X_offset:-1 Y_offset:0  source_name:NULL destination_name:W1END  
	input [7:0] W2MID; //wires:8 X_offset:-1 Y_offset:0  source_name:NULL destination_name:W2MID  
	input [7:0] W2END; //wires:8 X_offset:-1 Y_offset:0  source_name:NULL destination_name:W2END  
	input [11:0] W6END; //wires:2 X_offset:-6 Y_offset:0  source_name:NULL destination_name:W6END  
	// Tile IO ports from BELs
	output A_I_top;
	output A_T_top;
	input A_O_top;
	input UserCLK;
	output B_I_top;
	output B_T_top;
	input B_O_top;
	input [FrameBitsPerRow-1:0] FrameData; //CONFIG_PORT this is a keyword needed to connect the tile to the bitstream frame register
	output [FrameBitsPerRow-1:0] FrameData_O;
	input [MaxFramesPerCol-1:0] FrameStrobe; //CONFIG_PORT this is a keyword needed to connect the tile to the bitstream frame register
	output [MaxFramesPerCol-1:0] FrameStrobe_O;
	//global


//signal declarations
//BEL ports (e.g., slices)
	wire A_I;
	wire A_T;
	wire B_I;
	wire B_T;
	wire A_O;
	wire A_Q;
	wire B_O;
	wire B_Q;
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
	W_IO_ConfigMem Inst_W_IO_ConfigMem (
	.FrameData(FrameData),
	.FrameStrobe(FrameStrobe),
	.ConfigBits(ConfigBits)
	);

//BEL component instantiations
	IO_1_bidirectional_frame_config_pass Inst_A_IO_1_bidirectional_frame_config_pass (
	.I(A_I),
	.T(A_T),
	.O(A_O),
	.Q(A_Q),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.I_top(A_I_top),
	.T_top(A_T_top),
	.O_top(A_O_top),
	.UserCLK(UserCLK) 
	);

	IO_1_bidirectional_frame_config_pass Inst_B_IO_1_bidirectional_frame_config_pass (
	.I(B_I),
	.T(B_T),
	.O(B_O),
	.Q(B_Q),
	//I/O primitive pins go to tile top level module (not further parsed)  
	.I_top(B_I_top),
	.T_top(B_T_top),
	.O_top(B_O_top),
	.UserCLK(UserCLK) 
	);


//switch matrix component instantiation
	W_IO_switch_matrix Inst_W_IO_switch_matrix (
	.W1END0(W1END[0]),
	.W1END1(W1END[1]),
	.W1END2(W1END[2]),
	.W1END3(W1END[3]),
	.W2MID0(W2MID[0]),
	.W2MID1(W2MID[1]),
	.W2MID2(W2MID[2]),
	.W2MID3(W2MID[3]),
	.W2MID4(W2MID[4]),
	.W2MID5(W2MID[5]),
	.W2MID6(W2MID[6]),
	.W2MID7(W2MID[7]),
	.W2END0(W2END[0]),
	.W2END1(W2END[1]),
	.W2END2(W2END[2]),
	.W2END3(W2END[3]),
	.W2END4(W2END[4]),
	.W2END5(W2END[5]),
	.W2END6(W2END[6]),
	.W2END7(W2END[7]),
	.W6END0(W6END[0]),
	.W6END1(W6END[1]),
	.W6END2(W6END[2]),
	.W6END3(W6END[3]),
	.W6END4(W6END[4]),
	.W6END5(W6END[5]),
	.W6END6(W6END[6]),
	.W6END7(W6END[7]),
	.W6END8(W6END[8]),
	.W6END9(W6END[9]),
	.W6END10(W6END[10]),
	.W6END11(W6END[11]),
	.A_O(A_O),
	.A_Q(A_Q),
	.B_O(B_O),
	.B_Q(B_Q),
	.E1BEG0(E1BEG[0]),
	.E1BEG1(E1BEG[1]),
	.E1BEG2(E1BEG[2]),
	.E1BEG3(E1BEG[3]),
	.E2BEG0(E2BEG[0]),
	.E2BEG1(E2BEG[1]),
	.E2BEG2(E2BEG[2]),
	.E2BEG3(E2BEG[3]),
	.E2BEG4(E2BEG[4]),
	.E2BEG5(E2BEG[5]),
	.E2BEG6(E2BEG[6]),
	.E2BEG7(E2BEG[7]),
	.E2BEGb0(E2BEGb[0]),
	.E2BEGb1(E2BEGb[1]),
	.E2BEGb2(E2BEGb[2]),
	.E2BEGb3(E2BEGb[3]),
	.E2BEGb4(E2BEGb[4]),
	.E2BEGb5(E2BEGb[5]),
	.E2BEGb6(E2BEGb[6]),
	.E2BEGb7(E2BEGb[7]),
	.E6BEG0(E6BEG[0]),
	.E6BEG1(E6BEG[1]),
	.E6BEG2(E6BEG[2]),
	.E6BEG3(E6BEG[3]),
	.E6BEG4(E6BEG[4]),
	.E6BEG5(E6BEG[5]),
	.E6BEG6(E6BEG[6]),
	.E6BEG7(E6BEG[7]),
	.E6BEG8(E6BEG[8]),
	.E6BEG9(E6BEG[9]),
	.E6BEG10(E6BEG[10]),
	.E6BEG11(E6BEG[11]),
	.A_I(A_I),
	.A_T(A_T),
	.B_I(B_I),
	.B_T(B_T),
	.ConfigBits(ConfigBits[12-1:0])
	);

endmodule
