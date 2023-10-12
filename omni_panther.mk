# Copyright (c) 2023 OmniROM Project. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

# Set boot animation size (must be set before omni bits)
TARGET_BOOTANIMATION_SIZE := 1080p

# Inherit some common stuff
$(call inherit-product, vendor/omni/config/gsm.mk)
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs201/omni_common.mk)
$(call inherit-product, device/google/pantah/device-omni.mk)
$(call inherit-product, device/google/pantah/aosp_panther.mk)

# Override inherited identifiers
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7
PRODUCT_NAME := omni_panther

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=panther \
    PRIVATE_BUILD_DESC="panther-user 14 UP1A.231005.007 10754064 release-keys"

BUILD_FINGERPRINT := google/panther/panther:14/UP1A.231005.007/10754064:user/release-keys

# Relax vendor rules
PRODUCT_RESTRICT_VENDOR_FILES := false
