module tb_half_adder;

    reg A;
    reg B;
    wire Sum;
    wire Carry;

    half_adder uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Carry(Carry)
    );

    initial begin

        $dumpfile("half_adder.vcd");
        $dumpvars(0, tb_half_adder);

        $monitor("A=%b B=%b | Sum=%b Carry=%b", A, B, Sum, Carry);

        A = 0; B = 0;
        #10;

        A = 0; B = 1;
        #10;

        A = 1; B = 0;
        #10;

        A = 1; B = 1;
        #10;

        $finish;

    end

endmodule