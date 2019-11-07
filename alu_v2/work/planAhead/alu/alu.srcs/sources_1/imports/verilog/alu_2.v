/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_2 (
    input [5:0] alufn,
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] alu,
    output reg v,
    output reg z,
    output reg n
  );
  
  
  
  wire [16-1:0] M_shifter16_a_out;
  shifter_3 shifter16 (
    .alufn(alufn),
    .a(a),
    .b(b),
    .a_out(M_shifter16_a_out)
  );
  
  wire [16-1:0] M_adder16_sum;
  wire [1-1:0] M_adder16_v;
  wire [1-1:0] M_adder16_z;
  wire [1-1:0] M_adder16_n;
  adder_4 adder16 (
    .alufn(alufn),
    .a(a),
    .b(b),
    .sum(M_adder16_sum),
    .v(M_adder16_v),
    .z(M_adder16_z),
    .n(M_adder16_n)
  );
  
  wire [16-1:0] M_boole16_bool;
  boole_5 boole16 (
    .alufn(alufn),
    .a(a),
    .b(b),
    .bool(M_boole16_bool)
  );
  
  wire [16-1:0] M_compare16_cmp;
  compare_6 compare16 (
    .alufn(alufn),
    .z(M_adder16_z),
    .v(M_adder16_v),
    .n(M_adder16_n),
    .cmp(M_compare16_cmp)
  );
  
  always @* begin
    z = M_adder16_z;
    v = M_adder16_v;
    n = M_adder16_n;
    
    case (alufn[4+1-:2])
      2'h0: begin
        alu = M_adder16_sum;
      end
      2'h1: begin
        alu = M_boole16_bool;
      end
      2'h2: begin
        alu = M_shifter16_a_out;
      end
      2'h3: begin
        alu = M_compare16_cmp;
      end
      default: begin
        alu = 16'h0000;
      end
    endcase
  end
endmodule
