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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

# Inherit from OEM SoC-common
-include $(COMMON_PATH)/BoardConfigCommon.mk

# The real boot_a/boot_b partition size (confirmed via live `blockdev --getsize64`
# on the actual device: exactly 100663296) is what BOARD_BOOTIMAGE_PARTITION_SIZE
# in the sm8350-common tree already uses - but OrangeFox's own compiled
# flashing code rejects a boot.img that's *exactly* equal to the partition
# size ("size of image is larger than target device"), confirmed via a real
# on-device install attempt with an image that matched the partition size
# byte-for-byte. Trim 4KB of margin so the built image comes out marginally
# smaller and clears that check, without changing the real GPT partition size.
BOARD_BOOTIMAGE_PARTITION_SIZE := 100659200

# TWRP specific build flags
TW_FRAMERATE := 144
