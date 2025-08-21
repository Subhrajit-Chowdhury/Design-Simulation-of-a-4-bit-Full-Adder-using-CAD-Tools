`timescale 1ns/1ps

module tb_adder4;

    // Inputs to DUT
    reg  [3:0] A, B;
    reg        cin;

    // Outputs of DUT
    wire [3:0] S;
    wire       cout;

    // Instantiate DUT
    adder4 uut (
        .S(S),
        .cout(cout),
        .A(A),
        .B(B),
        .cin(cin)
    );

    initial begin
        // Dump VCD for GTKWave
        $dumpfile("adder4_tb.vcd");
        $dumpvars(0, tb_adder4);

        // Apply test cases
        A = 4'b0000; B = 4'b0000; cin = 0; #10;
        A = 4'b0001; B = 4'b0010; cin = 0; #10;
        A = 4'b0101; B = 4'b0011; cin = 1; #10;
        A = 4'b1111; B = 4'b0001; cin = 0; #10;
        A = 4'b1111; B = 4'b1111; cin = 1; #10;
        A = 4'b1010; B = 4'b0101; cin = 0; #10;
        A = 4'b1001; B = 4'b0110; cin = 1; #10;

        // End simulation
        #5 $finish;
    end

endmodule
