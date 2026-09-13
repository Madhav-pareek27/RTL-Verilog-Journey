module tb_mux_2to1;

    reg I0;
    reg I1;
    reg S;
    wire Y;

    mux_2to1 uut (
        .I0(I0),
        .I1(I1),
        .S(S),
        .Y(Y)
    );

    initial begin

        $dumpfile("mux_2to1.vcd");
        $dumpvars(0, tb_mux_2to1);

        $monitor("I0=%b I1=%b S=%b | Y=%b", I0, I1, S, Y);

        I0 = 0; I1 = 0; S = 0;
        #10;

        I0 = 0; I1 = 1; S = 0;
        #10;

        I0 = 1; I1 = 0; S = 0;
        #10;

        I0 = 1; I1 = 1; S = 0;
        #10;

        I0 = 0; I1 = 0; S = 1;
        #10;

        I0 = 0; I1 = 1; S = 1;
        #10;

        I0 = 1; I1 = 0; S = 1;
        #10;

        I0 = 1; I1 = 1; S = 1;
        #10;

        $finish;

    end

endmodule