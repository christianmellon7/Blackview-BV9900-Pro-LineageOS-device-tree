# Copyright (C) 2024 Blackview BV9900Pro Device Tree
# Licensed under the Apache License, Version 2.0

# Device tree compiler
DTC := dtc
DTC_FLAGS := -I dts -O dtb -o
DTC_VALIDATE := -I dtb -O dts -o

# Source files
DTS_SOURCES := bv9900pro.dts bv9900pro-simple.dts
DTSI_SOURCES := mt6779.dtsi mt6779-pinctrl.dtsi

# Output files
DTB_OUTPUTS := bv9900pro.dtb bv9900pro-simple.dtb mt6779.dtb
DTS_OUTPUTS := bv9900pro.dts bv9900pro-simple.dts mt6779.dts

# Output directory
OUTPUT_DIR := output

# Default target
all: $(DTB_OUTPUTS) $(DTS_OUTPUTS)

# Create output directory
$(OUTPUT_DIR):
	@mkdir -p $(OUTPUT_DIR)

# Compile main device tree
bv9900pro.dtb: bv9900pro.dts $(DTSI_SOURCES) | $(OUTPUT_DIR)
	@echo "Compiling main device tree..."
	$(DTC) $(DTC_FLAGS) $(OUTPUT_DIR)/$@ $<
	@echo "Main device tree compiled successfully: $(OUTPUT_DIR)/$@"

# Compile simple device tree
bv9900pro-simple.dtb: bv9900pro-simple.dts $(DTSI_SOURCES) | $(OUTPUT_DIR)
	@echo "Compiling simple device tree..."
	$(DTC) $(DTC_FLAGS) $(OUTPUT_DIR)/$@ $<
	@echo "Simple device tree compiled successfully: $(OUTPUT_DIR)/$@"

# Compile MT6779 device tree include
mt6779.dtb: mt6779.dtsi | $(OUTPUT_DIR)
	@echo "Compiling MT6779 device tree include..."
	$(DTC) $(DTC_FLAGS) $(OUTPUT_DIR)/$@ $<
	@echo "MT6779 device tree include compiled successfully: $(OUTPUT_DIR)/$@"

# Validate device trees
bv9900pro.dts: bv9900pro.dtb
	@echo "Validating main device tree..."
	$(DTC) $(DTC_VALIDATE) $(OUTPUT_DIR)/$@ $(OUTPUT_DIR)/bv9900pro.dtb
	@echo "Main device tree validation successful: $(OUTPUT_DIR)/$@"

bv9900pro-simple.dts: bv9900pro-simple.dtb
	@echo "Validating simple device tree..."
	$(DTC) $(DTC_VALIDATE) $(OUTPUT_DIR)/$@ $(OUTPUT_DIR)/bv9900pro-simple.dtb
	@echo "Simple device tree validation successful: $(OUTPUT_DIR)/$@"

mt6779.dts: mt6779.dtb
	@echo "Validating MT6779 device tree include..."
	$(DTC) $(DTC_VALIDATE) $(OUTPUT_DIR)/$@ $(OUTPUT_DIR)/mt6779.dtb
	@echo "MT6779 device tree include validation successful: $(OUTPUT_DIR)/$@"

# Create Android boot image
boot.img: bv9900pro.dtb
	@echo "Creating Android boot image..."
	@if command -v mkbootimg >/dev/null 2>&1; then \
		mkbootimg --kernel $(OUTPUT_DIR)/bv9900pro.dtb --ramdisk /dev/zero --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x07c08000 --second_offset 0x00e88000 --tags_offset 0x07808000 --dtb_offset 0x07808000 --output $(OUTPUT_DIR)/$@; \
		echo "Android boot image created successfully: $(OUTPUT_DIR)/$@"; \
	else \
		echo "Warning: mkbootimg not found, skipping Android boot image creation"; \
	fi

# Clean build files
clean:
	@echo "Cleaning build files..."
	rm -rf $(OUTPUT_DIR)
	@echo "Clean complete"

# Install device tree
install: $(DTB_OUTPUTS)
	@echo "Installing device tree..."
	@sudo cp $(OUTPUT_DIR)/bv9900pro.dtb /boot/
	@echo "Device tree installed to /boot/"

# Install all device trees
install-all: $(DTB_OUTPUTS)
	@echo "Installing all device trees..."
	@sudo cp $(OUTPUT_DIR)/*.dtb /boot/
	@echo "All device trees installed to /boot/"

# Show build summary
summary: $(DTB_OUTPUTS) $(DTS_OUTPUTS)
	@echo ""
	@echo "Build Summary"
	@echo "============="
	@echo "Device tree files:"
	@for file in $(DTB_OUTPUTS); do \
		if [ -f "$(OUTPUT_DIR)/$$file" ]; then \
			echo "  - $(OUTPUT_DIR)/$$file ($(shell du -h $(OUTPUT_DIR)/$$file | cut -f1))"; \
		fi; \
	done
	@for file in $(DTS_OUTPUTS); do \
		if [ -f "$(OUTPUT_DIR)/$$file" ]; then \
			echo "  - $(OUTPUT_DIR)/$$file ($(shell du -h $(OUTPUT_DIR)/$$file | cut -f1))"; \
		fi; \
	done
	@if [ -f "$(OUTPUT_DIR)/boot.img" ]; then \
		echo "  - $(OUTPUT_DIR)/boot.img ($(shell du -h $(OUTPUT_DIR)/boot.img | cut -f1))"; \
	fi
	@echo ""
	@echo "Installation:"
	@echo "  For Linux: sudo cp $(OUTPUT_DIR)/bv9900pro.dtb /boot/"
	@echo "  For Android: fastboot flash dtb $(OUTPUT_DIR)/bv9900pro.dtb"
	@echo "  For Android boot: fastboot flash boot $(OUTPUT_DIR)/boot.img"
	@echo ""

# Help
help:
	@echo "Available targets:"
	@echo "  all        - Compile all device trees (default)"
	@echo "  clean      - Remove build files"
	@echo "  install    - Install main device tree to /boot/"
	@echo "  install-all- Install all device trees to /boot/"
	@echo "  summary    - Show build summary"
	@echo "  help       - Show this help message"
	@echo ""
	@echo "Individual targets:"
	@echo "  bv9900pro.dtb        - Compile main device tree"
	@echo "  bv9900pro-simple.dtb - Compile simple device tree"
	@echo "  mt6779.dtb           - Compile MT6779 device tree include"
	@echo "  boot.img             - Create Android boot image"

# Phony targets
.PHONY: all clean install install-all summary help

