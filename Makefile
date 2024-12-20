# Example of how to use this Makefile to manage the building of multiple projects

VIRTUAL_VEHICLE = virtual_vehicle
IO_MODULE = modules/io_module
EXAMPLE_MODULE = modules/example_module

all: virtual_vehicle io_module example_module

virtual_vehicle: $(VIRTUAL_VEHICLE)/Makefile
	$(MAKE) -C $(VIRTUAL_VEHICLE)

io_module: $(IO_MODULE)/Makefile
	$(MAKE) -C $(IO_MODULE)

example_module: $(EXAMPLE_MODULE)/Makefile
	$(MAKE) -C $(EXAMPLE_MODULE)

clean:
	$(MAKE) -C $(VIRTUAL_VEHICLE) clean
	$(MAKE) -C $(IO_MODULE) clean
	$(MAKE) -C $(EXAMPLE_MODULE) clean

cleanall:
	$(MAKE) -C $(VIRTUAL_VEHICLE) cleanall
	$(MAKE) -C $(IO_MODULE) cleanall
	$(MAKE) -C $(EXAMPLE_MODULE) cleanall

.PHONY: all virtual_vehicle io_module example_module clean cleanall
