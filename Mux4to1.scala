import chisel3._
import chisel3.util._

class Mux4to1 extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(2.W))
    val b = Input(UInt(2.W))
    val c = Input(UInt(2.W))
    val d = Input(UInt(2.W))
    val sel1 = Input(UInt(1.W))
    val sel2 = Input(UInt(1.W))
    val out = Output(UInt(2.W))
  })

  val y1 = WireDefault(0.U)
  val y2 = WireDefault(0.U)

  io.out := 1.U
  
  switch(io.sel1) {
    is(0.U) { 
      y1 := io.a
      y2 := io.c
    }
    is(1.U) {
      y1 := io.b
      y2 := io.d
    }
  }

  switch(io.sel2) {
    is(0.U) { io.out := y1 }
    is(1.U) { io.out := y2 }
  }
}

object Mux4to1HW extends App {
  emitVerilog(new Mux4to1(), Array("--target-dir", "generated"))
}
