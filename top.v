// Implement top level module
module top (
    input[7:0] sw,
    output[5:0] led
);

wire stair_light;

light lightInst(
    .downstairs (sw[0]),
    .upstairs (sw[1]),
    .stair_light (stair_light)
    );
assign led[0] = stair_light;

wire y1, c_single;
adder h_Adder(
    .A(sw[2]),
    .B(sw[3]),
    .Y(y1),
    .carry(c_single)
);
    
assign led[1] = y1;
assign led[2] = c_single;

wire sum0, sum1, c0, cl;

full_adder full_adder_inst(
    .A(sw[4]),
    .B(sw[6]),
    .Cin(0),
    .Y(sum0),
    .Cout(c0)
);

full_adder full_adder_inst2(
    .A(sw[5]),
    .B(sw[7]),
    .Cin(c0),
    .Y(sum1),
    .Cout(c1)
);

assign led[3] = sum0;
assign led[4] = sum1;
assign led[5] = c1;

endmodule