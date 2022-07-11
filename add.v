module add(
  input        clock,
  input        reset,
  input  [3:0] io_a,
  input  [3:0] io_b,
  input        io_sel,
  output [3:0] io_out
);
  wire [3:0] _res_T_1 = io_a + io_b; // @[add.scala 14:30]
  wire [3:0] _res_T_3 = io_a - io_b; // @[add.scala 15:30]
  wire [3:0] _GEN_0 = io_sel ? _res_T_3 : 4'h0; // @[add.scala 13:18 15:22]
  assign io_out = ~io_sel ? _res_T_1 : _GEN_0; // @[add.scala 13:18 14:22]
endmodule
