module top_module (
    input ring,
    input vibrate_mode,
    output motor,
    output ringer
);
assign motor = (vibrate_mode & ring) | (ring & ~ringer);
assign ringer = ring & ~motor;

endmodule