module top_module (input x, input y, output z);
    wire za1, za2, zb1, zb2;
    modA instance1 (x, y, za1);
    modA instance2 (x, y, za2);
    modB instance3 (x, y, zb1);
    modB instance4 (x, y, zb2);

    assign z = ((za1 | zb1) ^ (za2 & zb2));
endmodule

module modA (
    input x,
    input y,
    output z
);
assign z = (x^y) & x;

endmodule
module modB (
    input x,
    input y,
    output z
);
assign z = (x & y) | (~x & ~y);
endmodule