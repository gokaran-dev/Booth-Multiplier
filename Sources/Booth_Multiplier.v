`timescale 1ns / 1ps

module Booth_Multiplier(
       input signed [7:0]multi, //"signed" tells the synthesizer that this will be used for signed operations
       input signed [7:0]multiplier,
       input rst,
       input clk,
       output reg done,     //signal which goes high when the multiplication is done
       output reg[15:0]product
    );
       
       reg signed [16:0] q; 
       reg signed [7:0] accumulator;
       reg [3:0] count=4'b1000; //This will be 9 counts from 0 to 8. count 0 will be used for setup.
       initial done=0;
       
       always @(posedge clk)
       begin
            if(rst==1)
                begin
                   count<=8;
                   accumulator<=8'b0;
                   q<=$signed({accumulator,multiplier,1'b0}); // accumulator(8bit)|multiplier(8bit)|0
                   product<=0;
                   done<=0;
                end
                
            else if(count>0)
                begin
                    case(q[1:0])
                            2'b10: //if q[1] and q[0] are 1 and 0 ---> subtraction                     
                               q[16:9]=q[16:9]-multi;
              
                             2'b01: //if q[1] and q[0] are  and 1 ---> addition                      
                               q[16:9]=q[16:9]+multi;                                                                                                   
                     endcase 
                     //ARS will be perfomed for above cases too.
                    //$signed tells the tool that this is a signed operation. 
                    
                     q<=$signed(q)>>>1;  //if q[1] and q[0] is 00 or 11 --->perform ARS .                 
                     count<=count-1;                           
                end
             
             else
                begin
                  product<=q[16:1];  
                  done<=1; 
                end  
       end
    
endmodule