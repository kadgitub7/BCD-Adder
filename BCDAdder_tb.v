`timescale 1ns / 1ps

module BCDAdder_tb();
    reg[3:0] A,B;
    wire S3,S2,S1,S0;
    wire S_3,S_2,S_1,S_0,C_int, OR_Result;
    wire[3:0] newB;
    wire Co;
    
    BCDAdder utt(A,B,S3,S2,S1,S0);
    
    integer k,j;
    
    initial begin
        for(k=0;k<10;k=k+1)begin
            for(j=0;j<10;j=j+1)begin
                A = k;
                B = j;
                #10 $display("A = %b, B = %b | C = %b, BCD_Sum = %b",A,B,Co,{S3,S2,S1,S0});
            end 
        end
    end
endmodule
