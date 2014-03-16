$(call inherit-product, device/sony/pepper/full_pepper.mk)

# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

#Sony Apps in play store
PRODUCT_GMS_CLIENTID_BASE := android-sonyericsson

PRODUCT_NAME := cm_pepper
PRODUCT_DEVICE := pepper
