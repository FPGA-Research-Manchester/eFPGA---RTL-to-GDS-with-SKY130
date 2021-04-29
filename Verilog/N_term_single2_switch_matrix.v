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

//NumberOfConfigBits:0
module N_term_single2_switch_matrix (N1END0, N1END1, N1END2, N1END3, N2MID0, N2MID1, N2MID2, N2MID3, N2MID4, N2MID5, N2MID6, N2MID7, N2END0, N2END1, N2END2, N2END3, N2END4, N2END5, N2END6, N2END7, N4END0, N4END1, N4END2, N4END3, N4END4, N4END5, N4END6, N4END7, N4END8, N4END9, N4END10, N4END11, N4END12, N4END13, N4END14, N4END15, S1BEG0, S1BEG1, S1BEG2, S1BEG3, S2BEG0, S2BEG1, S2BEG2, S2BEG3, S2BEG4, S2BEG5, S2BEG6, S2BEG7, S2BEGb0, S2BEGb1, S2BEGb2, S2BEGb3, S2BEGb4, S2BEGb5, S2BEGb6, S2BEGb7, S4BEG0, S4BEG1, S4BEG2, S4BEG3, S4BEG4, S4BEG5, S4BEG6, S4BEG7, S4BEG8, S4BEG9, S4BEG10, S4BEG11, S4BEG12, S4BEG13, S4BEG14, S4BEG15);
	parameter NoConfigBits = 0;
	 // switch matrix inputs
	input N1END0;
	input N1END1;
	input N1END2;
	input N1END3;
	input N2MID0;
	input N2MID1;
	input N2MID2;
	input N2MID3;
	input N2MID4;
	input N2MID5;
	input N2MID6;
	input N2MID7;
	input N2END0;
	input N2END1;
	input N2END2;
	input N2END3;
	input N2END4;
	input N2END5;
	input N2END6;
	input N2END7;
	input N4END0;
	input N4END1;
	input N4END2;
	input N4END3;
	input N4END4;
	input N4END5;
	input N4END6;
	input N4END7;
	input N4END8;
	input N4END9;
	input N4END10;
	input N4END11;
	input N4END12;
	input N4END13;
	input N4END14;
	input N4END15;
	output S1BEG0;
	output S1BEG1;
	output S1BEG2;
	output S1BEG3;
	output S2BEG0;
	output S2BEG1;
	output S2BEG2;
	output S2BEG3;
	output S2BEG4;
	output S2BEG5;
	output S2BEG6;
	output S2BEG7;
	output S2BEGb0;
	output S2BEGb1;
	output S2BEGb2;
	output S2BEGb3;
	output S2BEGb4;
	output S2BEGb5;
	output S2BEGb6;
	output S2BEGb7;
	output S4BEG0;
	output S4BEG1;
	output S4BEG2;
	output S4BEG3;
	output S4BEG4;
	output S4BEG5;
	output S4BEG6;
	output S4BEG7;
	output S4BEG8;
	output S4BEG9;
	output S4BEG10;
	output S4BEG11;
	output S4BEG12;
	output S4BEG13;
	output S4BEG14;
	output S4BEG15;
	//global


	parameter GND0 = 1'b0;
	parameter GND = 1'b0;
	parameter VCC0 = 1'b1;
	parameter VCC = 1'b1;
	parameter VDD0 = 1'b1;
	parameter VDD = 1'b1;
	
	wire [1 -1:0]S1BEG0_input;
	wire [1 -1:0]S1BEG1_input;
	wire [1 -1:0]S1BEG2_input;
	wire [1 -1:0]S1BEG3_input;
	wire [1 -1:0]S2BEG0_input;
	wire [1 -1:0]S2BEG1_input;
	wire [1 -1:0]S2BEG2_input;
	wire [1 -1:0]S2BEG3_input;
	wire [1 -1:0]S2BEG4_input;
	wire [1 -1:0]S2BEG5_input;
	wire [1 -1:0]S2BEG6_input;
	wire [1 -1:0]S2BEG7_input;
	wire [1 -1:0]S2BEGb0_input;
	wire [1 -1:0]S2BEGb1_input;
	wire [1 -1:0]S2BEGb2_input;
	wire [1 -1:0]S2BEGb3_input;
	wire [1 -1:0]S2BEGb4_input;
	wire [1 -1:0]S2BEGb5_input;
	wire [1 -1:0]S2BEGb6_input;
	wire [1 -1:0]S2BEGb7_input;
	wire [1 -1:0]S4BEG0_input;
	wire [1 -1:0]S4BEG1_input;
	wire [1 -1:0]S4BEG2_input;
	wire [1 -1:0]S4BEG3_input;
	wire [1 -1:0]S4BEG4_input;
	wire [1 -1:0]S4BEG5_input;
	wire [1 -1:0]S4BEG6_input;
	wire [1 -1:0]S4BEG7_input;
	wire [1 -1:0]S4BEG8_input;
	wire [1 -1:0]S4BEG9_input;
	wire [1 -1:0]S4BEG10_input;
	wire [1 -1:0]S4BEG11_input;
	wire [1 -1:0]S4BEG12_input;
	wire [1 -1:0]S4BEG13_input;
	wire [1 -1:0]S4BEG14_input;
	wire [1 -1:0]S4BEG15_input;


