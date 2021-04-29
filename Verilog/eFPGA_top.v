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


module eFPGA_top (I_top, T_top, O_top, OPA, OPB, RES0, RES1, RES2, CLK, SelfWriteStrobe, SelfWriteData, Rx, ComActive, ReceiveLED, s_clk, s_data);
	// External USER ports 
	//inout [16-1:0] PAD; // these are for Dirk and go to the pad ring
	output [30-1:0] I_top; 
	output [30-1:0] T_top;
	input [30-1:0] O_top;

	input [60-1:0] OPA; // these are for Andrew	and go to the CPU
	input [60-1:0] OPB; // these are for Andrew	and go to the CPU
	output [60-1:0] RES0; // these are for Andrew	and go to the CPU
	output [60-1:0] RES1; // these are for Andrew	and go to the CPU
	output [60-1:0] RES2; // these are for Andrew	and go to the CPU
	input CLK; // This clock can go to the CPU (connects to the fabric LUT output flops

	// CPU configuration port
	input SelfWriteStrobe; // must decode address and write enable
	input [32-1:0] SelfWriteData; // configuration data write port

	// UART configuration port
	input Rx;
	output ComActive;
	output ReceiveLED;

	// BitBang configuration port
	input s_clk;
	input s_data;

	parameter include_eFPGA = 1;
	parameter NumberOfRows = 15;
	parameter NumberOfCols = 17;
	parameter FrameBitsPerRow = 32;
	parameter MaxFramesPerCol = 20;
	parameter desync_flag = 20;
	parameter FrameSelectWidth = 5;
	parameter RowSelectWidth = 5;

	// Signal declarations
	wire [(NumberOfRows*FrameBitsPerRow)-1:0] FrameRegister;

	wire [(MaxFramesPerCol*NumberOfCols)-1:0] FrameSelect;

	wire [(FrameBitsPerRow*(NumberOfRows+2))-1:0] FrameData;

	wire [FrameBitsPerRow-1:0] FrameAddressRegister;
	wire LongFrameStrobe;
	wire [31:0] LocalWriteData;
	wire LocalWriteStrobe;
	wire [RowSelectWidth-1:0] RowSelect;


