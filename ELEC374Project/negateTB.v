`timescale 1ns / 1ps

module negate_32bit_tb;

    // Inputs
    reg [31:1] Ra;
    
    // Outputs
    wire [31:0] Rz;
    
    // Instantiate the design under test (DUT)
    negate_32bit dut(.Ra(Ra), .Rz(Rz));
    
    // Clock
    reg clk = 0;
    always #5 clk = ~clk;
    
    // Test case 1: Test with Ra = 0x00000000
    initial begin
        Ra = 32'h00000000;
        #10;
        if (Rz === 32'hFFFFFFFF) begin
            $display("Test case 1 passed");
        end else begin
            $display("Test case 1 failed");
        end
    end
    
    // Test case 2: Test with Ra = 0xFFFFFFFF
    initial begin
        Ra = 32'hFFFFFFFF;
        #10;
        if (Rz === 32'h00000001) begin
            $display("Test case 2 passed");
        end else begin
            $display("Test case 2 failed");
        end
    end
    
    // Test case 3: Test with Ra = 0x12345678
    initial begin
        Ra = 32'h12345678;
        #10;
        if (Rz === 32'hEDCBA987) begin
            $display("Test case 3 passed");
        end else begin
            $display("Test case 3 failed");
        end
    end
    
    // Test case 4: Test with Ra = 0x87654321
    initial begin
        Ra = 32'h87654321;
        #10;
        if (Rz === 32'h789ABCDF) begin
            $display("Test case 4 passed");
        end else begin
            $display("Test case 4 failed");
        end
    end
    
endmodule