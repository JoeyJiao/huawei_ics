#
# Copyright (C) 2011 The Android Open-Source Project
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

# This file includes all definitions that apply to c8500 devices, and
# are also specific to c8500 devices
#
# Everything in this directory will become public

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/huawei/c8500/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
PRODUCT_COPY_FILES := \
	$(LOCAL_KERNEL):kernel

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_as_supl.mk)

#PRODUCT_PACKAGE_OVERLAYS += device/huawei/overlay/ldpi
#PRODUCT_PACKAGE_OVERLAYS += device/huawei/c8500/overlay
DEVICE_PACKAGE_OVERLAYS += device/huawei/c8500/overlay
PRODUCT_LOCALES += ldpi mdpi

PRODUCT_AAPT_CONFIG := ldpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

PRODUCT_PACKAGES += \
	rzscontrol

#	charger \
#	charger_res_images
PRODUCT_PACKAGES += \
	lights.default \
    	gralloc.msm7625 \
	audio.primary.msm7625 \
	audio_policy.msm7625 \
	Gallery
#    	liboverlay \
#    	overlay.default \
#    	gps.C8500 \
#    	libRS \
#    	libOmxCore \
#    	libmm-omxcore \
#    	Gallery

PRODUCT_COPY_FILES += \
	device/huawei/c8500/prebuilt/init.qcom.rc:root/init.qcom.rc \
	device/huawei/c8500/prebuilt/init.qcom.usb.rc:root/init.qcom.usb.rc \
	device/huawei/c8500/prebuilt/ueventd.qcom.rc:root/ueventd.qcom.rc \
	device/huawei/c8500/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni

# Live Wallpapers support
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Compcache
PRODUCT_COPY_FILES += \
    device/huawei/c8500/prebuilt/system/lib/modules/ramzswap.ko:system/lib/modules/2.6.32.9-perf/kernel/drivers/staging/ramzswap/ramzswap.ko

# Board-specific init
PRODUCT_COPY_FILES += \
    device/huawei/c8500/prebuilt/initlogo.rle:root/initlogo.rle

# configuration
PRODUCT_COPY_FILES += \
    device/huawei/c8500/prebuilt/system/usr/idc/7k_handset.idc:system/usr/idc/7k_handset.idc
    device/huawei/c8500/prebuilt/system/usr/idc/cypress-ts-innolux_Ver04.idc:system/usr/idc/cypress-ts-innolux_Ver04.idc
    device/huawei/c8500/prebuilt/system/usr/idc/kp_test_input.idc:system/usr/idc/kp_test_input.idc
    device/huawei/c8500/prebuilt/system/usr/idc/melfas-touchscreen.idc:system/usr/idc/melfas-touchscreen.idc
    device/huawei/c8500/prebuilt/system/usr/idc/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc
    device/huawei/c8500/prebuilt/system/usr/idc/surf_keypad.idc:system/usr/idc/surf_keypad.idc
    device/huawei/c8500/prebuilt/system/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc
    device/huawei/c8500/prebuilt/system/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc
    device/huawei/c8500/prebuilt/system/usr/idc/touchscreen-keypad.idc:system/usr/idc/touchscreen-keypad.idc
    device/huawei/c8500/prebuilt/system/usr/idc/ts_test_input.idc:system/usr/idc/ts_test_input.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Virtual.kcm:system/usr/keychars/Virtual.kcm

# Dummy backing file for USB mounting
PRODUCT_COPY_FILES += \
    device/huawei/c8500/prebuilt/system/cdrom/autorun.iso:system/cdrom/autorun.iso

# vold to mount sdcard automatically
PRODUCT_COPY_FILES += \
    device/huawei/c8500/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab

# device right
PRODUCT_COPY_FILES += \
    device/huawei/c8500/prebuildt/ueventd.qcom.rc:root/ueventd.qcom.rc

# DHCP config for wifi
PRODUCT_COPY_FILES += \
    device/huawei/c8500/prebuilt/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf
# wpa_supplicant, soft ap configuration
PRODUCT_COPY_FILES += \
    device/huawei/c8500/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/huawei/c8500/prebuilt/system/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf
