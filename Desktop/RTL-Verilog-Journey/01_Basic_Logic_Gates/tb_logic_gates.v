`timescale 1ns/1ps

module tb_logic_gates;

reg a;
reg b;

wire and_out;
wire or_out;
wire not_a;
wire xor_out;

logic_gates uut (
    .a(a),
    .b(b),
    .and_out(and_out),
    .or_out(or_out),
    .not_a(not_a),
    .xor_out(xor_out)
);

initial begin

    $display("A B | AND OR NOT_A XOR");
    $display("----------------------");

    a = 0; b = 0;
    #10;
    $display("%b %b |  %b   %b    %b    %b",
             a, b, and_out, or_out, not_a, xor_out);

    a = 0; b = 1;
    #10;
    $display("%b %b |  %b   %b    %b    %b",
             a, b, and_out, or_out, not_a, xor_out);

    a = 1; b = 0;
    #10;
    $display("%b %b |  %b   %b    %b    %b",
             a, b, and_out, or_out, not_a, xor_out);

    a = 1; b = 1;
    #10;
    $display("%b %b |  %b   %b    %b    %b",
             a, b, and_out, or_out, not_a, xor_out);

    $finish;

end

endmodule