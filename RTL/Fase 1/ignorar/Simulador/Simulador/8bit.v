module bit8 (
    input  [7:0] A,
    input  [7:0] B,
    input c_in,
    output [8:0] S
);

wire c1;

bit4_c b1( .A(A[3:0]), .B(B[3:0]), .c_in(c_in), .S({c1, S[3:0]}));

bit4_c b2(.A(A[7:4]), .B(B[7:4]), .c_in(c1), .S(S[8:4]));

endmodule
