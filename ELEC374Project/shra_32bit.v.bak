module shiftRight(
    input [31:0] data_in,
    input [31:0] shift_num,
    output [31:0] data_out
);
    reg [0] temp; //idk if this works 
    temp = data_in[31];
    assign data_out = temp | (data_in >>  shift_num); //combine the sign bit with the rest of the shift
    
endmodule