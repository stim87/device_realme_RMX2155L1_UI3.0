# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP Device Tree Generator
# SPDX-License-Identifier: Apache-2.0

LOCAL_PATH := device/realme/RMX2155

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# API
PRODUCT_SHIPPING_API_LEVEL := 29

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastboot
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.2-service-mediatekv2

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31 \
    ro.bootimage.build.date.utc=0 \
    ro.build.date.utc=0

# Additional target Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
    libkeymaster4 \
    libpuresoftkeymasterdevice

TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0-impl

PRODUCT_PROPERTY_OVERRIDES += persist.sys.fuse.passthrough.enable=true
