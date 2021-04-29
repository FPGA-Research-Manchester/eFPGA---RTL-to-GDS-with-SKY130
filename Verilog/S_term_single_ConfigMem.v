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

module S_term_single_ConfigMem (FrameData, FrameStrobe, ConfigBits);
	parameter MaxFramesPerCol = 20;
	parameter FrameBitsPerRow = 32;
	parameter NoConfigBits = 0;
	input [FrameBitsPerRow-1:0] FrameData;
	input [MaxFramesPerCol-1:0] FrameStrobe;
	output [NoConfigBits-1:0] ConfigBits;

//instantiate frame latches
endmodule
