module shra(
    input [31:0] data_in,
    input [31:0] shift_num,
    output [31:0] data_out
);
    
    wire[0] temp;
    always @(*) begin
        assign temp = data_in[31]; //save sign bit
        assign data_out = (data_in >>  shift_num);
        for(int i = 0; i < shift_num; ; i++)
            begin
                data_out[31-i] = temp;
            end 
    end 
endmodule