module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
// Sum of products
wire o1, o2, o3, o4;
assign o1 = ~x3 & x2 & ~x1;
assign o2 = ~x3 & x2 & x1;
assign o3 = x3 & ~x2 & x1;
assign o4 = x3 & x2 & x1;
assign f = o3 | o2 | o1 | o4;

endmodule