Config Config_inst (
	.CLK(CLK),
	.Rx(Rx),
	.ComActive(ComActive),
	.ReceiveLED(ReceiveLED),
	.s_clk(s_clk),
	.s_data(s_data),
	.SelfWriteData(SelfWriteData),
	.SelfWriteStrobe(SelfWriteStrobe),
	
	.ConfigWriteData(LocalWriteData),
	.ConfigWriteStrobe(LocalWriteStrobe),
	
	.FrameAddressRegister(FrameAddressRegister),
	.LongFrameStrobe(LongFrameStrobe),
	.RowSelect(RowSelect)
);


	// L: if include_eFPGA = 1 generate

	Frame_Data_Reg_0 Inst_Frame_Data_Reg_0 (
	.FrameData_I(LocalWriteData),
	.FrameData_O(FrameRegister[0*FrameBitsPerRow+:FrameBitsPerRow]),
	.RowSelect(RowSelect),
	.CLK(CLK)
	);

	Frame_Data_Reg_1 Inst_Frame_Data_Reg_1 (
	.FrameData_I(LocalWriteData),
	.FrameData_O(FrameRegister[1*FrameBitsPerRow+:FrameBitsPerRow]),
	.RowSelect(RowSelect),
	.CLK(CLK)
	);

	Frame_Data_Reg_2 Inst_Frame_Data_Reg_2 (
	.FrameData_I(LocalWriteData),
	.FrameData_O(FrameRegister[2*FrameBitsPerRow+:FrameBitsPerRow]),
	.RowSelect(RowSelect),
	.CLK(CLK)
	);

	Frame_Data_Reg_3 Inst_Frame_Data_Reg_3 (
	.FrameData_I(LocalWriteData),
	.FrameData_O(FrameRegister[3*FrameBitsPerRow+:FrameBitsPerRow]),
	.RowSelect(RowSelect),
	.CLK(CLK)
	);

	Frame_Data_Reg_4 Inst_Frame_Data_Reg_4 (
	.FrameData_I(LocalWriteData),
	.FrameData_O(FrameRegister[4*FrameBitsPerRow+:FrameBitsPerRow]),
	.RowSelect(RowSelect),
	.CLK(CLK)
	);

	Frame_Data_Reg_5 Inst_Frame_Data_Reg_5 (
	.FrameData_I(LocalWriteData),
	.FrameData_O(FrameRegister[5*FrameBitsPerRow+:FrameBitsPerRow]),
	.RowSelect(RowSelect),
	.CLK(CLK)
	);

	Frame_Data_Reg_6 Inst_Frame_Data_Reg_6 (
	.FrameData_I(LocalWriteData),
	.FrameData_O(FrameRegister[6*FrameBitsPerRow+:FrameBitsPerRow]),
	.RowSelect(RowSelect),
	.CLK(CLK)
	);

	Frame_Data_Reg_7 Inst_Frame_Data_Reg_7 (
	.FrameData_I(LocalWriteData),
	.FrameData_O(FrameRegister[7*FrameBitsPerRow+:FrameBitsPerRow]),
	.RowSelect(RowSelect),
	.CLK(CLK)
	);

	Frame_Data_Reg_8 Inst_Frame_Data_Reg_8 (
	.FrameData_I(LocalWriteData),
	.FrameData_O(FrameRegister[8*FrameBitsPerRow+:FrameBitsPerRow]),
	.RowSelect(RowSelect),
	.CLK(CLK)
	);

	Frame_Data_Reg_9 Inst_Frame_Data_Reg_9 (
	.FrameData_I(LocalWriteData),
	.FrameData_O(FrameRegister[9*FrameBitsPerRow+:FrameBitsPerRow]),
	.RowSelect(RowSelect),
	.CLK(CLK)
	);

	Frame_Data_Reg_10 Inst_Frame_Data_Reg_10 (
	.FrameData_I(LocalWriteData),
	.FrameData_O(FrameRegister[10*FrameBitsPerRow+:FrameBitsPerRow]),
	.RowSelect(RowSelect),
	.CLK(CLK)
	);

	Frame_Data_Reg_11 Inst_Frame_Data_Reg_11 (
	.FrameData_I(LocalWriteData),
	.FrameData_O(FrameRegister[11*FrameBitsPerRow+:FrameBitsPerRow]),
	.RowSelect(RowSelect),
	.CLK(CLK)
	);

	Frame_Data_Reg_12 Inst_Frame_Data_Reg_12 (
	.FrameData_I(LocalWriteData),
	.FrameData_O(FrameRegister[12*FrameBitsPerRow+:FrameBitsPerRow]),
	.RowSelect(RowSelect),
	.CLK(CLK)
	);

	Frame_Data_Reg_13 Inst_Frame_Data_Reg_13 (
	.FrameData_I(LocalWriteData),
	.FrameData_O(FrameRegister[13*FrameBitsPerRow+:FrameBitsPerRow]),
	.RowSelect(RowSelect),
	.CLK(CLK)
	);

	Frame_Data_Reg_14 Inst_Frame_Data_Reg_14 (
	.FrameData_I(LocalWriteData),
	.FrameData_O(FrameRegister[14*FrameBitsPerRow+:FrameBitsPerRow]),
	.RowSelect(RowSelect),
	.CLK(CLK)
	);

	Frame_Select_0 Inst_Frame_Select_0 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[0*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	Frame_Select_1 Inst_Frame_Select_1 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[1*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	Frame_Select_2 Inst_Frame_Select_2 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[2*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	Frame_Select_3 Inst_Frame_Select_3 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[3*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	Frame_Select_4 Inst_Frame_Select_4 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[4*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	Frame_Select_5 Inst_Frame_Select_5 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[5*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	Frame_Select_6 Inst_Frame_Select_6 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[6*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	Frame_Select_7 Inst_Frame_Select_7 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[7*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	Frame_Select_8 Inst_Frame_Select_8 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[8*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	Frame_Select_9 Inst_Frame_Select_9 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[9*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	Frame_Select_10 Inst_Frame_Select_10 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[10*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	Frame_Select_11 Inst_Frame_Select_11 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[11*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	Frame_Select_12 Inst_Frame_Select_12 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[12*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	Frame_Select_13 Inst_Frame_Select_13 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[13*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	Frame_Select_14 Inst_Frame_Select_14 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[14*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	Frame_Select_15 Inst_Frame_Select_15 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[15*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	Frame_Select_16 Inst_Frame_Select_16 (
	.FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
	.FrameStrobe_O(FrameSelect[16*MaxFramesPerCol +: MaxFramesPerCol]),
	.FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-(FrameSelectWidth)]),
	.FrameStrobe(LongFrameStrobe)
	);

	eFPGA Inst_eFPGA(
	.Tile_X0Y1_A_I_top(I_top[29]),
	.Tile_X0Y1_B_I_top(I_top[28]),
	.Tile_X0Y2_A_I_top(I_top[27]),
	.Tile_X0Y2_B_I_top(I_top[26]),
	.Tile_X0Y3_A_I_top(I_top[25]),
	.Tile_X0Y3_B_I_top(I_top[24]),
	.Tile_X0Y4_A_I_top(I_top[23]),
	.Tile_X0Y4_B_I_top(I_top[22]),
	.Tile_X0Y5_A_I_top(I_top[21]),
	.Tile_X0Y5_B_I_top(I_top[20]),
	.Tile_X0Y6_A_I_top(I_top[19]),
	.Tile_X0Y6_B_I_top(I_top[18]),
	.Tile_X0Y7_A_I_top(I_top[17]),
	.Tile_X0Y7_B_I_top(I_top[16]),
	.Tile_X0Y8_A_I_top(I_top[15]),
	.Tile_X0Y8_B_I_top(I_top[14]),
	.Tile_X0Y9_A_I_top(I_top[13]),
	.Tile_X0Y9_B_I_top(I_top[12]),
	.Tile_X0Y10_A_I_top(I_top[11]),
	.Tile_X0Y10_B_I_top(I_top[10]),
	.Tile_X0Y11_A_I_top(I_top[9]),
	.Tile_X0Y11_B_I_top(I_top[8]),
	.Tile_X0Y12_A_I_top(I_top[7]),
	.Tile_X0Y12_B_I_top(I_top[6]),
	.Tile_X0Y13_A_I_top(I_top[5]),
	.Tile_X0Y13_B_I_top(I_top[4]),
	.Tile_X0Y14_A_I_top(I_top[3]),
	.Tile_X0Y14_B_I_top(I_top[2]),
	.Tile_X0Y15_A_I_top(I_top[1]),
	.Tile_X0Y15_B_I_top(I_top[0]),

	.Tile_X0Y1_A_T_top(T_top[29]),
	.Tile_X0Y1_B_T_top(T_top[28]),
	.Tile_X0Y2_A_T_top(T_top[27]),
	.Tile_X0Y2_B_T_top(T_top[26]),
	.Tile_X0Y3_A_T_top(T_top[25]),
	.Tile_X0Y3_B_T_top(T_top[24]),
	.Tile_X0Y4_A_T_top(T_top[23]),
	.Tile_X0Y4_B_T_top(T_top[22]),
	.Tile_X0Y5_A_T_top(T_top[21]),
	.Tile_X0Y5_B_T_top(T_top[20]),
	.Tile_X0Y6_A_T_top(T_top[19]),
	.Tile_X0Y6_B_T_top(T_top[18]),
	.Tile_X0Y7_A_T_top(T_top[17]),
	.Tile_X0Y7_B_T_top(T_top[16]),
	.Tile_X0Y8_A_T_top(T_top[15]),
	.Tile_X0Y8_B_T_top(T_top[14]),
	.Tile_X0Y9_A_T_top(T_top[13]),
	.Tile_X0Y9_B_T_top(T_top[12]),
	.Tile_X0Y10_A_T_top(T_top[11]),
	.Tile_X0Y10_B_T_top(T_top[10]),
	.Tile_X0Y11_A_T_top(T_top[9]),
	.Tile_X0Y11_B_T_top(T_top[8]),
	.Tile_X0Y12_A_T_top(T_top[7]),
	.Tile_X0Y12_B_T_top(T_top[6]),
	.Tile_X0Y13_A_T_top(T_top[5]),
	.Tile_X0Y13_B_T_top(T_top[4]),
	.Tile_X0Y14_A_T_top(T_top[3]),
	.Tile_X0Y14_B_T_top(T_top[2]),
	.Tile_X0Y15_A_T_top(T_top[1]),
	.Tile_X0Y15_B_T_top(T_top[0]),

	.Tile_X0Y1_A_O_top(O_top[29]),
	.Tile_X0Y1_B_O_top(O_top[28]),
	.Tile_X0Y2_A_O_top(O_top[27]),
	.Tile_X0Y2_B_O_top(O_top[26]),
	.Tile_X0Y3_A_O_top(O_top[25]),
	.Tile_X0Y3_B_O_top(O_top[24]),
	.Tile_X0Y4_A_O_top(O_top[23]),
	.Tile_X0Y4_B_O_top(O_top[22]),
	.Tile_X0Y5_A_O_top(O_top[21]),
	.Tile_X0Y5_B_O_top(O_top[20]),
	.Tile_X0Y6_A_O_top(O_top[19]),
	.Tile_X0Y6_B_O_top(O_top[18]),
	.Tile_X0Y7_A_O_top(O_top[17]),
	.Tile_X0Y7_B_O_top(O_top[16]),
	.Tile_X0Y8_A_O_top(O_top[15]),
	.Tile_X0Y8_B_O_top(O_top[14]),
	.Tile_X0Y9_A_O_top(O_top[13]),
	.Tile_X0Y9_B_O_top(O_top[12]),
	.Tile_X0Y10_A_O_top(O_top[11]),
	.Tile_X0Y10_B_O_top(O_top[10]),
	.Tile_X0Y11_A_O_top(O_top[9]),
	.Tile_X0Y11_B_O_top(O_top[8]),
	.Tile_X0Y12_A_O_top(O_top[7]),
	.Tile_X0Y12_B_O_top(O_top[6]),
	.Tile_X0Y13_A_O_top(O_top[5]),
	.Tile_X0Y13_B_O_top(O_top[4]),
	.Tile_X0Y14_A_O_top(O_top[3]),
	.Tile_X0Y14_B_O_top(O_top[2]),
	.Tile_X0Y15_A_O_top(O_top[1]),
	.Tile_X0Y15_B_O_top(O_top[0]),

	.Tile_X16Y1_OPA_I0(OPA[59]),
	.Tile_X16Y1_OPA_I1(OPA[58]),
	.Tile_X16Y1_OPA_I2(OPA[57]),
	.Tile_X16Y1_OPA_I3(OPA[56]),
	.Tile_X16Y2_OPA_I0(OPA[55]),
	.Tile_X16Y2_OPA_I1(OPA[54]),
	.Tile_X16Y2_OPA_I2(OPA[53]),
	.Tile_X16Y2_OPA_I3(OPA[52]),
	.Tile_X16Y3_OPA_I0(OPA[51]),
	.Tile_X16Y3_OPA_I1(OPA[50]),
	.Tile_X16Y3_OPA_I2(OPA[49]),
	.Tile_X16Y3_OPA_I3(OPA[48]),
	.Tile_X16Y4_OPA_I0(OPA[47]),
	.Tile_X16Y4_OPA_I1(OPA[46]),
	.Tile_X16Y4_OPA_I2(OPA[45]),
	.Tile_X16Y4_OPA_I3(OPA[44]),
	.Tile_X16Y5_OPA_I0(OPA[43]),
	.Tile_X16Y5_OPA_I1(OPA[42]),
	.Tile_X16Y5_OPA_I2(OPA[41]),
	.Tile_X16Y5_OPA_I3(OPA[40]),
	.Tile_X16Y6_OPA_I0(OPA[39]),
	.Tile_X16Y6_OPA_I1(OPA[38]),
	.Tile_X16Y6_OPA_I2(OPA[37]),
	.Tile_X16Y6_OPA_I3(OPA[36]),
	.Tile_X16Y7_OPA_I0(OPA[35]),
	.Tile_X16Y7_OPA_I1(OPA[34]),
	.Tile_X16Y7_OPA_I2(OPA[33]),
	.Tile_X16Y7_OPA_I3(OPA[32]),
	.Tile_X16Y8_OPA_I0(OPA[31]),
	.Tile_X16Y8_OPA_I1(OPA[30]),
	.Tile_X16Y8_OPA_I2(OPA[29]),
	.Tile_X16Y8_OPA_I3(OPA[28]),
	.Tile_X16Y9_OPA_I0(OPA[27]),
	.Tile_X16Y9_OPA_I1(OPA[26]),
	.Tile_X16Y9_OPA_I2(OPA[25]),
	.Tile_X16Y9_OPA_I3(OPA[24]),
	.Tile_X16Y10_OPA_I0(OPA[23]),
	.Tile_X16Y10_OPA_I1(OPA[22]),
	.Tile_X16Y10_OPA_I2(OPA[21]),
	.Tile_X16Y10_OPA_I3(OPA[20]),
	.Tile_X16Y11_OPA_I0(OPA[19]),
	.Tile_X16Y11_OPA_I1(OPA[18]),
	.Tile_X16Y11_OPA_I2(OPA[17]),
	.Tile_X16Y11_OPA_I3(OPA[16]),
	.Tile_X16Y12_OPA_I0(OPA[15]),
	.Tile_X16Y12_OPA_I1(OPA[14]),
	.Tile_X16Y12_OPA_I2(OPA[13]),
	.Tile_X16Y12_OPA_I3(OPA[12]),
	.Tile_X16Y13_OPA_I0(OPA[11]),
	.Tile_X16Y13_OPA_I1(OPA[10]),
	.Tile_X16Y13_OPA_I2(OPA[9]),
	.Tile_X16Y13_OPA_I3(OPA[8]),
	.Tile_X16Y14_OPA_I0(OPA[7]),
	.Tile_X16Y14_OPA_I1(OPA[6]),
	.Tile_X16Y14_OPA_I2(OPA[5]),
	.Tile_X16Y14_OPA_I3(OPA[4]),
	.Tile_X16Y15_OPA_I0(OPA[3]),
	.Tile_X16Y15_OPA_I1(OPA[2]),
	.Tile_X16Y15_OPA_I2(OPA[1]),
	.Tile_X16Y15_OPA_I3(OPA[0]),

	.Tile_X16Y1_OPB_I0(OPB[59]),
	.Tile_X16Y1_OPB_I1(OPB[58]),
	.Tile_X16Y1_OPB_I2(OPB[57]),
	.Tile_X16Y1_OPB_I3(OPB[56]),
	.Tile_X16Y2_OPB_I0(OPB[55]),
	.Tile_X16Y2_OPB_I1(OPB[54]),
	.Tile_X16Y2_OPB_I2(OPB[53]),
	.Tile_X16Y2_OPB_I3(OPB[52]),
	.Tile_X16Y3_OPB_I0(OPB[51]),
	.Tile_X16Y3_OPB_I1(OPB[50]),
	.Tile_X16Y3_OPB_I2(OPB[49]),
	.Tile_X16Y3_OPB_I3(OPB[48]),
	.Tile_X16Y4_OPB_I0(OPB[47]),
	.Tile_X16Y4_OPB_I1(OPB[46]),
	.Tile_X16Y4_OPB_I2(OPB[45]),
	.Tile_X16Y4_OPB_I3(OPB[44]),
	.Tile_X16Y5_OPB_I0(OPB[43]),
	.Tile_X16Y5_OPB_I1(OPB[42]),
	.Tile_X16Y5_OPB_I2(OPB[41]),
	.Tile_X16Y5_OPB_I3(OPB[40]),
	.Tile_X16Y6_OPB_I0(OPB[39]),
	.Tile_X16Y6_OPB_I1(OPB[38]),
	.Tile_X16Y6_OPB_I2(OPB[37]),
	.Tile_X16Y6_OPB_I3(OPB[36]),
	.Tile_X16Y7_OPB_I0(OPB[35]),
	.Tile_X16Y7_OPB_I1(OPB[34]),
	.Tile_X16Y7_OPB_I2(OPB[33]),
	.Tile_X16Y7_OPB_I3(OPB[32]),
	.Tile_X16Y8_OPB_I0(OPB[31]),
	.Tile_X16Y8_OPB_I1(OPB[30]),
	.Tile_X16Y8_OPB_I2(OPB[29]),
	.Tile_X16Y8_OPB_I3(OPB[28]),
	.Tile_X16Y9_OPB_I0(OPB[27]),
	.Tile_X16Y9_OPB_I1(OPB[26]),
	.Tile_X16Y9_OPB_I2(OPB[25]),
	.Tile_X16Y9_OPB_I3(OPB[24]),
	.Tile_X16Y10_OPB_I0(OPB[23]),
	.Tile_X16Y10_OPB_I1(OPB[22]),
	.Tile_X16Y10_OPB_I2(OPB[21]),
	.Tile_X16Y10_OPB_I3(OPB[20]),
	.Tile_X16Y11_OPB_I0(OPB[19]),
	.Tile_X16Y11_OPB_I1(OPB[18]),
	.Tile_X16Y11_OPB_I2(OPB[17]),
	.Tile_X16Y11_OPB_I3(OPB[16]),
	.Tile_X16Y12_OPB_I0(OPB[15]),
	.Tile_X16Y12_OPB_I1(OPB[14]),
	.Tile_X16Y12_OPB_I2(OPB[13]),
	.Tile_X16Y12_OPB_I3(OPB[12]),
	.Tile_X16Y13_OPB_I0(OPB[11]),
	.Tile_X16Y13_OPB_I1(OPB[10]),
	.Tile_X16Y13_OPB_I2(OPB[9]),
	.Tile_X16Y13_OPB_I3(OPB[8]),
	.Tile_X16Y14_OPB_I0(OPB[7]),
	.Tile_X16Y14_OPB_I1(OPB[6]),
	.Tile_X16Y14_OPB_I2(OPB[5]),
	.Tile_X16Y14_OPB_I3(OPB[4]),
	.Tile_X16Y15_OPB_I0(OPB[3]),
	.Tile_X16Y15_OPB_I1(OPB[2]),
	.Tile_X16Y15_OPB_I2(OPB[1]),
	.Tile_X16Y15_OPB_I3(OPB[0]),

	.Tile_X16Y1_RES0_O0(RES0[59]),
	.Tile_X16Y1_RES0_O1(RES0[58]),
	.Tile_X16Y1_RES0_O2(RES0[57]),
	.Tile_X16Y1_RES0_O3(RES0[56]),
	.Tile_X16Y2_RES0_O0(RES0[55]),
	.Tile_X16Y2_RES0_O1(RES0[54]),
	.Tile_X16Y2_RES0_O2(RES0[53]),
	.Tile_X16Y2_RES0_O3(RES0[52]),
	.Tile_X16Y3_RES0_O0(RES0[51]),
	.Tile_X16Y3_RES0_O1(RES0[50]),
	.Tile_X16Y3_RES0_O2(RES0[49]),
	.Tile_X16Y3_RES0_O3(RES0[48]),
	.Tile_X16Y4_RES0_O0(RES0[47]),
	.Tile_X16Y4_RES0_O1(RES0[46]),
	.Tile_X16Y4_RES0_O2(RES0[45]),
	.Tile_X16Y4_RES0_O3(RES0[44]),
	.Tile_X16Y5_RES0_O0(RES0[43]),
	.Tile_X16Y5_RES0_O1(RES0[42]),
	.Tile_X16Y5_RES0_O2(RES0[41]),
	.Tile_X16Y5_RES0_O3(RES0[40]),
	.Tile_X16Y6_RES0_O0(RES0[39]),
	.Tile_X16Y6_RES0_O1(RES0[38]),
	.Tile_X16Y6_RES0_O2(RES0[37]),
	.Tile_X16Y6_RES0_O3(RES0[36]),
	.Tile_X16Y7_RES0_O0(RES0[35]),
	.Tile_X16Y7_RES0_O1(RES0[34]),
	.Tile_X16Y7_RES0_O2(RES0[33]),
	.Tile_X16Y7_RES0_O3(RES0[32]),
	.Tile_X16Y8_RES0_O0(RES0[31]),
	.Tile_X16Y8_RES0_O1(RES0[30]),
	.Tile_X16Y8_RES0_O2(RES0[29]),
	.Tile_X16Y8_RES0_O3(RES0[28]),
	.Tile_X16Y9_RES0_O0(RES0[27]),
	.Tile_X16Y9_RES0_O1(RES0[26]),
	.Tile_X16Y9_RES0_O2(RES0[25]),
	.Tile_X16Y9_RES0_O3(RES0[24]),
	.Tile_X16Y10_RES0_O0(RES0[23]),
	.Tile_X16Y10_RES0_O1(RES0[22]),
	.Tile_X16Y10_RES0_O2(RES0[21]),
	.Tile_X16Y10_RES0_O3(RES0[20]),
	.Tile_X16Y11_RES0_O0(RES0[19]),
	.Tile_X16Y11_RES0_O1(RES0[18]),
	.Tile_X16Y11_RES0_O2(RES0[17]),
	.Tile_X16Y11_RES0_O3(RES0[16]),
	.Tile_X16Y12_RES0_O0(RES0[15]),
	.Tile_X16Y12_RES0_O1(RES0[14]),
	.Tile_X16Y12_RES0_O2(RES0[13]),
	.Tile_X16Y12_RES0_O3(RES0[12]),
	.Tile_X16Y13_RES0_O0(RES0[11]),
	.Tile_X16Y13_RES0_O1(RES0[10]),
	.Tile_X16Y13_RES0_O2(RES0[9]),
	.Tile_X16Y13_RES0_O3(RES0[8]),
	.Tile_X16Y14_RES0_O0(RES0[7]),
	.Tile_X16Y14_RES0_O1(RES0[6]),
	.Tile_X16Y14_RES0_O2(RES0[5]),
	.Tile_X16Y14_RES0_O3(RES0[4]),
	.Tile_X16Y15_RES0_O0(RES0[3]),
	.Tile_X16Y15_RES0_O1(RES0[2]),
	.Tile_X16Y15_RES0_O2(RES0[1]),
	.Tile_X16Y15_RES0_O3(RES0[0]),

	.Tile_X16Y1_RES1_O0(RES1[59]),
	.Tile_X16Y1_RES1_O1(RES1[58]),
	.Tile_X16Y1_RES1_O2(RES1[57]),
	.Tile_X16Y1_RES1_O3(RES1[56]),
	.Tile_X16Y2_RES1_O0(RES1[55]),
	.Tile_X16Y2_RES1_O1(RES1[54]),
	.Tile_X16Y2_RES1_O2(RES1[53]),
	.Tile_X16Y2_RES1_O3(RES1[52]),
	.Tile_X16Y3_RES1_O0(RES1[51]),
	.Tile_X16Y3_RES1_O1(RES1[50]),
	.Tile_X16Y3_RES1_O2(RES1[49]),
	.Tile_X16Y3_RES1_O3(RES1[48]),
	.Tile_X16Y4_RES1_O0(RES1[47]),
	.Tile_X16Y4_RES1_O1(RES1[46]),
	.Tile_X16Y4_RES1_O2(RES1[45]),
	.Tile_X16Y4_RES1_O3(RES1[44]),
	.Tile_X16Y5_RES1_O0(RES1[43]),
	.Tile_X16Y5_RES1_O1(RES1[42]),
	.Tile_X16Y5_RES1_O2(RES1[41]),
	.Tile_X16Y5_RES1_O3(RES1[40]),
	.Tile_X16Y6_RES1_O0(RES1[39]),
	.Tile_X16Y6_RES1_O1(RES1[38]),
	.Tile_X16Y6_RES1_O2(RES1[37]),
	.Tile_X16Y6_RES1_O3(RES1[36]),
	.Tile_X16Y7_RES1_O0(RES1[35]),
	.Tile_X16Y7_RES1_O1(RES1[34]),
	.Tile_X16Y7_RES1_O2(RES1[33]),
	.Tile_X16Y7_RES1_O3(RES1[32]),
	.Tile_X16Y8_RES1_O0(RES1[31]),
	.Tile_X16Y8_RES1_O1(RES1[30]),
	.Tile_X16Y8_RES1_O2(RES1[29]),
	.Tile_X16Y8_RES1_O3(RES1[28]),
	.Tile_X16Y9_RES1_O0(RES1[27]),
	.Tile_X16Y9_RES1_O1(RES1[26]),
	.Tile_X16Y9_RES1_O2(RES1[25]),
	.Tile_X16Y9_RES1_O3(RES1[24]),
	.Tile_X16Y10_RES1_O0(RES1[23]),
	.Tile_X16Y10_RES1_O1(RES1[22]),
	.Tile_X16Y10_RES1_O2(RES1[21]),
	.Tile_X16Y10_RES1_O3(RES1[20]),
	.Tile_X16Y11_RES1_O0(RES1[19]),
	.Tile_X16Y11_RES1_O1(RES1[18]),
	.Tile_X16Y11_RES1_O2(RES1[17]),
	.Tile_X16Y11_RES1_O3(RES1[16]),
	.Tile_X16Y12_RES1_O0(RES1[15]),
	.Tile_X16Y12_RES1_O1(RES1[14]),
	.Tile_X16Y12_RES1_O2(RES1[13]),
	.Tile_X16Y12_RES1_O3(RES1[12]),
	.Tile_X16Y13_RES1_O0(RES1[11]),
	.Tile_X16Y13_RES1_O1(RES1[10]),
	.Tile_X16Y13_RES1_O2(RES1[9]),
	.Tile_X16Y13_RES1_O3(RES1[8]),
	.Tile_X16Y14_RES1_O0(RES1[7]),
	.Tile_X16Y14_RES1_O1(RES1[6]),
	.Tile_X16Y14_RES1_O2(RES1[5]),
	.Tile_X16Y14_RES1_O3(RES1[4]),
	.Tile_X16Y15_RES1_O0(RES1[3]),
	.Tile_X16Y15_RES1_O1(RES1[2]),
	.Tile_X16Y15_RES1_O2(RES1[1]),
	.Tile_X16Y15_RES1_O3(RES1[0]),

	.Tile_X16Y1_RES2_O0(RES2[59]),
	.Tile_X16Y1_RES2_O1(RES2[58]),
	.Tile_X16Y1_RES2_O2(RES2[57]),
	.Tile_X16Y1_RES2_O3(RES2[56]),
	.Tile_X16Y2_RES2_O0(RES2[55]),
	.Tile_X16Y2_RES2_O1(RES2[54]),
	.Tile_X16Y2_RES2_O2(RES2[53]),
	.Tile_X16Y2_RES2_O3(RES2[52]),
	.Tile_X16Y3_RES2_O0(RES2[51]),
	.Tile_X16Y3_RES2_O1(RES2[50]),
	.Tile_X16Y3_RES2_O2(RES2[49]),
	.Tile_X16Y3_RES2_O3(RES2[48]),
	.Tile_X16Y4_RES2_O0(RES2[47]),
	.Tile_X16Y4_RES2_O1(RES2[46]),
	.Tile_X16Y4_RES2_O2(RES2[45]),
	.Tile_X16Y4_RES2_O3(RES2[44]),
	.Tile_X16Y5_RES2_O0(RES2[43]),
	.Tile_X16Y5_RES2_O1(RES2[42]),
	.Tile_X16Y5_RES2_O2(RES2[41]),
	.Tile_X16Y5_RES2_O3(RES2[40]),
	.Tile_X16Y6_RES2_O0(RES2[39]),
	.Tile_X16Y6_RES2_O1(RES2[38]),
	.Tile_X16Y6_RES2_O2(RES2[37]),
	.Tile_X16Y6_RES2_O3(RES2[36]),
	.Tile_X16Y7_RES2_O0(RES2[35]),
	.Tile_X16Y7_RES2_O1(RES2[34]),
	.Tile_X16Y7_RES2_O2(RES2[33]),
	.Tile_X16Y7_RES2_O3(RES2[32]),
	.Tile_X16Y8_RES2_O0(RES2[31]),
	.Tile_X16Y8_RES2_O1(RES2[30]),
	.Tile_X16Y8_RES2_O2(RES2[29]),
	.Tile_X16Y8_RES2_O3(RES2[28]),
	.Tile_X16Y9_RES2_O0(RES2[27]),
	.Tile_X16Y9_RES2_O1(RES2[26]),
	.Tile_X16Y9_RES2_O2(RES2[25]),
	.Tile_X16Y9_RES2_O3(RES2[24]),
	.Tile_X16Y10_RES2_O0(RES2[23]),
	.Tile_X16Y10_RES2_O1(RES2[22]),
	.Tile_X16Y10_RES2_O2(RES2[21]),
	.Tile_X16Y10_RES2_O3(RES2[20]),
	.Tile_X16Y11_RES2_O0(RES2[19]),
	.Tile_X16Y11_RES2_O1(RES2[18]),
	.Tile_X16Y11_RES2_O2(RES2[17]),
	.Tile_X16Y11_RES2_O3(RES2[16]),
	.Tile_X16Y12_RES2_O0(RES2[15]),
	.Tile_X16Y12_RES2_O1(RES2[14]),
	.Tile_X16Y12_RES2_O2(RES2[13]),
	.Tile_X16Y12_RES2_O3(RES2[12]),
	.Tile_X16Y13_RES2_O0(RES2[11]),
	.Tile_X16Y13_RES2_O1(RES2[10]),
	.Tile_X16Y13_RES2_O2(RES2[9]),
	.Tile_X16Y13_RES2_O3(RES2[8]),
	.Tile_X16Y14_RES2_O0(RES2[7]),
	.Tile_X16Y14_RES2_O1(RES2[6]),
	.Tile_X16Y14_RES2_O2(RES2[5]),
	.Tile_X16Y14_RES2_O3(RES2[4]),
	.Tile_X16Y15_RES2_O0(RES2[3]),
	.Tile_X16Y15_RES2_O1(RES2[2]),
	.Tile_X16Y15_RES2_O2(RES2[1]),
	.Tile_X16Y15_RES2_O3(RES2[0]),

	//declarations
	.UserCLK(CLK),
	.FrameData(FrameData),
	.FrameStrobe(FrameSelect)
	);
	assign FrameData = {32'h12345678,FrameRegister,32'h12345678};

endmodule

