/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder_4 (
    input [5:0] alufn,
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] sum,
    output reg v,
    output reg z,
    output reg n
  );
  
  
  
  reg [15:0] sumt;
  
  reg [15:0] sum1;
  
  always @* begin
    
    case (alufn[0+1-:2])
      2'h0: begin
        sum1 = a - b;
        sumt = a + b;
      end
      2'h1: begin
        sum1 = a - b;
        sumt = a - b;
      end
      2'h2: begin
        sum1 = a - b;
        sumt = a * b;
      end
      default: begin
        sumt = a - b;
        sum1 = a - b;
      end
    endcase
    sum = sumt;
    n = sumt[15+0-:1];
    z = (~|sumt);
    v = (a[15+0-:1] & (b[15+0-:1] ^ alufn[0+0-:1]) & (~sumt[15+0-:1])) | ((~a[15+0-:1]) & (~(b[15+0-:1] ^ alufn[0+0-:1])) & sumt[15+0-:1]);
  end
endmodule
