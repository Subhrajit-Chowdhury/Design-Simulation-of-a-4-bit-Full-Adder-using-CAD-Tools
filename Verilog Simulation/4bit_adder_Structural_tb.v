module tb_adder4;
    reg  [3:0] A, B;
    reg        cin;
    wire [3:0] S;
    wire       cout;

    // Instantiate the adder4 module (DUT)
    adder4 uut (
        .A(A),
        .B(B),
        .cin(cin),
        .S(S),
        .cout(cout)
    );

    initial begin
        // Test vector 1
        A = 4'b0000; B = 4'b0000; cin = 0; #10;
        // Test vector 2
        A = 4'b0101; B = 4'b0011; cin = 0; #10;
        // Test vector 3
        A = 4'b1111; B = 4'b0001; cin = 1; #10;
        // Test vector 4
        A = 4'b1010; B = 4'b0101; cin = 0; #10;
        // Test vector 5
        A = 4'b1111; B = 4'b1111; cin = 1; #10;
        // Test vector 6
        A = 4'b1001; B = 4'b1100; cin = 1; #10;

        $stop;  // Stop simulation
    end

endmodule
