module jkff (
    input clock,
    input J,
    input K,
    output Q,
    output notQ
);

wire jConnect;
wire kConnect;
wire dConnect;
wire dffQOut;
wire dffnotQ;

assign jConnect = J & dffnotQ;
assign kConnect = dffQOut & ~K;
assign dConnect = jConnect | kConnect;

dff dJKFFFlipFlop(
    .clock(clock),
    .D(dConnect),
    .Q(dffQOut),
    .notQ(dffnotQ)
);
assign Q = dffQOut;
assign notQ = dffnotQ;

    
endmodule