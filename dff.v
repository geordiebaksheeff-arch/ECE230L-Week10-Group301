module dff (
    input clock,
    input D,
    output reg Q,
    output notQ
);
    initial begin
        Q <= 0;
    end
    always @(posedge clock) begin
        Q <= D;
        
    end
    assign notQ = ~Q;

endmodule