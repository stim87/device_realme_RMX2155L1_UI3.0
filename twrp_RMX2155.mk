# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP Device Tree Generator
# SPDX-License-Identifier: Apache-2.0

# Device Information
PRODUCT_DEVICE := RMX2155
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme 7
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)
PRODUCT_RELEASE_NAME := RMX2155

# Inherit from Prebuilt Products.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from RMX2155 Device Tree.
$(call inherit-product, device/realme/RMX2155/device.mk)

# Inherit from GSI Products.
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Inherit from PBRP-common stuff, if building PBRP.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

# Inherit from TWRP-common stuff, if building TWRP.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_MANUFCATURER)
