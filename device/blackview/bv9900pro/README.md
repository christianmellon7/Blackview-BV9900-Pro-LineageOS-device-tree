# Blackview BV9900Pro Device Tree

This device tree is designed for the Blackview BV9900Pro smartphone based on the MediaTek MT6779 (Helio P90) SoC.

## Device Specifications

- **SoC**: MediaTek MT6779 (Helio P90)
- **CPU**: 8-core (4x Cortex-A75 @ 2.2GHz + 4x Cortex-A55 @ 2.0GHz)
- **GPU**: Mali-G72 MP3 @ 970MHz
- **RAM**: 8GB LPDDR4X
- **Storage**: 128GB eMMC
- **Display**: 6.3" IPS LCD, 1080x2280, 480 DPI
- **Camera**: 48MP + 16MP + 8MP + 2MP rear, 16MP front
- **Battery**: 4380mAh Li-Po
- **OS**: Android 9.0 (Pie)

## Files Structure

```
blackview/bv9900pro/
├── bv9900pro.dts              # Main device tree source
├── bv9900pro-simple.dts       # Simplified device tree
├── mt6779.dtsi                # MT6779 SoC include file
├── mt6779-pinctrl.dtsi        # Pin control definitions
├── BoardConfig.mk             # Board configuration
├── device.mk                  # Device configuration
├── Android.mk                 # Android build configuration
├── init.bv9900pro.rc          # Init script
├── init.bv9900pro.usb.rc      # USB init script
├── ueventd.bv9900pro.rc       # Uevent daemon script
├── fstab.bv9900pro            # File system table
├── recovery.fstab             # Recovery file system table
├── system.prop                # System properties
├── vendor.prop                # Vendor properties
├── board-info.txt             # Board information
├── compile.sh                 # Compilation script
├── Makefile                   # Build makefile
├── configs/                   # Configuration files
│   ├── audio_policy.conf      # Audio policy
│   ├── media_codecs.xml       # Media codecs
│   ├── media_codecs_performance.xml
│   ├── media_profiles.xml     # Media profiles
│   ├── mixer_paths.xml        # Audio mixer paths
│   └── wpa_supplicant.conf    # WiFi configuration
├── permissions/               # Android permissions
│   ├── android.hardware.camera.xml
│   ├── android.hardware.wifi.xml
│   ├── android.hardware.bluetooth.xml
│   └── ...
├── bluetooth/                 # Bluetooth configuration
│   └── bt_vendor.conf
├── sepolicy/                  # SELinux policies
└── README.md                  # This file
```

## Hardware Components

### CPU
- 4x ARM Cortex-A75 @ 2.2GHz
- 4x ARM Cortex-A55 @ 2.0GHz
- ARMv8-A architecture

### Memory
- 8GB LPDDR4X RAM
- 128GB eMMC storage

### Display
- 5.84" IPS LCD
- Resolution: 1080x2280
- Density: 480 DPI
- Touchscreen: Goodix GT9886

### Camera
- Rear: 48MP + 16MP + 8MP + 2MP
- Front: 16MP
- Video: 4K@30fps, 1080p@60fps

### Connectivity
- WiFi: 802.11 a/b/g/n/ac
- Bluetooth: 5.0
- GPS: A-GPS, GLONASS, BDS
- Cellular: 4G LTE

### Sensors
- Accelerometer: Bosch BMA2x2
- Gyroscope: Bosch BMG160
- Magnetometer: AKM AK09916C
- Proximity: Sharp GP2AP002S00F
- Light: Sharp GP2AP002S00F

### Audio
- Speaker: Single
- Microphone: Dual
- Headphone: 3.5mm jack

### Power
- Battery: 4380mAh Li-Po
- Charging: Quick Charge 3.0
- USB: Type-C

## Build Instructions

### Prerequisites

1. **Install required tools:**
   ```bash
   # Ubuntu/Debian
   sudo apt-get install device-tree-compiler mkbootimg
   
   # CentOS/RHEL
   sudo yum install dtc mkbootimg
   
   # Arch Linux
   sudo pacman -S dtc mkbootimg
   ```

2. **Set up Android build environment:**
   ```bash
   source build/envsetup.sh
   lunch bv9900pro-userdebug
   ```

### Compilation Methods

#### Method 1: Using Makefile
```bash
# Compile all device trees
make all

# Compile specific device tree
make bv9900pro.dtb

# Show build summary
make summary

# Clean build files
make clean

# Install to /boot/
make install
```

#### Method 2: Using compile script
```bash
# Make script executable
chmod +x compile.sh

# Run compilation
./compile.sh
```

#### Method 3: Manual compilation
```bash
# Create output directory
mkdir -p output

# Compile main device tree
dtc -I dts -O dtb -o output/bv9900pro.dtb bv9900pro.dts

# Compile simple device tree
dtc -I dts -O dtb -o output/bv9900pro-simple.dtb bv9900pro-simple.dts

# Compile MT6779 include
dtc -I dts -O dtb -o output/mt6779.dtb mt6779.dtsi
```

### Android Build Integration

1. **Clone device tree:**
   ```bash
   git clone <repository> device/blackview/bv9900pro/
   ```

2. **Build Android:**
   ```bash
   source build/envsetup.sh
   lunch bv9900pro-userdebug
   mka
   ```

3. **Flash device:**
   ```bash
   fastboot flash boot boot.img
   fastboot flash dtb output/bv9900pro.dtb
   fastboot reboot
   ```

### Output Files

After compilation, you'll find these files in the `output/` directory:

- `bv9900pro.dtb` - Main device tree binary
- `bv9900pro-simple.dtb` - Simplified device tree binary
- `mt6779.dtb` - MT6779 SoC device tree binary
- `bv9900pro.dts` - Validated main device tree source
- `bv9900pro-simple.dts` - Validated simple device tree source
- `mt6779.dts` - Validated MT6779 device tree source
- `boot.img` - Android boot image (if mkbootimg is available)

## Configuration

### Audio Configuration
- Edit `configs/audio_policy.conf` for audio routing
- Edit `configs/mixer_paths.xml` for volume levels

### WiFi Configuration
- Edit `configs/wpa_supplicant.conf` for WiFi settings

### Bluetooth Configuration
- Edit `bluetooth/bt_vendor.conf` for Bluetooth settings

### System Properties
- Edit `system.prop` for system-wide properties
- Edit `vendor.prop` for vendor-specific properties

## Troubleshooting

### Common Issues

1. **Compilation errors:**
   - Check if all dependencies are installed
   - Verify device tree syntax
   - Check for missing include files

2. **Boot issues:**
   - Verify device tree compatibility
   - Check memory addresses
   - Validate clock configurations

3. **Hardware not working:**
   - Check GPIO pin assignments
   - Verify interrupt configurations
   - Check power domain settings

### Debug Commands

```bash
# Validate device tree
dtc -I dtb -O dts -o debug.dts output/bv9900pro.dtb

# Check device tree size
ls -lh output/*.dtb

# Verify boot image
file output/boot.img
```

## Notes

- This device tree is based on the extracted firmware from the BV9900Pro
- Some hardware components may need additional configuration
- Test thoroughly before using in production
- Backup your device before flashing
- The device tree supports both main and simplified configurations

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

Copyright (C) 2024 Blackview BV9900Pro Device Tree
Licensed under the Apache License, Version 2.0

