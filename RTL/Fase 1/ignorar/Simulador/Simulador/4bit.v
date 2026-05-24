 module bit4(
    input  [3:0] A, 
    input  [3:0] B,
    input i_c,
    output [3:0] C
);

wire c1, c2, c3, c4;

FA f1 (.A(A[0]), .B(B[0]), .i_c(i_c), .S(C[0]), .o_c(c1));
FA f2 (.A(A[1]), .B(B[1]), .i_c(c1),  .S(C[1]), .o_c(c2));
FA f3 (.A(A[2]), .B(B[2]), .i_c(c2),  .S(C[2]), .o_c(c3));
FA f4 (.A(A[3]), .B(B[3]), .i_c(c3),  .S(C[3]), .o_c(c4));

endmodule
