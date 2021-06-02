module cus_tg_mux41_buf (A0, A1, A2, A3, S0, S0N, S1, S1N, X);
	input A0;
	input A1;
	input A2;
	input A3;
	input S0;
	input S0N;
	input S1;
	input S1N;
	output X; 
	reg X;
	wire [1:0] SEL;

	assign SEL = {S1,S0};
	always @(*) 
	begin
		case(SEL)
			2'b00:X = A0;
			2'b01:X = A1;
			2'b10:X = A2;
			2'b11:X = A3;
			default:X <= 0;
		endcase
	end
endmodule
