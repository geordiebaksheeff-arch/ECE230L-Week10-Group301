module top (
    input [3:0]sw,
    input btnC,
    output [5:0]led
);

dff dFlipFlop(
    .clock(btnC),
    .D(sw[0]),
    .Q(led[0]),
    .notQ(led[1])
);

jkff jkFlipFlop(
    .clock(btnC),
    .J(sw[1]),
    .K(sw[2]),
    .Q(led[2]),
    .notQ(led[3])
);

tff tFlipFlop(
    .clock(btnC),
    .T(sw[3]),
    .Q(led[4]),
    .notQ(led[5])
);

endmodule