`timescale 1ns/1ps

module tb_adder4;

    // Inputs
    reg [3:0] A, B;
    reg       cin;

    // Outputs
    wire [3:0] S;
    wire       cout;

    // Instantiate the DUT
    adder4 uut (
        .S(S),
        .cout(cout),
        .A(A),
        .B(B),
        .cin(cin)
    );

    initial begin
        // Waveform dump setup
        $dumpfile("adder4_tb.vcd");
        $dumpvars(0, tb_adder4);

        // Monitor outputs on console
        $monitor("Time %0t: A=%b B=%b cin=%b => S=%b cout=%b", $time, A, B, cin, S, cout);

        // Apply test vectors with sufficient delay
        A = 4'b0000; B = 4'b0000; cin = 0; #20;
        A = 4'b0011; B = 4'b0101; cin = 0; #20;
        A = 4'b1110; B = 4'b0001; cin = 1; #20;
        A = 4'b1010; B = 4'b1010; cin = 0; #20;
        A = 4'b1111; B = 4'b1111; cin = 1; #20;

        // End simulation after some time
        #10 $finish;
    end

endmodule
