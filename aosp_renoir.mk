#
# Copyright (C) 2021 The evolutionOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from renoir device
$(call inherit-product, device/xiaomi/renoir/device.mk)

# Inherit some common Project-Elixir stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
IS_PHONE := true
ELIXIR_MAINTAINER := Cyphound
ELIXIR_BUILD_TYPE := UNOFFICIAL
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Device specific stuff
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := renoir
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi 11 Lite 5G
PRODUCT_NAME := aosp_renoir
PRODUCT_SYSTEM_NAME := renoir_global
PRODUCT_SYSTEM_DEVICE := renoir


TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi