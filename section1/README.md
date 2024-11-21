# Section 1: Intro: Cheating our way past the transistor

## FPGA

FPGA(Field Programmable Gate Array)は購入後にユーザーが自由にデジタル回路の構成を設計・変更できる半導体チップ。
基本的な論理演算(AND, OR, NOTなど)が実行できるプログラマブルロジックブロック(CLB)が大量に配置されている。
それらを接続するプログラマブル配線が接続を制御することで、様々な回路を作ることができるという仕組み。

## Verilog

VerilogはFPGAの回路を設計するために使用されるハードウェア記述言語(HDL)の１つ。ハードウェアの並列性や回路の階層構造も自由に記述することができる。
もう１つ主要なHDLとしてVHDLがあるが、Verilogの方が比較的シンプルな文法で、C言語に近い記述ができる。

＜参考図書＞
- https://www.amazon.co.jp/dp/4789833968/?tag=a8-affi-303850-22&a8=T-.yc-WAKvkrvUUAYMkXAU.iG.Cn8oh59MlLWRlRULOAKv.PkvbiNvb4YoCXbXhl_Lwo5z.4_-.yVs00000009884001

## Verilator

Verilatorは、フリーでオープンソースのVerilogのシミュレーションシステム。このようなシミュレーションシステムはほとんどが有償らしい。
テストベンチ系のコードはサポートされていないらしい。

＜参考サイト＞
- https://msyksphinz.hatenablog.com/entry/2020/05/06/040000
