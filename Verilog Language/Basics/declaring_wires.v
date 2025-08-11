module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire AND1, AND2;
    assign AND1 = a && b;
    assign AND2 = c && d;
    assign out = AND1 || AND2;
    assign out_n = !out;
    

endmodule