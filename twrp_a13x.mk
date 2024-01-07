#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/samsung/a13x

# Release name
PRODUCT_RELEASE_NAME := a13x

# Inherit from those products. Most specific first.
# $(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/a13x/recovery/root,recovery/root)


PRODUCT_DEVICE := a13x
PRODUCT_NAME := twrp_a13x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A136B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a13xnsxx-user 12 SP1A.210812.016 A136BXXS5CWK1 release-keys"

BUILD_FINGERPRINT := samsung/a13xnsxx/a13x:12/SP1A.210812.016/A136BXXS5CWK1:user/release-keys
