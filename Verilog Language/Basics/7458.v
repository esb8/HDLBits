module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	
    wire efd, abc, ab, cd;
    assign efd = p1f && p1d && p1e;
    assign abc = p1a && p1b && p1c;
    assign p1y = efd || abc;
    
    assign ab = p2a && p2b;
    assign cd = p2c && p2d;
    assign p2y = cd || ab;

endmodule
