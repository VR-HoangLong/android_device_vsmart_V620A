#
# Copyright (C) 2020 The MoKee Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from V620A device
$(call inherit-product, device/vsmart/V620A/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_V620A
PRODUCT_BRAND := vsmart
PRODUCT_DEVICE := V620A
PRODUCT_MANUFACTURER := vsmart
PRODUCT_MODEL := Vsmart Live

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="V620A" \
    PRODUCT_NAME="V620A" \
    PRIVATE_BUILD_DESC="V620A_open-user 10 QKQ1.191215.002 V620A_OPN_U_B14_210717 release-keys"

BUILD_FINGERPRINT := vsmart/V620A_open/V620A:10/QKQ1.191215.002/V620A_OPN_U_B14_210717:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.lcd_density=400

PRODUCT_PRODUCT_PROPERTIES += \
    fod.dimming.min=40 \
    fod.dimming.max=255
