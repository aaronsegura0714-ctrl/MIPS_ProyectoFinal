module HA (
input A,
input B,
output S,
output C
);

assign S = A ^ B;
assign C = A & B;

endmodule
