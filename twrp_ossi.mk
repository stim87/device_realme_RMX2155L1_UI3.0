#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from RMX2155 device
$(call inherit-product, device/realme/ossi/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from TWRP-common stuff, if building TWRP.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Inherit from PBRP-common stuff, if building PBRP.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

PRODUCT_DEVICE := ossi
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2155
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)
PRODUCT_RELEASE_NAME := realme 7

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_MANUFCATURER)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=RMX2155EEA \
    TARGET_DEVICE=RMX2155L1 \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user 12 SP1A.210812.016 1668670161293 release-keys"

BUILD_FINGERPRINT := realme/RMX2155EEA/RMX2155L1:12/SP1A.210812.016/Q.GDPR.bf75e7-1:user/release-keys
