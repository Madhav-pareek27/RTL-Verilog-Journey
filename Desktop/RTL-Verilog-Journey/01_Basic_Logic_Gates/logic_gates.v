module logic_gates (
    input  a,
    input  b,
    output and_out,
    output or_out,
    output not_a,
    output xor_out
);

assign and_out = a & b;
assign or_out  = a | b;
assign not_a   = ~a;
assign xor_out = a ^ b;

endmodule