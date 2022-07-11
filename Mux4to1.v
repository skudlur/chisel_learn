module Mux4to1(
  input        clock,
  input        reset,
  input  [1:0] io_a,
  input  [1:0] io_b,
  input  [1:0] io_c,
  input  [1:0] io_d,
  input        io_sel1,
  input        io_sel2,
  output [1:0] io_out
);
  wire [1:0] _GEN_0 = io_sel1 ? io_b : 2'h0; // @[Mux4to1.scala 20:19 26:10]
  wire [1:0] _GEN_1 = io_sel1 ? io_d : 2'h0; // @[Mux4to1.scala 20:19 27:10]
  wire [1:0] y1 = ~io_sel1 ? io_a : _GEN_0; // @[Mux4to1.scala 20:19 22:10]
  wire [1:0] y2 = ~io_sel1 ? io_c : _GEN_1; // @[Mux4to1.scala 20:19 23:10]
  wire [1:0] _GEN_4 = io_sel2 ? y2 : 2'h1; // @[Mux4to1.scala 18:10 31:19 33:22]
  assign io_out = ~io_sel2 ? y1 : _GEN_4; // @[Mux4to1.scala 31:19 32:22]
endmodule
