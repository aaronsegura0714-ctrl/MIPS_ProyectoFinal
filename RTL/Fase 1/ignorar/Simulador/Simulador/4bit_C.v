module bit4_c(
    input  [3:0] A,
    input  [3:0] B,
    input c_in,
    output [4:0] S
);

assign S = A + B + c_in;

endmodule

