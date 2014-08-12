$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product, vendor/samsung/zanin/zanin-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += overlay

LOCAL_PATH := device/samsung/zanin
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \

#boot img files
PRODUCT_COPY_FILES += \
    device/samsung/zanin/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/samsung/zanin/etc/dhcpcd/dhcpcd-run-hooks:system/etc/dhcpcd/dhcpcd-run-hooks \
    device/samsung/zanin/etc/usb_portd.conf:system/etc/usb_portd.conf \
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
    device/samsung/zanin/init/ueventd.rhea_ss_zanin.rc:root/ueventd.rhea_ss_zanin.rc \


#modules
PRODUCT_COPY_FILES += \
    device/samsung/zanin/modules/j4fs.ko:system/etc/modules/j4fs.ko\
    device/samsung/zanin/modules/VoiceSolution.ko:system/etc/modules/VoiceSolution.ko \

#keyboard
PRODUCT_COPY_FILES += \
    device/samsung/zanin/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/samsung/zanin/keylayout/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
    device/samsung/zanin/keylayout/bcm_keypad_v2.kcm:system/usr/keylayout/bcm_keypad_v2.kcm \
    device/samsung/zanin/keylayout/bcm_keypad_v2.kl:system/usr/keylayout/bcm_keypad_v2.kl \
    device/samsung/zanin/keylayout/Generic.kcm:system/usr/keylayout/Generic.kcm \
    device/samsung/zanin/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/samsung/zanin/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/samsung/zanin/keylayout/qwerty.kcm:system/usr/keylayout/qwerty.kcm \
    device/samsung/zanin/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/samsung/zanin/keylayout/qwerty2.kcm:system/usr/keylayout/qwerty2.kcm \
    device/samsung/zanin/keylayout/samsung-keypad.kl:system/usr/keylayout/samsung-keypad.kl \
    device/samsung/zanin/keylayout/Virtual.kcm:system/usr/keylayout/Virtual.kcm \
    device/samsung/zanin/keychars/bcm_keypad_v2.kcm:system/usr/keychars/bcm_keypad_v2.kcm \
    device/samsung/zanin/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/samsung/zanin/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/samsung/zanin/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/samsung/zanin/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
#wifi
PRODUCT_COPY_FILES += \
    device/samsung/zanin/wifi/bcmdhd_apsta.bin_b2:system/etc/wifi/bcmdhd_apsta.bin_b2 \
    device/samsung/zanin/wifi/bcmdhd_mfg.bin_b2:system/etc/wifi/bcmdhd_mfg.bin_b2 \
    device/samsung/zanin/wifi/bcmdhd_p2p.bin_b2:system/etc/wifi/bcmdhd_p2p.bin_b2 \
    device/samsung/zanin/wifi/bcmdhd_sta.bin_b2:system/etc/wifi/bcmdhd_sta.bin_b2\
    device/samsung/zanin/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    device/samsung/zanin/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/samsung/zanin/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \

#gfx&other
PRODUCT_COPY_FILES += \
    device/samsung/zanin/gfx/gfx.fw:system/vendor/gfx.fw \
    device/samsung/zanin/configs/vold.conf:system/etc/vold.conf \
    device/samsung/zanin/configs/vold.fstab:system/etc/vold.fstab \
    device/samsung/zanin/configs/glconfig.xml:system/etc/gps/glconfig.xml \

$(call inherit-product, build/target/product/full.mk)


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_zanin
PRODUCT_DEVICE := zanin
