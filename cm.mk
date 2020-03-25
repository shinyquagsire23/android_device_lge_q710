# Release name
PRODUCT_RELEASE_NAME := q710

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/q710/device_q710.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := q710
PRODUCT_NAME := cm_q710
PRODUCT_BRAND := lge
PRODUCT_MODEL := q710
PRODUCT_MANUFACTURER := lge
