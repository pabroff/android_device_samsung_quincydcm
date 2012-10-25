# Copyright (C) 2009 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from common msm8660
-include device/samsung/quincy-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/quincydcm/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := SC-05D

# Assert
TARGET_OTA_ASSERT_DEVICE := SC-05D,quincydcm

# Kernel
TARGET_KERNEL_SOURCE        := kernel/samsung/msm8660-dcm
TARGET_KERNEL_CONFIG        := cyanogenmod_quincydcm_defconfig
BOARD_KERNEL_CMDLINE        := androidboot.hardware=qcom usb_id_pin_rework=true
BOARD_KERNEL_BASE           := 0x48000000
BOARD_FORCE_RAMDISK_ADDRESS := 0x49400000
BOARD_KERNEL_PAGESIZE       := 2048

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
# Normal system image size (1.0G)
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
# SD boot system image size (300M)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 314572800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072

# secondary sdcard
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk0p29

# vold
BOARD_VOLD_MAX_PARTITIONS := 29
