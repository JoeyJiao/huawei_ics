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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true
BUILD_OLD_LIBCAMERA := true

# Use the non-open-source parts, if they're present
-include device/huawei/c8500/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := msm7625
TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi
#TARGET_ARCH_VARIANT := armv6j
TARGET_ARCH_VARIANT := armv5te

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := false

TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/c8500/prebuilt/kernel
TARGET_PREBUILT_KERNEL := device/huawei/c8500/prebuilt/kernel

# Recovery
BOARD_LDPI_RECOVERY := true
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_BOOTLOADER_BOARD_NAME := C8500
#TARGET_BOARD_INFO_FILE := device/samsung/tuna/board-info.txt

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

# GPS
#BOARD_USES_QCOM_GPS := true
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 6225
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := C8500

# Browser
JS_ENGINE := v8

# Kernel
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_CMDLINE := mem=211M console=ttyMSM2,115200n8 androidboot.hardware=qcom console=ttyUSBCONSOLE0 androidboot.console=ttyUSBCONSOLE0
BOARD_KERNEL_PAGESIZE := 4096

# USB
#BOARD_CUSTOM_USB_CONTROLLER := ../../device/huawei/c8500/UsbController.cpp
#BOARD_USE_USB_MASS_STORAGE_SWITCH := true
#for VolumeManager.cpp
TARGET_USE_CUSTOM_LUN_FILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
#for recovery
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true
TARGET_SENSORS_NO_OPEN_CHECK := true
#BOARD_VENDOR_USE_AKMD := akm8973

# Audio
BOARD_USES_GENERIC_AUDIO := false
TARGET_PROVIDES_LIBAUDIO := true

# Graphics
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
BOARD_NO_RGBX_8888 := true
BOARD_EGL_CFG := device/huawei/c8500/prebuilt/system/lib/egl/egl.cfg
BOARD_HAS_LIMITED_EGL := true
#default is 12
TARGET_ELECTRONBEAM_FRAMES := 10
#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
#USE_OPENGL_RENDERER := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
#WIFI_DRIVER_FW_PATH_P2P     := "/device/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcm4319_apsta.bin"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcm4319.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/firmware/fw_bcm4319.bin nvram_path=/system/etc/firmware/nvram.txt"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcm4319.ko"
WPA_SUPPLICANT_VERSION := VER_0_6_X
#BOARD_WEXT_NO_COMBO_SCAN := true

# FM Radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#BOARD_FM_DEVICE := bcm4329

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0aa00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a6a0000
BOARD_FLASH_BLOCK_SIZE := 262144

TARGET_OTA_ASSERT_DEVICE := Huawei,C8500

#BOARD_USES_SECURE_SERVICES := true
