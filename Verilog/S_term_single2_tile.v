module S_term_single2 (N1BEG, N2BEG, N2BEGb, N4BEG, S1END, S2MID, S2END, S4END, FrameData, FrameData_O, FrameStrobe, FrameStrobe_O);
	parameter MaxFramesPerCol = 20;
	parameter FrameBitsPerRow = 32;
	parameter NoConfigBits = 0;
	//  NORTH
	output [3:0] N1BEG; //wires:4 X_offset:0 Y_offset:1  source_name:N1BEG destination_name:NULL  
	output [7:0] N2BEG; //wires:8 X_offset:0 Y_offset:1  source_name:N2BEG destination_name:NULL  
	output [7:0] N2BEGb; //wires:8 X_offset:0 Y_offset:1  source_name:N2BEGb destination_name:NULL  
	output [15:0] N4BEG; //wires:4 X_offset:0 Y_offset:4  source_name:N4BEG destination_name:NULL  
	//  EAST
	//  SOUTH
	input [3:0] S1END; //wires:4 X_offset:0 Y_offset:-1  source_name:NULL destination_name:S1END  
	input [7:0] S2MID; //wires:8 X_offset:0 Y_offset:-1  source_name:NULL destination_name:S2MID  
	input [7:0] S2END; //wires:8 X_offset:0 Y_offset:-1  source_name:NULL destination_name:S2END  
	input [15:0] S4END; //wires:4 X_offset:0 Y_offset:-4  source_name:NULL destination_name:S4END  
	//  WEST
	input [FrameBitsPerRow-1:0] FrameData; //CONFIG_PORT this is a keyword needed to connect the tile to the bitstream frame register
	output [FrameBitsPerRow-1:0] FrameData_O;
	input [MaxFramesPerCol-1:0] FrameStrobe; //CONFIG_PORT this is a keyword needed to connect the tile to the bitstream frame register
	output [MaxFramesPerCol-1:0] FrameStrobe_O;
	//global


//signal declarations
//BEL ports (e.g., slices)
//jump wires
//internal configuration data signal to daisy-chain all BELs (if any and in the order they are listed in the fabric.csv)

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

//BEL component instantiations

//switch matrix component instantiation
	S_term_single2_switch_matrix Inst_S_term_single2_switch_matrix (
	.S1END0(S1END[0]),
	.S1END1(S1END[1]),
	.S1END2(S1END[2]),
	.S1END3(S1END[3]),
	.S2MID0(S2MID[0]),
	.S2MID1(S2MID[1]),
	.S2MID2(S2MID[2]),
	.S2MID3(S2MID[3]),
	.S2MID4(S2MID[4]),
	.S2MID5(S2MID[5]),
	.S2MID6(S2MID[6]),
	.S2MID7(S2MID[7]),
	.S2END0(S2END[0]),
	.S2END1(S2END[1]),
	.S2END2(S2END[2]),
	.S2END3(S2END[3]),
	.S2END4(S2END[4]),
	.S2END5(S2END[5]),
	.S2END6(S2END[6]),
	.S2END7(S2END[7]),
	.S4END0(S4END[0]),
	.S4END1(S4END[1]),
	.S4END2(S4END[2]),
	.S4END3(S4END[3]),
	.S4END4(S4END[4]),
	.S4END5(S4END[5]),
	.S4END6(S4END[6]),
	.S4END7(S4END[7]),
	.S4END8(S4END[8]),
	.S4END9(S4END[9]),
	.S4END10(S4END[10]),
	.S4END11(S4END[11]),
	.S4END12(S4END[12]),
	.S4END13(S4END[13]),
	.S4END14(S4END[14]),
	.S4END15(S4END[15]),
	.N1BEG0(N1BEG[0]),
	.N1BEG1(N1BEG[1]),
	.N1BEG2(N1BEG[2]),
	.N1BEG3(N1BEG[3]),
	.N2BEG0(N2BEG[0]),
	.N2BEG1(N2BEG[1]),
	.N2BEG2(N2BEG[2]),
	.N2BEG3(N2BEG[3]),
	.N2BEG4(N2BEG[4]),
	.N2BEG5(N2BEG[5]),
	.N2BEG6(N2BEG[6]),
	.N2BEG7(N2BEG[7]),
	.N2BEGb0(N2BEGb[0]),
	.N2BEGb1(N2BEGb[1]),
	.N2BEGb2(N2BEGb[2]),
	.N2BEGb3(N2BEGb[3]),
	.N2BEGb4(N2BEGb[4]),
	.N2BEGb5(N2BEGb[5]),
	.N2BEGb6(N2BEGb[6]),
	.N2BEGb7(N2BEGb[7]),
	.N4BEG0(N4BEG[0]),
	.N4BEG1(N4BEG[1]),
	.N4BEG2(N4BEG[2]),
	.N4BEG3(N4BEG[3]),
	.N4BEG4(N4BEG[4]),
	.N4BEG5(N4BEG[5]),
	.N4BEG6(N4BEG[6]),
	.N4BEG7(N4BEG[7]),
	.N4BEG8(N4BEG[8]),
	.N4BEG9(N4BEG[9]),
	.N4BEG10(N4BEG[10]),
	.N4BEG11(N4BEG[11]),
	.N4BEG12(N4BEG[12]),
	.N4BEG13(N4BEG[13]),
	.N4BEG14(N4BEG[14]),
	.N4BEG15(N4BEG[15])
	);

endmodule
