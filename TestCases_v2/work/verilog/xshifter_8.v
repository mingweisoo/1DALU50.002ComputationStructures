/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shifter_8 (
    input [5:0] alufn,
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] a_out
  );
  
  
  
  reg temp;
  
  always @* begin
    
    case (alufn[0+1-:2])
      2'h0: begin
        a_out = a << b[0+3-:4];
      end
      2'h1: begin
        a_out = a >> b[0+3-:4];
      end
      2'h3: begin
        a_out = $signed(a) >>> b[0+3-:4];
      end
      2'h2: begin
        a_out = (a >> b[0+3-:4]) | (a << (5'h10 - {1'h0, b[0+3-:4]}));
      end
      default: begin
        a_out = a;
      end
    endcase
  end
endmodule
