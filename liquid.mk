## Specify phone tech before including full_phone
$(call inherit-product, vendor/liquid/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := armani

# Inherit some common CM stuff.
$(call inherit-product, vendor/liquid/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Inherit device configuration
$(call inherit-product, device/walton/primos2/primo_s2.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := primo_s2
PRODUCT_NAME := liquid_primos2
PRODUCT_BRAND := walton
PRODUCT_MODEL := primo_s2
PRODUCT_MANUFACTURER := walton
