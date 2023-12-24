#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/plato/device.mk)

# Inherit LineageOS product
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_plato
PRODUCT_DEVICE := plato
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 22071212AG

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="plato_global-user 12 SP1A.210812.016 V14.0.7.0.ULQMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/plato_global/plato:12/SP1A.210812.016/V14.0.7.0.ULQMIXM:user/release-keys
