# Copyright (C) 2024 Blackview BV9900Pro Device Tree for LineageOS
# Licensed under the Apache License, Version 2.0

# LineageOS specific configurations
PRODUCT_NAME := lineage_bv9900pro
PRODUCT_DEVICE := bv9900pro
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := BV9900Pro
PRODUCT_MANUFACTURER := Blackview

# LineageOS features
PRODUCT_PACKAGES += \
    LineageParts \
    LineageSettingsProvider \
    LineageSetupWizard \
    LineageSystemUI \
    LineageLauncher3 \
    LineageWallpaperPicker \
    LineageRecovery \
    LineageUpdater

# LineageOS specific properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.device=bv9900pro \
    ro.lineage.version=$(LINEAGE_VERSION) \
    ro.lineage.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION) \
    ro.lineage.build.version.plat.rev=$(LINEAGE_PLATFORM_REV) \
    ro.lineage.display.version=$(LINEAGE_DISPLAY_VERSION)

# LineageOS charger
PRODUCT_PACKAGES += \
    lineage_charger \
    lineage_charger_res_images

# LineageOS recovery
PRODUCT_PACKAGES += \
    lineage_recovery

# LineageOS updater
PRODUCT_PACKAGES += \
    Updater

# Inherit from device.mk
$(call inherit-product, device/blackview/bv9900pro/device.mk)
