module tb_cla_4bit;
    reg  [3:0] A, B;
    reg        Cin;
    wire [3:0] S;
    wire       Cout;

    cla_4bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    initial begin
        A = 4'h9; B = 4'hc; Cin = 0; #10;  // S = 0x5, Cout=1
        A = 4'h3; B = 4'h3; Cin = 0; #10;  // S = 0x6, Cout=0
        A = 4'h5; B = 4'h6; Cin = 1; #10;  // S = 0xc, Cout=0
        A = 4'hf; B = 4'hf; Cin = 0; #10;  // S = 0xe, Cout=1
        A = 4'h9; B = 4'ha; Cin = 1; #10;  // S = 0x4, Cout=1
        $stop;
    end
endmodule
