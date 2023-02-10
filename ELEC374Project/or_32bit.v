module or_32bit(
    input wire [31:0] Ra,
    input wire [31:0] Rb,
	output wire [31:0] Rz
	);

    genvar i;
    generate
        for(i=0;i<32;i=i+1) begin : loop
        // check with TA
            if (Ra[i]+Rb[i]>0)
                Rz[i]=1;
            else
                Rz[i]=0;
        end
    endgenerate
endmodule