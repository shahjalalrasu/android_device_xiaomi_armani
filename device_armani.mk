$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/xiaomi/msm8226-common/msm8226.mk)

LOCAL_PATH := device/xiaomi/armani

# Kernel
PRODUCT_COPY_FILES += \
    device/xiaomi/armani/kernel:kernel \
    device/xiaomi/armani/dt.img:dt.img

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_armani
PRODUCT_DEVICE := armani
PRODUCT_LOCALES := es_ES
PRODUCT_LOCALES += xhdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

$(call inherit-product, device/xiaomi/msm8226-common/keylayout/keylayout.mk)
$(call inherit-product-if-exists, vendor/xiaomi/armani/armani-vendor.mk)
