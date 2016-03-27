## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Ixion_P4

# Inherit some common stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/cat/b15q/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Ixion_P4
PRODUCT_NAME := omni_Ixion_P4
PRODUCT_BRAND := DEXP
PRODUCT_MODEL := Ixion_P4
PRODUCT_MANUFACTURER := DEXP
