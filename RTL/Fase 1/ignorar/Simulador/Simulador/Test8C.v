`timescale 1ns/1ps

module test_8b;

reg  [7:0] A, B;
reg  C_in;
wire [7:0] S;
wire C_out;

bit8_c uut (
    .A(A),
    .B(B),
    .C_in(C_in),
    .S(S),
    .C_out(C_out)
);

initial begin
    $display("A     B     Cin |  C");

    A=0;   B=0;   C_in=0; #10;
    A=10;  B=20;  C_in=0; #10;
    A=100; B=50;  C_in=0; #10;
    A=200; B=100; C_in=1; #10;
    A=255; B=255; C_in=1; #10;

    $finish;
end

initial
    $monitor("%d + %d + %d = %d  (Cout=%d)", A, B, C_in, S, C_out);

endmodule

