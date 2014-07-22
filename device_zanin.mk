$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/zanin/zanin-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/zanin/overlay

LOCAL_PATH := device/samsung/zanin
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    device/samsung/zanin/init/init.rc:root/init.rc \
    device/samsung/zanin/init/init.cm.rc:root/init.cm.rc \
    device/samsung/zanin/init/fstab.rhea_ss_zanin:root/fstab.rhea_ss_zanin \
    device/samsung/zanin/init/init.bcm2165x.usb.rc:root/init.bcm2165x.usb.rc \
    device/samsung/zanin/init/init.bt.rc:root/init.bt.rc \
    device/samsung/zanin/init/init.cm.rc:root/init.cm.rc \
    device/samsung/zanin/init/init.goldfish.rc:root/init.goldfish.rc \
    device/samsung/zanin/init/init.log.rc:root/init.log.rc \
    device/samsung/zanin/init/init.rhea_ss_zanin.rc:root/init.rhea_ss_zanin.rc \
    device/samsung/zanin/init/init.trace.rc:root/init.trace.rc \
    device/samsung/zanin/init/init.usb.rc:root/init.usb.rc \
    device/samsung/zanin/init/init.zram.sh:root/init.zram.sh \
    device/samsung/zanin/init/lpm.rc:root/lpm.rc \
    device/samsung/zanin/init/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    device/samsung/zanin/init/ueventd.rc:root/ueventd.rc \
    device/samsung/zanin/init/ueventd.rhea_ss_zanin.rc:root/ueventd.rhea_ss_zanin.rc 
#ADDING SOME PERMISSIONS
PRODUCT_COPY_FILES += \
    device/samsung/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    device/samsung/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    device/samsung/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    device/samsung/permissions/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    device/samsung/permissions/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    device/samsung/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_zanin
PRODUCT_DEVICE := zanin
