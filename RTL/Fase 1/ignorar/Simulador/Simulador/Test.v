module tb_bit4;

reg  [3:0] A;
reg  [3:0] B;
reg        i_c;
wire [3:0] C;

bit4 uut (
    .A(A),
    .B(B),
    .i_c(i_c),
    .C(C)
);

initial begin
    $display("A     B     Cin |  C");
    $monitor("%d  %d   %d  |  %d", A, B, i_c, C);

    A=4'b0000; B=4'b0000; i_c=0; #10;
    A=4'b0011; B=4'b0101; i_c=0; #10;
    A=4'b1111; B=4'b0001; i_c=0; #10;
    A=4'b1010; B=4'b0101; i_c=1; #10;
    A=4'b1111; B=4'b1111; i_c=1; #10;

    $finish;
end

endmodule

