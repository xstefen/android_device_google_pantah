# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/pantah/overlay-omni

# sysconfig and permissions XML from stock
PRODUCT_COPY_FILES += \
	device/google/pantah/conf/product-sysconfig-stock.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/product-sysconfig-stock.xml \
    device/google/pantah/permissions/product-permissions-stock.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/product-permissions-stock.xml

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml \
    device/google/pantah/permissions/permissions_com.google.android.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/permissions_com.google.android.euicc.xml \
    device/google/pantah/permissions/permissions_com.google.euiccpixel.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/permissions_com.google.euiccpixel.xml

