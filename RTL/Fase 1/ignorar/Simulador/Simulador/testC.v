`timescale 1ns/1ps

module tb_4b;

reg  [3:0] A, B;
reg  c_in;
wire [4:0] S;

bit4_c uut (
    .A(A),
    .B(B),
    .c_in(c_in),
    .S(S)
);

initial begin
    $display("A  B  Cin  |  S");

    A=0;  B=0;  c_in=0;  #10;
    A=3;  B=2;  c_in=0;  #10;
    A=7;  B=5;  c_in=0;  #10;
    A=8;  B=7;  c_in=1;  #10;
    A=15; B=15; c_in=1;  #10;

    $finish;
end

initial begin
    $monitor("%d + %d + %d = %d", A, B, c_in, S);
end

endmodule

