# LineageOS Device Tree for Blackview BV9900Pro

This repository contains the device tree configuration for building LineageOS for the Blackview BV9900Pro smartphone.

## Device Information

- **Device**: Blackview BV9900Pro
- **Codename**: bv9900pro
- **Manufacturer**: Blackview
- **Platform**: MediaTek MT6779 (Helio P90)
- **Architecture**: ARM64
- **Android Version**: LineageOS 21 (Android 14)

## Features

- ✅ LineageOS 21 support
- ✅ ARM64 architecture
- ✅ MediaTek MT6779 platform
- ✅ All hardware components supported
- ✅ LineageOS specific features
- ✅ Custom recovery support

## Building

### Prerequisites

- LineageOS source code
- Android build environment
- Device tree files from this repository

### Build Instructions

1. Clone this repository to your LineageOS source tree:
   ```bash
   git clone https://github.com/yourusername/lineageos_device_blackview_bv9900pro.git device/blackview/bv9900pro
   ```

2. Set up the build environment:
   ```bash
   source build/envsetup.sh
   lunch lineage_bv9900pro-userdebug
   ```

3. Build LineageOS:
   ```bash
   mka bacon
   ```

## Device Tree Structure

```
device/blackview/bv9900pro/
├── Android.mk              # Android build configuration
├── BoardConfig.mk          # Board configuration
├── device.mk               # Device configuration
├── lineage.mk              # LineageOS specific configuration
├── vendorsetup.sh          # Lunch combo setup
├── bv9900pro.dts           # Device tree source
├── bv9900pro-simple.dts    # Simplified device tree
├── mt6779.dtsi             # MediaTek MT6779 common definitions
├── mt6779-pinctrl.dtsi     # Pin control definitions
├── configs/                # Configuration files
├── permissions/            # Android permissions
├── sepolicy/               # SELinux policies
└── bluetooth/              # Bluetooth configuration
```

## Contributing

1. Fork this repository
2. Create a feature branch
3. Make your changes
4. Test the build
5. Submit a pull request

## License

This project is licensed under the Apache License, Version 2.0. See the LICENSE file for details.

## Disclaimer

This device tree is provided as-is. Use at your own risk. The maintainers are not responsible for any damage to your device.

## Credits

- Blackview for the original device
- MediaTek for the platform support
- LineageOS team for the ROM
- Android Open Source Project