// The configuration bits (if any) are just a long shift register

// This shift register is padded to an even number of flops/latches
// switch matrix multiplexer  S1BEG0 		MUX-1
	assign S1BEG0 = N1END3;
// switch matrix multiplexer  S1BEG1 		MUX-1
	assign S1BEG1 = N1END2;
// switch matrix multiplexer  S1BEG2 		MUX-1
	assign S1BEG2 = N1END1;
// switch matrix multiplexer  S1BEG3 		MUX-1
	assign S1BEG3 = N1END0;
// switch matrix multiplexer  S2BEG0 		MUX-1
	assign S2BEG0 = N2MID7;
// switch matrix multiplexer  S2BEG1 		MUX-1
	assign S2BEG1 = N2MID6;
// switch matrix multiplexer  S2BEG2 		MUX-1
	assign S2BEG2 = N2MID5;
// switch matrix multiplexer  S2BEG3 		MUX-1
	assign S2BEG3 = N2MID4;
// switch matrix multiplexer  S2BEG4 		MUX-1
	assign S2BEG4 = N2MID3;
// switch matrix multiplexer  S2BEG5 		MUX-1
	assign S2BEG5 = N2MID2;
// switch matrix multiplexer  S2BEG6 		MUX-1
	assign S2BEG6 = N2MID1;
// switch matrix multiplexer  S2BEG7 		MUX-1
	assign S2BEG7 = N2MID0;
// switch matrix multiplexer  S2BEGb0 		MUX-1
	assign S2BEGb0 = N2END7;
// switch matrix multiplexer  S2BEGb1 		MUX-1
	assign S2BEGb1 = N2END6;
// switch matrix multiplexer  S2BEGb2 		MUX-1
	assign S2BEGb2 = N2END5;
// switch matrix multiplexer  S2BEGb3 		MUX-1
	assign S2BEGb3 = N2END4;
// switch matrix multiplexer  S2BEGb4 		MUX-1
	assign S2BEGb4 = N2END3;
// switch matrix multiplexer  S2BEGb5 		MUX-1
	assign S2BEGb5 = N2END2;
// switch matrix multiplexer  S2BEGb6 		MUX-1
	assign S2BEGb6 = N2END1;
// switch matrix multiplexer  S2BEGb7 		MUX-1
	assign S2BEGb7 = N2END0;
// switch matrix multiplexer  S4BEG0 		MUX-1
	assign S4BEG0 = N4END15;
// switch matrix multiplexer  S4BEG1 		MUX-1
	assign S4BEG1 = N4END14;
// switch matrix multiplexer  S4BEG2 		MUX-1
	assign S4BEG2 = N4END13;
// switch matrix multiplexer  S4BEG3 		MUX-1
	assign S4BEG3 = N4END12;
// switch matrix multiplexer  S4BEG4 		MUX-1
	assign S4BEG4 = N4END11;
// switch matrix multiplexer  S4BEG5 		MUX-1
	assign S4BEG5 = N4END10;
// switch matrix multiplexer  S4BEG6 		MUX-1
	assign S4BEG6 = N4END9;
// switch matrix multiplexer  S4BEG7 		MUX-1
	assign S4BEG7 = N4END8;
// switch matrix multiplexer  S4BEG8 		MUX-1
	assign S4BEG8 = N4END7;
// switch matrix multiplexer  S4BEG9 		MUX-1
	assign S4BEG9 = N4END6;
// switch matrix multiplexer  S4BEG10 		MUX-1
	assign S4BEG10 = N4END5;
// switch matrix multiplexer  S4BEG11 		MUX-1
	assign S4BEG11 = N4END4;
// switch matrix multiplexer  S4BEG12 		MUX-1
	assign S4BEG12 = N4END3;
// switch matrix multiplexer  S4BEG13 		MUX-1
	assign S4BEG13 = N4END2;
// switch matrix multiplexer  S4BEG14 		MUX-1
	assign S4BEG14 = N4END1;
// switch matrix multiplexer  S4BEG15 		MUX-1
	assign S4BEG15 = N4END0;

endmodule
