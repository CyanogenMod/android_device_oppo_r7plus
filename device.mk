#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/oppo/r7plus

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product-if-exists, vendor/oppo/r7plus/r7plus-vendor.mk)

# Inherit from msm8939-common
$(call inherit-product, device/oppo/msm8939-common/msm8939.mk)

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml

# ACDB Loader calibration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/acdbdata/Bluetooth_cal.acdb:system/etc/acdbdata/15018/Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/General_cal.acdb:system/etc/acdbdata/15018/General_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/Global_cal.acdb:system/etc/acdbdata/15018/Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/Handset_cal.acdb:system/etc/acdbdata/15018/Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/Hdmi_cal.acdb:system/etc/acdbdata/15018/Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/Headset_cal.acdb:system/etc/acdbdata/15018/Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/Speaker_cal.acdb:system/etc/acdbdata/15018/Speaker_cal.acdb \
    $(LOCAL_PATH)/audio/acdbdata/WorkspaceFile.qwsp:system/etc/acdbdata/15018/WorkspaceFile.qwsp

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Dalvik/HWUI configs
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480

# Factory reset protection
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/config

# Fingerprint sensor
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

PRODUCT_PACKAGES += \
    fingerprint.msm8916 \
    fingerprintd

# GPS
PRODUCT_PACKAGES += \
    gps.msm8916

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf

# Input configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
