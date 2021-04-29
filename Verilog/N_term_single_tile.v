// Copyright 2021 University of Manchester
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

module N_term_single (N1END, N2MID, N2END, N4END, Ci, S1BEG, S2BEG, S2BEGb, S4BEG, FrameData, FrameData_O, FrameStrobe, FrameStrobe_O);
	parameter MaxFramesPerCol = 20;
	parameter FrameBitsPerRow = 32;
	parameter NoConfigBits = 0;
	//  NORTH
	input [3:0] N1END; //wires:4 X_offset:0 Y_offset:1  source_name:NULL destination_name:N1END  
	input [7:0] N2MID; //wires:8 X_offset:0 Y_offset:1  source_name:NULL destination_name:N2MID  
	input [7:0] N2END; //wires:8 X_offset:0 Y_offset:1  source_name:NULL destination_name:N2END  
	input [15:0] N4END; //wires:4 X_offset:0 Y_offset:4  source_name:NULL destination_name:N4END  
	input [0:0] Ci; //wires:1 X_offset:0 Y_offset:1  source_name:NULL destination_name:Ci  
	//  EAST
	//  SOUTH
	output [3:0] S1BEG; //wires:4 X_offset:0 Y_offset:-1  source_name:S1BEG destination_name:NULL  
	output [7:0] S2BEG; //wires:8 X_offset:0 Y_offset:-1  source_name:S2BEG destination_name:NULL  
	output [7:0] S2BEGb; //wires:8 X_offset:0 Y_offset:-1  source_name:S2BEGb destination_name:NULL  
	output [15:0] S4BEG; //wires:4 X_offset:0 Y_offset:-4  source_name:S4BEG destination_name:NULL  
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
	N_term_single_switch_matrix Inst_N_term_single_switch_matrix (
	.N1END0(N1END[0]),
	.N1END1(N1END[1]),
	.N1END2(N1END[2]),
	.N1END3(N1END[3]),
	.N2MID0(N2MID[0]),
	.N2MID1(N2MID[1]),
	.N2MID2(N2MID[2]),
	.N2MID3(N2MID[3]),
	.N2MID4(N2MID[4]),
	.N2MID5(N2MID[5]),
	.N2MID6(N2MID[6]),
	.N2MID7(N2MID[7]),
	.N2END0(N2END[0]),
	.N2END1(N2END[1]),
	.N2END2(N2END[2]),
	.N2END3(N2END[3]),
	.N2END4(N2END[4]),
	.N2END5(N2END[5]),
	.N2END6(N2END[6]),
	.N2END7(N2END[7]),
	.N4END0(N4END[0]),
	.N4END1(N4END[1]),
	.N4END2(N4END[2]),
	.N4END3(N4END[3]),
	.N4END4(N4END[4]),
	.N4END5(N4END[5]),
	.N4END6(N4END[6]),
	.N4END7(N4END[7]),
	.N4END8(N4END[8]),
	.N4END9(N4END[9]),
	.N4END10(N4END[10]),
	.N4END11(N4END[11]),
	.N4END12(N4END[12]),
	.N4END13(N4END[13]),
	.N4END14(N4END[14]),
	.N4END15(N4END[15]),
	.Ci0(Ci[0]),
	.S1BEG0(S1BEG[0]),
	.S1BEG1(S1BEG[1]),
	.S1BEG2(S1BEG[2]),
	.S1BEG3(S1BEG[3]),
	.S2BEG0(S2BEG[0]),
	.S2BEG1(S2BEG[1]),
	.S2BEG2(S2BEG[2]),
	.S2BEG3(S2BEG[3]),
	.S2BEG4(S2BEG[4]),
	.S2BEG5(S2BEG[5]),
	.S2BEG6(S2BEG[6]),
	.S2BEG7(S2BEG[7]),
	.S2BEGb0(S2BEGb[0]),
	.S2BEGb1(S2BEGb[1]),
	.S2BEGb2(S2BEGb[2]),
	.S2BEGb3(S2BEGb[3]),
	.S2BEGb4(S2BEGb[4]),
	.S2BEGb5(S2BEGb[5]),
	.S2BEGb6(S2BEGb[6]),
	.S2BEGb7(S2BEGb[7]),
	.S4BEG0(S4BEG[0]),
	.S4BEG1(S4BEG[1]),
	.S4BEG2(S4BEG[2]),
	.S4BEG3(S4BEG[3]),
	.S4BEG4(S4BEG[4]),
	.S4BEG5(S4BEG[5]),
	.S4BEG6(S4BEG[6]),
	.S4BEG7(S4BEG[7]),
	.S4BEG8(S4BEG[8]),
	.S4BEG9(S4BEG[9]),
	.S4BEG10(S4BEG[10]),
	.S4BEG11(S4BEG[11]),
	.S4BEG12(S4BEG[12]),
	.S4BEG13(S4BEG[13]),
	.S4BEG14(S4BEG[14]),
	.S4BEG15(S4BEG[15])
	);

endmodule
