PROJECT_NAME := controller
# needs PDK_ROOT and OPENLANE_ROOT, OPENLANE_IMAGE_NAME set from your environment
harden:
	docker run -it --rm \
	-v $(OPENLANE_ROOT):/openlane \
	-v $(PDK_ROOT):$(PDK_ROOT) \
	-v $(CURDIR):/work \
	-e PDK_ROOT=$(PDK_ROOT) \
	-e PDK=$(PDK) \
	-u $(shell id -u $(USER)):$(shell id -g $(USER)) \
	$(OPENLANE_IMAGE_NAME) \
	/bin/bash -c "ls -al /work && ./flow.tcl -overwrite -design /work/openlane/$(PROJECT_NAME) -run_path /work/openlane/$(PROJECT_NAME)/runs -tag controller"

update_files:
	cp openlane/$(PROJECT_NAME)/runs/controller/results/final/mag/$(PROJECT_NAME).mag mag/
	cp openlane/$(PROJECT_NAME)/runs/controller/results/final/verilog/gl/$(PROJECT_NAME).v verilog/gl/
