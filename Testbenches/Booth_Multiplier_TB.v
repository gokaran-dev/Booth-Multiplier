`timescale 1ns / 1ps

module Booth_Multiplier_TB();
    reg signed [7:0] multi;
    reg signed [7:0] multiplier;
    reg rst;
    reg clk;
    wire done;
    wire signed [15:0] product;
    
    
        Booth_Multiplier UUT(
            .multi(multi),
            .multiplier(multiplier),
            .clk(clk),
            .rst(rst),
            .done(done),
            .product(product)
        );
    
    initial
       begin
        multi=8'b00000000;
        multiplier=8'b00000000;
        rst=1; 
        clk=0;
       end
       
    always
        #5 clk=~clk;
    
    initial 
        begin
            #100
            multi=8'b11001011; multiplier=8'b00001110;
            #60
            rst=0;
            #100
            rst=1; multi=8'b00001011; multiplier=8'b00001110;
            #60
            rst=0;
            #100;
            rst=1; multi=8'b11101100; multiplier=8'b11001100;
            #60
            rst=0;
            #100;
            rst=1; multi=8'hff; multiplier=8'hfe;
            #60
            rst=0;
            #100;
            $finish;
        end

endmodule
