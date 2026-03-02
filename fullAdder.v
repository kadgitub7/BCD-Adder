`timescale 1ns / 1ps

module fullAdder(
    input A,
    input B,
    input Cin,
    output S,
    output Co
    );
    
    assign S = A^B^Cin;
    assign Co = A&B | B&Cin | A&Cin;
endmodule