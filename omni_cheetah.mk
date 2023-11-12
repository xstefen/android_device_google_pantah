# Copyright (c) 2023 OmniROM Project. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

# Set boot animation size (must be set before omni bits)
TARGET_BOOTANIMATION_SIZE := 1440p

# Inherit some common stuff
$(call inherit-product, vendor/omni/config/gsm.mk)
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs201/omni_common.mk)
$(call inherit-product, device/google/pantah/device-omni.mk)
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)

# Override inherited identifiers
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := omni_cheetah

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 14 UP1A.231105.003 11010452 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:14/UP1A.231105.003/11010452:user/release-keys

# Relax vendor rules
PRODUCT_RESTRICT_VENDOR_FILES := false
