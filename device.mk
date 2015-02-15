$(call inherit-product, device/qcom/msm8974/msm8974.mk)

PRODUCT_COPY_FILES := @inherit:device/qcom/common/common.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/rootdir/init.rc:root/init.rc \

PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/volume.cfg:system/etc/volume.cfg \
  $(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml \
  system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf \

PRODUCT_PROPERTY_OVERRIDES += \
  ro.moz.nfc.enabled=true \

PRODUCT_PACKAGES += \
  bcm4339.ko  \
  fakebattery \
  libandroid  \
  librecovery \
  nfcd        \
  rilproxy    \
