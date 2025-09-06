#!/bin/bash
# Copyright (C) 2024 Blackview BV9900Pro Device Tree
# Licensed under the Apache License, Version 2.0

set -e

echo "Blackview BV9900Pro Device Tree Compiler"
echo "========================================"

# Check if dtc is available
if ! command -v dtc &> /dev/null; then
    echo "Error: dtc (device tree compiler) not found"
    echo "Please install device-tree-compiler package"
    echo "  Ubuntu/Debian: sudo apt-get install device-tree-compiler"
    echo "  CentOS/RHEL: sudo yum install dtc"
    echo "  Arch Linux: sudo pacman -S dtc"
    exit 1
fi

# Create output directory
mkdir -p output

# Compile main device tree
echo "Compiling main device tree..."
dtc -I dts -O dtb -o output/bv9900pro.dtb bv9900pro.dts

if [ $? -eq 0 ]; then
    echo "✓ Main device tree compiled successfully"
    echo "  Output: output/bv9900pro.dtb"
    echo "  Size: $(du -h output/bv9900pro.dtb | cut -f1)"
else
    echo "✗ Main device tree compilation failed"
    exit 1
fi

# Compile simple device tree
echo "Compiling simple device tree..."
dtc -I dts -O dtb -o output/bv9900pro-simple.dtb bv9900pro-simple.dts

if [ $? -eq 0 ]; then
    echo "✓ Simple device tree compiled successfully"
    echo "  Output: output/bv9900pro-simple.dtb"
    echo "  Size: $(du -h output/bv9900pro-simple.dtb | cut -f1)"
else
    echo "✗ Simple device tree compilation failed"
    exit 1
fi

# Compile MT6779 device tree include
echo "Compiling MT6779 device tree include..."
dtc -I dts -O dtb -o output/mt6779.dtb mt6779.dtsi

if [ $? -eq 0 ]; then
    echo "✓ MT6779 device tree include compiled successfully"
    echo "  Output: output/mt6779.dtb"
    echo "  Size: $(du -h output/mt6779.dtb | cut -f1)"
else
    echo "✗ MT6779 device tree include compilation failed"
    exit 1
fi

# Validate device trees
echo "Validating device trees..."
dtc -I dtb -O dts -o output/bv9900pro.dts output/bv9900pro.dtb
dtc -I dtb -O dts -o output/bv9900pro-simple.dts output/bv9900pro-simple.dtb
dtc -I dtb -O dts -o output/mt6779.dts output/mt6779.dtb

if [ $? -eq 0 ]; then
    echo "✓ Device tree validation successful"
else
    echo "✗ Device tree validation failed"
    exit 1
fi

# Create Android boot image
echo "Creating Android boot image..."
if command -v mkbootimg &> /dev/null; then
    mkbootimg --kernel output/bv9900pro.dtb --ramdisk /dev/zero --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x07c08000 --second_offset 0x00e88000 --tags_offset 0x07808000 --dtb_offset 0x07808000 --output output/boot.img
    if [ $? -eq 0 ]; then
        echo "✓ Android boot image created successfully"
        echo "  Output: output/boot.img"
        echo "  Size: $(du -h output/boot.img | cut -f1)"
    else
        echo "✗ Android boot image creation failed"
    fi
else
    echo "Warning: mkbootimg not found, skipping Android boot image creation"
fi

# Create summary
echo ""
echo "Build complete!"
echo "==============="
echo "Device tree files:"
echo "  - output/bv9900pro.dtb (main binary)"
echo "  - output/bv9900pro-simple.dtb (simple binary)"
echo "  - output/mt6779.dtb (MT6779 binary)"
echo "  - output/bv9900pro.dts (main source)"
echo "  - output/bv9900pro-simple.dts (simple source)"
echo "  - output/mt6779.dts (MT6779 source)"
if [ -f "output/boot.img" ]; then
    echo "  - output/boot.img (Android boot image)"
fi
echo ""
echo "Installation:"
echo "  For Linux: sudo cp output/bv9900pro.dtb /boot/"
echo "  For Android: fastboot flash dtb output/bv9900pro.dtb"
echo "  For Android boot: fastboot flash boot output/boot.img"
echo ""

