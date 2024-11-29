#include <iostream>
#include <verilated.h>
#include "Vcounter_updown.h"

int time_counter = 0;

int main(int argc, char** argv) {

  Verilated::commandArgs(argc, argv);

  Vcounter_updown *dut = new Vcounter_updown();
  
  dut->reset_n = 0;
  dut->clk = 0;
  dut->up = 0;
  dut->down = 0;

  dut->reset_n = 1;
  dut->eval();

  while (time_counter < 3) {
    dut->clk = !dut->clk;
    dut->up = 1;
    dut->down = 0;
    dut->eval();
    // デバッグ出力
    std::cout << "--------------------" << std::endl;
    std::cout << "Time counter = " << time_counter << std::endl;
    std::cout << "Clock = " << static_cast<int>(dut->clk) << std::endl;  // (int)でキャストして確実に表示
    std::cout << "Counter Value = " << static_cast<int>(dut->cnt) << std::endl;
    time_counter++; 
  }
  
  std::cout << "Final Counter  Value = " << static_cast<int>(dut->cnt) << std::endl;

  dut->final();
}