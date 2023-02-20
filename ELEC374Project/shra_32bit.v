module shiftRight(
    input [31:0] data_in,
    input [31:0] shift_num,
    output [31:0] data_out
);

    wire[0] temp;
    assign temp = data_in[31]; //used assign because its a wire
    assign data_out = temp | (data_in >>  shift_num); //combine the sign bit with the rest of the shift
    
endmodule