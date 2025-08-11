module top_module(
    input [1023:0] in,
    input [7:0] sel,
    output out
);
// [start +: width]
assign out = (in >> (sel*4)) & 4'hF;
endmodule