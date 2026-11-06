module tff (
    input clock,
    input T,
    output Q,
    output notQ
);

/*
one of the lectures, chapter 4 l4, showed how a T flip flop can be simplifed.
Instead of using a JK flip flop, just XOR the T with the Q output.
*/
wire dffQOut;
wire connect;
assign connect = T ^ dffQOut;

dff dTFlipFlop(
    .clock(clock),
    .D(connect),
    .Q(dffQOut),
    .notQ(notQ)
);
//this was needed as it runs a wire between the dff output and the output of this module.
assign Q = dffQOut;
    
endmodule
