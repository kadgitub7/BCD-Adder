`timescale 1ns / 1ps

module fourBitAdder(
    input[3:0] A,B,
    input Cin,
    output S0,S1,S2,S3,
    output Co
    );
    
    wire c0,c1,c2,a3,a2,a1,a0,b3,b2,b1,b0;
    
    assign {a3,a2,a1,a0} = A;
    assign {b3,b2,b1,b0} = B;
    
    fullAdder f1(a0,b0,Cin,S0,c0);
    fullAdder f2(a1,b1,c0,S1,c1);
    fullAdder f3(a2,b2,c1,S2,c2);
    fullAdder f4(a3,b3,c2,S3,Co);
    
endmodule