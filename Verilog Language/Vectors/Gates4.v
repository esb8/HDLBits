module top_module( 
    input [3:0] in,
    output [3:0] out_and,
    output [3:0] out_or,
    output [3:0] out_xor
);
    assign out_and = in[0] && in[1] && in[2] && in[3];
    assign out_or = in[0] | in[1] | in[2] | in[3];
    assign out_xor = in[0] ^ in[1] ^ in[2] ^ in[3];

endmodule 
// This module takes a 4-bit input and produces three outputs:
