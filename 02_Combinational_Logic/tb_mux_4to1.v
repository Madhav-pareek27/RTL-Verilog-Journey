module tb_mux_4to1;

    reg I0;
    reg I1;
    reg I2;
    reg I3;
    reg S0;
    reg S1;
    wire Y;

    mux_4to1 uut (
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .S0(S0),
        .S1(S1),
        .Y(Y)
    );

    initial begin

        $dumpfile("mux_4to1.vcd");
        $dumpvars(0, tb_mux_4to1);

        $monitor("I0=%b I1=%b I2=%b I3=%b S1=%b S0=%b | Y=%b",
                 I0, I1, I2, I3, S1, S0, Y);

        // S1S0 = 00 → Y should follow I0
        I0 = 0; I1 = 0; I2 = 0; I3 = 0;
        S1 = 0; S0 = 0;
        #10;

        I0 = 1; I1 = 0; I2 = 0; I3 = 0;
        S1 = 0; S0 = 0;
        #10;

        // S1S0 = 01 → Y should follow I1
        I0 = 0; I1 = 0; I2 = 0; I3 = 0;
        S1 = 0; S0 = 1;
        #10;

        I0 = 0; I1 = 1; I2 = 0; I3 = 0;
        S1 = 0; S0 = 1;
        #10;

        // S1S0 = 10 → Y should follow I2
        I0 = 0; I1 = 0; I2 = 0; I3 = 0;
        S1 = 1; S0 = 0;
        #10;

        I0 = 0; I1 = 0; I2 = 1; I3 = 0;
        S1 = 1; S0 = 0;
        #10;

        // S1S0 = 11 → Y should follow I3
        I0 = 0; I1 = 0; I2 = 0; I3 = 0;
        S1 = 1; S0 = 1;
        #10;

        I0 = 0; I1 = 0; I2 = 0; I3 = 1;
        S1 = 1; S0 = 1;
        #10;

        // Additional combinations
        I0 = 1; I1 = 1; I2 = 1; I3 = 1;
        S1 = 0; S0 = 0;
        #10;

        S1 = 0; S0 = 1;
        #10;

        S1 = 1; S0 = 0;
        #10;

        S1 = 1; S0 = 1;
        #10;

        $finish;

    end

endmodule