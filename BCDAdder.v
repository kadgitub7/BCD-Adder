`timescale 1ns / 1ps

module BCDAdder_tb(
    input[3:0] A,B,
    output S3,S2,S1,S0
    );
    
    wire S_3,S_2,S_1,S_0,C_int, OR_Result;
    reg[3:0] newB;
    reg Co;
    
    fourBitAdder f1(A,B,1'b0,S_0,S_1,S_2,S_3,C_int);
    
    assign OR_Result = C_int | S_3&S_2 | S_3&S_1;
    assign newB = {1'b0,OR_Result,OR_Result,1'b0}
    
    fourBitAdder f2({S_3,S_2,S_1,S_0},newB,1'b0,S0,S1,S2,S3,Co);
    
endmodule
