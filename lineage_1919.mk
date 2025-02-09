# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from 1919 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := vivo
PRODUCT_DEVICE := 1919
PRODUCT_MANUFACTURER := vivo
PRODUCT_NAME := lineage_1919
PRODUCT_MODEL := vivo 1919

PRODUCT_GMS_CLIENTID_BASE := android-vivo
TARGET_VENDOR := vivo
TARGET_VENDOR_PRODUCT_NAME := 1919
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="sm6150-user 9 PKQ1.190302.001 compiler12092108 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := vivo/1919/1919:9/PKQ1.190302.001/compiler12092108:user/release-keys
