all: Vcounter_updown

Vcounter_updown: counter_updown.v tb_counter_updown.cpp
	verilator --cc counter_updown.v -exe tb_counter_updown.cpp
	make -C obj_dir -f Vcounter_updown.mk

clean:
	rm -rf obj_dir
