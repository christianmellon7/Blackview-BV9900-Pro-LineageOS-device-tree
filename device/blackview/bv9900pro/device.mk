# Copyright (C) 2024 Blackview BV9900Pro Device Tree for LineageOS
# Licensed under the Apache License, Version 2.0

# Device Information
PRODUCT_NAME := lineage_bv9900pro
PRODUCT_DEVICE := bv9900pro
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := BV9900Pro
PRODUCT_MANUFACTURER := Blackview

# Device characteristics
PRODUCT_CHARACTERISTICS := phone

# LineageOS specific
PRODUCT_PACKAGES += \
    LineageParts \
    LineageSettingsProvider \
    LineageSetupWizard \
    LineageSystemUI \
    LineageLauncher3 \
    LineageWallpaperPicker

# Audio
PRODUCT_PACKAGES += \
    audio.primary.mt6779 \
    audio_policy.stub \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libaudioroute \
    libaudioutils \
    libtinyalsa \
    libtinycompress \
    libtinyxml

# Audio HAL
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio@4.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio.effect@4.0-impl \
    android.hardware.soundtrigger@2.0-impl

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service \
    libbt-vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service \
    camera.device@1.0-impl \
    camera.device@3.2-impl

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
    android.hardware.gnss@1.0-service

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-service

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Light
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    android.hardware.power@1.0-service

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service \
    android.hardware.usb@1.0-impl

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

# Media
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libvcodec_cap \
    libvcodec_capenc \
    libvcodec_utility \
    libvcodec_vpudec \
    libvcodec_vpuenc

# Hardware
PRODUCT_PACKAGES += \
    libhardware \
    libhardware_legacy \
    libhwbinder \
    libhidltransport \
    libhidlbase

# Permissions
PRODUCT_COPY_FILES += \
    device/blackview/bv9900pro/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    device/blackview/bv9900pro/permissions/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    device/blackview/bv9900pro/permissions/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    device/blackview/bv9900pro/permissions/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    device/blackview/bv9900pro/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    device/blackview/bv9900pro/permissions/android.hardware.telephony.xml:system/etc/permissions/android.hardware.telephony.xml \
    device/blackview/bv9900pro/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    device/blackview/bv9900pro/permissions/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    device/blackview/bv9900pro/permissions/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    device/blackview/bv9900pro/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    device/blackview/bv9900pro/permissions/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    device/blackview/bv9900pro/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    device/blackview/bv9900pro/permissions/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    device/blackview/bv9900pro/permissions/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    device/blackview/bv9900pro/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    device/blackview/bv9900pro/permissions/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    device/blackview/bv9900pro/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    device/blackview/bv9900pro/permissions/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    device/blackview/bv9900pro/permissions/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    device/blackview/bv9900pro/permissions/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    device/blackview/bv9900pro/permissions/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    device/blackview/bv9900pro/permissions/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    device/blackview/bv9900pro/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    device/blackview/bv9900pro/permissions/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    device/blackview/bv9900pro/permissions/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    device/blackview/bv9900pro/permissions/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    device/blackview/bv9900pro/permissions/android.hardware.vibrator.xml:system/etc/permissions/android.hardware.vibrator.xml

# Config files
PRODUCT_COPY_FILES += \
    device/blackview/bv9900pro/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/blackview/bv9900pro/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/blackview/bv9900pro/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    device/blackview/bv9900pro/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/blackview/bv9900pro/configs/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/blackview/bv9900pro/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Init files
PRODUCT_COPY_FILES += \
    device/blackview/bv9900pro/init.bv9900pro.rc:root/init.bv9900pro.rc \
    device/blackview/bv9900pro/init.bv9900pro.usb.rc:root/init.bv9900pro.usb.rc \
    device/blackview/bv9900pro/ueventd.bv9900pro.rc:root/ueventd.bv9900pro.rc

# Fstab
PRODUCT_COPY_FILES += \
    device/blackview/bv9900pro/fstab.bv9900pro:root/fstab.bv9900pro

# Inherit from common
-include device/mediatek/mt6779/device.mk

