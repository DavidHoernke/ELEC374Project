module mul_32bit(input wire [31:0] a,input wire [31:0] b,output reg [63:0] p );

wire [31:0] recoded_b;

// recoding the multiplier using bit-pair
assign recoded_b[0] = b[0];

for (int i = 1; i < WIDTH; i = i + 2) begin

    assign recoded_b[i+1] = b[i] ^ b[i+1];
    assign recoded_b[i] = b[i];
end 

always @* begin
    p = { {(64){1'b0}} };
end
 
// Iterate over the bits of recoded_b
for (int i = 0; i < 32; i++) begin
    if (recoded_b[i] == 1'b0) begin
        p = p << 1;
    end else if (recoded_b[i] == 1'b1) begin
        p = p + a;
    end else if (i < WIDTH-1 && recoded_b[i+1] == 1'b1) begin
        p = p - a;
        p = p << 1;
        p = p + a;
    end
end   


endmodule