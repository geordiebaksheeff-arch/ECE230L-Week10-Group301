module tff (
    input clock,
    input T,
    output Q,
    output notQ
);
wire dffQOut;
wire connect;
assign connect = T ^ dffQOut;

dff dTFlipFlop(
    .clock(clock),
    .D(connect),
    .Q(dffQOut),
    .notQ(notQ)
);
assign Q = dffQOut;
    
endmodule
