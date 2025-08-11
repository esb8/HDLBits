module top_module (
    input mode,
    input too_cold,
    input too_hot,
    input fan_on,
    output heater,
    output aircon,
    output fan
);
assign heater = too_cold & mode;
assign aircon = ~mode & too_hot;
assign fan = aircon | heater |fan_on;
endmodule