VIVADO_PATH := /tools/Xilinx/Vivado/2021.1
VIVADO_SETTINGS := $(VIVADO_PATH)/settings64.sh
TCL_SCRIPT := scripts/create.tcl
PROJECT_NAME := prj
PROJECT_FILE := proj/$(PROJECT_NAME)/$(PROJECT_NAME).xpr
PETALINUX_DIR := petalinux
HW_DESCRIPTION := hw_handoff/
BD_DESIGN_NAME := design_1
BD_EXPORT_DIR := src/bd
LOG_FILE := vivado_makefile.log

all: help

project:
	@echo "Sourcing Vivado settings..."
	source $(VIVADO_SETTINGS) && vivado -mode gui -source $(TCL_SCRIPT)
	@echo "Vivado project created successfully!"

gui:
	@echo "Sourcing Vivado settings and opening project in a new process..."
	@echo "Logs will be saved to $(LOG_FILE)"
	( source $(VIVADO_SETTINGS) && vivado $(PROJECT_FILE) & ) > $(LOG_FILE) 2>&1
	@echo "Vivado GUI launched in a new process! Check $(LOG_FILE) for details."

# bd-export:
# 	@echo "Exporting Block Design..."
# 	mkdir -p $(BD_EXPORT_DIR)
# 	source $(VIVADO_SETTINGS) && vivado -mode batch -source export_bd.tcl -tclargs $(PROJECT_FILE) $(BD_DESIGN_NAME) $(BD_EXPORT_DIR)
# 	@echo "Block Design exported to $(BD_EXPORT_DIR)/$(BD_DESIGN_NAME).tcl"

clean:
	@echo "Cleaning up generated files..."
	rm -rf $(PROJECT_NAME)/
	rm -rf *.log *.jou
	@echo "Cleanup complete!"

help:
	@echo "Usage: make [target]"
	@echo "Targets:"
	@echo "  project                       - Generate Vivado project in gui mode"
	@echo "  gui                           - Open Vivado project in GUI mode"
	# @echo "  bd-export                     - Export Block Design to TCL file"
	@echo "  clean                         - Clean up generated files"
	@echo "  help                          - Show this help message"

.PHONY: all project vivado gui clean help
