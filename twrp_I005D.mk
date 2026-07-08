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
#
# Only the below variable(s) need to be changed!
#
# Identifier for common folder
COMMON_SOC := sm8350

# Define hardware platform
PRODUCT_PLATFORM := lahaina

#
#
#
# The below variables will be generated automatically
#
#
# Release name (automatically taken from this file's suffix)
PRODUCT_RELEASE_NAME := I005D

# Identifier for common device tree folder
COMMON_FOLDER := I005D

# Custom vendor used in build tree (automatically taken from this file's prefix)
CUSTOM_VENDOR := twrp

# Inherit from our custom product configuration
$(call inherit-product, vendor/$(CUSTOM_VENDOR)/config/common.mk)

# OEM Info (automatically taken from device tree path)
BOARD_VENDOR := asus

# Common path for device trees
COMMON_PATH := device/$(BOARD_VENDOR)/$(COMMON_SOC)-common

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := I005D
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_$(PRODUCT_DEVICE)
PRODUCT_MANUFACTURER := asus

# Default device path for tree
DEVICE_PATH := device/$(PRODUCT_BRAND)/$(PRODUCT_DEVICE)

# Inherit OrangeFox-specific variables (VAB, dynamic partitions, display, etc.)
$(call inherit-product-if-exists, device/asus/I005D/fox_I005D.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/asus/I005D/device-I005D.mk)
