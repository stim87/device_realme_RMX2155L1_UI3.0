#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from RMX2155 device
$(call inherit-product, device/realme/RMX2155L1/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from TWRP-common stuff, if building TWRP.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Inherit from PBRP-common stuff, if building PBRP.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

PRODUCT_DEVICE := RMX2155L1
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme 7
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)
PRODUCT_RELEASE_NAME := RMX2155

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_MANUFCATURER)
