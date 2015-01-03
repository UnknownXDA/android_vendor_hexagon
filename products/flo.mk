# Inherit AICP common_tablet bits
$(call inherit-product, vendor/aicp/configs/common_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/asus/flo/full_flo.mk)

# Flo Overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/aicp/overlay/flo

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := flo
PRODUCT_NAME := aicp_flo
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_FINGERPRINT=google/razor/flo:4.4.4/KTU84P/1227136:user/release-keys PRIVATE_BUILD_DESC="razor-user 4.4.4 KTU84P 1227136 release-keys"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

PRODUCT_COPY_FILES += \
    vendor/aicp/prebuilt/bootanimation/bootanimation_1200_1920.zip:system/media/bootanimation.zip

