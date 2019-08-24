#
# Copyright 2017 The Android Open Source Project
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

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

# Platform
TARGET_BOARD_PLATFORM := mt6737t

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6737t
TARGET_NO_BOOTLOADER := true
# TARGET_NO_FACTORYIMAGE := true

# Filesystems
TARGET_USERIMAGES_USE_EXT4 := true

# Kernel
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_KERNEL_SOURCE := kernel/samsung/grandpplte
TARGET_KERNEL_CONFIG := grandpplte_defconfig
BOARD_KERNEL_BASE := 0x3fffc000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x04004000
BOARD_TAGS_OFFSET := 0x0E004000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2 androidboot.selinux=permissive
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)
KERNEL_TOOLCHAIN_PREFIX := arm-linux-androidkernel-

# Recovery
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# Storage Allocations
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
#BOARD_FLASH_BLOCK_SIZE := 131072

# TWRP Flags
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
TW_DEVICE_VERSION := Galaxy J2 Prime
# TW_DEVICE_VERSION ?= $(shell date -u +"%Y%m%d_%H%M")
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_INCLUDE_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 100
TW_INCLUDE_FB2PNG := true
TW_REBOOT_BOOTLOADER := true
TW_REBOOT_RECOVERY := true
TW_EXCLUDE_SUPERSU := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_INCLUDE_FUSE_EXFAT := true # exFAT FS Support
TW_INCLUDE_FUSE_NTFS := true  # NTFS Support
