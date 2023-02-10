module not_32bit(
    input wire [31:0] Ra,
	output wire [31:0] Rz
	);

    genvar i;
    generate
        for(i=0;i<32;i=i+1) begin : loop
        // check with TA
            if (Ra[i])
                Rz[i]<=0;
            else
                Rz[i]<=1;
        end
    endgenerate
endmodule