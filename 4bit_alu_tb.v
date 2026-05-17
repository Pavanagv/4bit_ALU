`timescale 1ns / 1ps

module alu_4bit_tb;

reg  [3:0] A;
reg  [3:0] B;
reg  [2:0] SEL;
wire [3:0] Y;

alu_4bit uut (
    .A(A),
    .B(B),
    .SEL(SEL),
    .Y(Y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, alu_4bit_tb);
end

initial begin

    A = 4'b0101;
    B = 4'b0011;

    SEL = 3'b000; #10;
    SEL = 3'b001; #10;
    SEL = 3'b010; #10;
    SEL = 3'b011; #10;
    SEL = 3'b100; #10;
    SEL = 3'b101; #10;
    SEL = 3'b110; #10;
    SEL = 3'b111; #10;

    $finish;
end

initial begin
    $monitor("Time=%0t A=%b B=%b SEL=%b Y=%b",
              $time, A, B, SEL, Y);
end

endmodule