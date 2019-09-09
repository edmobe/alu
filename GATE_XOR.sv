module GATE_XOR #(parameter Nbits=1)(
	input [Nbits-1:0] A, 
	input [Nbits-1:0] B, 
	output [Nbits-1:0] OUT);
	
	genvar i;
	
	generate
		for (i=0; i < Nbits; i=i+1) begin : generate_of_xor
			xor (OUT[i],A[i],B[i]);
		end
	endgenerate
	
endmodule: GATE_XOR