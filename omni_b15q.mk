## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := b15q

# Inherit some common stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/cat/b15q/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := b15q
PRODUCT_NAME := omni_b15q
PRODUCT_BRAND := Cat
PRODUCT_MODEL := b15q
PRODUCT_MANUFACTURER := Cat
