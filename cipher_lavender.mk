#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit full common Lineage stuff
$(call inherit-product, vendor/cipher/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
CIPHER_GAPPS := true
CIPHER_BUILD_ZIP_TYPE := GAPPS

# Inherit Telephony
$(call inherit-product, vendor/cipher/config/telephony.mk)

# Sony Dolby
$(call inherit-product, vendor/dolby/config.mk)

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product, $(LOCAL_PATH)/device-hidl.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cipher_lavender
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="lavender" \
    PRODUCT_NAME="lavender" \
    PRIVATE_BUILD_DESC="redfin-user 13 TQ1A.230205.002 9471150 release-keys"

BUILD_FINGERPRINT :="google/redfin/redfin:13/TQ1A.230205.002/9471150:user/release-keys"
