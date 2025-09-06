# Copyright (C) 2024 Blackview BV9900Pro Device Tree for LineageOS
# Licensed under the Apache License, Version 2.0

LOCAL_PATH := $(call my-dir)

# Device tree files
include $(CLEAR_VARS)
LOCAL_MODULE := bv9900pro.dtb
LOCAL_SRC_FILES := bv9900pro.dtb
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/firmware
include $(BUILD_PREBUILT)

# Kernel
include $(CLEAR_VARS)
LOCAL_MODULE := Image.gz-dtb
LOCAL_SRC_FILES := Image.gz-dtb
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/firmware
include $(BUILD_PREBUILT)

# Audio config
include $(CLEAR_VARS)
LOCAL_MODULE := audio_policy.conf
LOCAL_SRC_FILES := configs/audio_policy.conf
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

# Media config
include $(CLEAR_VARS)
LOCAL_MODULE := media_codecs.xml
LOCAL_SRC_FILES := configs/media_codecs.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := media_codecs_performance.xml
LOCAL_SRC_FILES := configs/media_codecs_performance.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := media_profiles.xml
LOCAL_SRC_FILES := configs/media_profiles.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

# WiFi config
include $(CLEAR_VARS)
LOCAL_MODULE := wpa_supplicant.conf
LOCAL_SRC_FILES := configs/wpa_supplicant.conf
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/wifi
include $(BUILD_PREBUILT)

# Audio mixer
include $(CLEAR_VARS)
LOCAL_MODULE := mixer_paths.xml
LOCAL_SRC_FILES := configs/mixer_paths.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

# Init files
include $(CLEAR_VARS)
LOCAL_MODULE := init.bv9900pro.rc
LOCAL_SRC_FILES := init.bv9900pro.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.bv9900pro.usb.rc
LOCAL_SRC_FILES := init.bv9900pro.usb.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ueventd.bv9900pro.rc
LOCAL_SRC_FILES := ueventd.bv9900pro.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

# Fstab
include $(CLEAR_VARS)
LOCAL_MODULE := fstab.bv9900pro
LOCAL_SRC_FILES := fstab.bv9900pro
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

# Permissions
include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.camera.xml
LOCAL_SRC_FILES := permissions/android.hardware.camera.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.camera.flash-autofocus.xml
LOCAL_SRC_FILES := permissions/android.hardware.camera.flash-autofocus.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.camera.front.xml
LOCAL_SRC_FILES := permissions/android.hardware.camera.front.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.location.xml
LOCAL_SRC_FILES := permissions/android.hardware.location.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.location.gps.xml
LOCAL_SRC_FILES := permissions/android.hardware.location.gps.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.telephony.xml
LOCAL_SRC_FILES := permissions/android.hardware.telephony.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.telephony.gsm.xml
LOCAL_SRC_FILES := permissions/android.hardware.telephony.gsm.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.telephony.cdma.xml
LOCAL_SRC_FILES := permissions/android.hardware.telephony.cdma.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.touchscreen.xml
LOCAL_SRC_FILES := permissions/android.hardware.touchscreen.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.touchscreen.multitouch.xml
LOCAL_SRC_FILES := permissions/android.hardware.touchscreen.multitouch.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.touchscreen.multitouch.distinct.xml
LOCAL_SRC_FILES := permissions/android.hardware.touchscreen.multitouch.distinct.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.touchscreen.multitouch.jazzhand.xml
LOCAL_SRC_FILES := permissions/android.hardware.touchscreen.multitouch.jazzhand.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.usb.accessory.xml
LOCAL_SRC_FILES := permissions/android.hardware.usb.accessory.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.usb.host.xml
LOCAL_SRC_FILES := permissions/android.hardware.usb.host.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.wifi.xml
LOCAL_SRC_FILES := permissions/android.hardware.wifi.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.wifi.direct.xml
LOCAL_SRC_FILES := permissions/android.hardware.wifi.direct.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.bluetooth.xml
LOCAL_SRC_FILES := permissions/android.hardware.bluetooth.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.bluetooth_le.xml
LOCAL_SRC_FILES := permissions/android.hardware.bluetooth_le.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.sensor.accelerometer.xml
LOCAL_SRC_FILES := permissions/android.hardware.sensor.accelerometer.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.sensor.compass.xml
LOCAL_SRC_FILES := permissions/android.hardware.sensor.compass.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.sensor.gyroscope.xml
LOCAL_SRC_FILES := permissions/android.hardware.sensor.gyroscope.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.sensor.light.xml
LOCAL_SRC_FILES := permissions/android.hardware.sensor.light.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.sensor.proximity.xml
LOCAL_SRC_FILES := permissions/android.hardware.sensor.proximity.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.sensor.stepcounter.xml
LOCAL_SRC_FILES := permissions/android.hardware.sensor.stepcounter.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.sensor.stepdetector.xml
LOCAL_SRC_FILES := permissions/android.hardware.sensor.stepdetector.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.fingerprint.xml
LOCAL_SRC_FILES := permissions/android.hardware.fingerprint.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.vibrator.xml
LOCAL_SRC_FILES := permissions/android.hardware.vibrator.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

