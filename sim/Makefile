cleansim: clean mixed

mixed: mixed.cir spicewrap.so
	ngspice $<

spicewrap.so: spicewrap.v ../verilog/controller.v ../verilog/vga_sync.v
	ngspice vlnggen $^

clean:
	rm -rf *_obj_dir *~ .*~ *.so inputs.h outputs.h inouts.h
