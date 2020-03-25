#
# Copyright 2016 The Android Open Source Project
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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

DEVICE_PATH := device/lge/q710

# Architecture
TARGET_BOARD_SUFFIX := _64

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8953
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 firmware_class.path=/vendor/firmware_mnt/image loop.max_part=7 androidboot.usbconfigfs=false androidboot.hardware=cv7a buildvariant=user
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x1E00000
BOARD_RAMDISK_OFFSET := 0x2000000
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/zImage-dtb

# Platform
TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x2000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x2000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0xc0000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0xC0000000
BOARD_VENDORIMAGE_PARTITION_SIZE := 0x20000000
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 0x40000

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP Configuration
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/twrp.fstab
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/soc/7000000.ssusb/7000000.dwc3/gadget/lun0/file"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi

# Disable Mouse Cursor
TW_INPUT_BLACKLIST := "hbtp_vm"
