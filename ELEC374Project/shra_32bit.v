module shra(
    input [31:0] data_in,
    input [31:0] shift_num,
    output [31:0] data_out
);
    integer i;
    reg temp;
    always @(*) begin
        temp = data_in[31]; //save sign bit
        data_out = (data_in >> shift_num);
        for(i=0; i <= shift_num+1; i=i+1) begin //fixed syntax
            //data_out[31-i] = temp;
        end 
    end 
endmodule