# C8500 WIFI using bcm4319
PRODUCT_COPY_FILES += \
    device/huawei/c8500/prebuilt/system/etc/firmware/fw_bcm4319.bin:system/etc/firmware/fw_bcm4319.bin \
    device/huawei/c8500/prebuilt/system/etc/firmware/fw_bcm4319_apsta.bin:system/etc/firmware/fw_bcm4319_apsta.bin \
    device/huawei/c8500/prebuilt/system/etc/firmware/nvram.txt:system/etc/firmware/nvram.txt \
    device/huawei/c8500/prebuilt/system/lib/modules/bcm4319.ko:system/lib/modules/bcm4319.ko

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Proprietary RIL related
PRODUCT_COPY_FILES += \
    device/huawei/proprietary/common/rild:system/bin/rild \
    device/huawei/proprietary/common/libril.so:obj/lib/libril.so \
    device/huawei/proprietary/common/libril.so:system/lib/libril.so \
    device/huawei/proprietary/common/libauth.so:system/lib/libauth.so \
    device/huawei/proprietary/common/libril-qc-1.so:system/lib/libril-qc-1.so \
    device/huawei/proprietary/common/liboncrpc.so:system/lib/liboncrpc.so \
    device/huawei/proprietary/common/libdsm.so:system/lib/libdsm.so \
    device/huawei/proprietary/common/libqueue.so:system/lib/libqueue.so \
    device/huawei/proprietary/common/libcm.so:system/lib/libcm.so \
    device/huawei/proprietary/common/libdiag.so:system/lib/libdiag.so \
    device/huawei/proprietary/common/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    device/huawei/proprietary/common/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    device/huawei/proprietary/common/libgstk_exp.so:system/lib/libgstk_exp.so \
    device/huawei/proprietary/common/libwms.so:system/lib/libwms.so \
    device/huawei/proprietary/common/libnv.so:system/lib/libnv.so \
    device/huawei/proprietary/common/libwmsts.so:system/lib/libwmsts.so \
    device/huawei/proprietary/common/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    device/huawei/proprietary/common/libdss.so:system/lib/libdss.so \
    device/huawei/proprietary/common/libdll.so:system/lib/libdll.so \
    device/huawei/proprietary/common/libqmi.so:system/lib/libqmi.so \
    device/huawei/proprietary/common/libpbmlib.so:system/lib/libpbmlib.so \
    device/huawei/proprietary/common/qmuxd:system/bin/qmuxd \
    device/huawei/proprietary/common/hci_qcomm_init:system/bin/hci_qcomm_init

# camera
PRODUCT_COPY_FILES += \
    device/huawei/proprietary/common/libcamera.so:obj/lib/libcamera.so \
    device/huawei/proprietary/common/libcamera.so:system/lib/libcamera.so \
    device/huawei/proprietary/common/libqcamera.so:system/lib/libqcamera.so \
    device/huawei/proprietary/common/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/huawei/proprietary/common/libmmipl.so:system/lib/libmmipl.so \
    device/huawei/proprietary/common/libmmprocess.so:system/lib/libmmprocess.so \
    device/huawei/proprietary/common/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

# Sound and OMX
PRODUCT_COPY_FILES += \
    device/huawei/c8500/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/c8500/prebuilt/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/huawei/proprietary/common/libaudioeq.so:system/lib/libaudioeq.so \
    device/huawei/proprietary/common/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    device/huawei/proprietary/common/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    device/huawei/proprietary/common/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    device/huawei/proprietary/common/libOmxVidEnc.so:system/lib/libOmxVidEnc.so

# HW
PRODUCT_COPY_FILES += \
    device/huawei/proprietary/common/sensors.default.so:system/lib/hw/sensors.default.so

# OEM RPC
PRODUCT_COPY_FILES += \
    device/huawei/proprietary/common/modempre:system/bin/modempre \
    device/huawei/proprietary/common/oem_rpc_svc:system/bin/oem_rpc_svc \
    device/huawei/proprietary/common/libhwrpc.so:system/lib/libhwrpc.so \
    device/huawei/proprietary/common/liboem_rapi.so:system/lib/liboem_rapi.so

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
	system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=65537

# Don't put dexfiles in /cache on C8500
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1

#wifi
PRODUCT_PROPERTY_OVERRIDES := \
	wifi.interface=eth0 \
	wifi.supplicant_scan_interval=30

# Perfomance tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:jit \
    persist.sys.use_dithering=0 \
    persist.sys.purgeable_assets=1 \
    ro.compcache.default=18 \
    dalvik.vm.checkjni=0 \
    ro.kernel.android.checkjni=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cdma.home.operator.alpha=中国电信 \
    ro.config.cdma_subscription=0 \
    ril.subscription.types=RUIM,NV \
    ro.cdma.voicemail.number=mine \
    ro.setupwizard.enable_bypass=1 \
    ro.telephony.default_network=4 \
    ro.sf.lcd_density=120 \
    ro.com.android.dataroaming=false \
    telephony.lteOnCdmaDevice=1

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

#PRODUCT_CHARACTERISTICS := nosdcard

#PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs

# for bugmailer
ifneq ($(TARGET_BUILD_VARIANT),user)
	PRODUCT_PACKAGES += send_bug
	PRODUCT_COPY_FILES += \
		system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
		system/extras/bugmailer/send_bug:system/bin/send_bug
endif

$(call inherit-product, frameworks/base/build/phone-hdpi-dalvik-heap.mk)
