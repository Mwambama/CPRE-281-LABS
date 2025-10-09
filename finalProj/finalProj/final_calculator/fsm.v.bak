module FSM(
   input wire FSM_1,
   input wire FSM_0,
   output reg [1:0] op,
   output reg output_fsm
);

   parameter s0 = 2'b00;
   parameter s1 = 2'b01;
   parameter s2 = 2'b10;

   reg [1:0] state, nextstate;

   always @(posedge FSM_0 or posedge FSM_1) begin
      case({FSM_1, FSM_0})
         2'b00: state <= s0;
         2'b01: state <= s1;
         2'b10: state <= s2;
         default: state <= s0;
      endcase;
   end

   always @* begin
      case(state)
         s0: begin
            op = 2'b00;
            output_fsm = 1'b0;
         end
         s1: begin
            op = 2'b01;
            output_fsm = 1'b0;
         end
         s2: begin
            op = 2'b10;
            output_fsm = 1'b1;
         end
         default: begin
            op = 2'b00;
            output_fsm = 1'b0;
         end
      endcase;
   end

endmodule