# Section 1: Intro: Cheating our way past the transistor
## So about those transistors
### FPGA

FPGA(Field Programmable Gate Array)は購入後にユーザーが自由にデジタル回路の構成を設計・変更できる半導体チップ。
基本的な論理演算(AND, OR, NOTなど)が実行できるプログラマブルロジックブロック(CLB)が大量に配置されている。
それらを接続するプログラマブル配線が接続を制御することで、様々な回路を作ることができるという仕組み。


＜参考サイト＞
- https://msyksphinz.hatenablog.com/entry/2020/05/06/040000

## Emulation



### Verilog

VerilogはFPGAの回路を設計するために使用されるハードウェア記述言語(HDL)の１つ。ハードウェアの並列性や回路の階層構造も自由に記述することができる。
もう１つ主要なHDLとしてVHDLがあるが、Verilogの方が比較的シンプルな文法で、C言語に近い記述ができる。


### Verilator

Verilatorは、フリーでオープンソースのVerilogのシミュレーションシステム。このようなシミュレーションシステムはほとんどが有償らしい。
テストベンチ系のコードはサポートされていないらしい。
```
$ sudo apt insall verilator
```

DUTが記述された`counter_updown.cpp`とテストベンチが記述された`tb_counter_updown.cpp`で構成されるupとdownスイッチを持つ4bitカウンターのサンプルプログラム。

```
$ cd section1
$ make
$ ./obj_dir/Vcounter_updown
--------------------
Time counter = 0
Clock = 1
Counter Value = 15
--------------------
Time counter = 1
.
.
.
--------------------
Time counter = 99
Clock = 0
Counter Value = 2
Final Counter  Value = 2
```
