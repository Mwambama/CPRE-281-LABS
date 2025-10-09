module sixteen_bit_register (
    input wire clk,
    input wire [15:0] data,
    output reg [15:0] op
);

always @(posedge clk)
begin
    op <= data;
end

endmodule