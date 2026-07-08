#
# OrangeFox-specific build variables for ASUS ROG Phone 5 / 5s (I005D / Anakin)
# Place this file in the device tree root:
#   device/asus/I005D/fox_I005D.mk
#
# Then add the following line to your twrp_I005D.mk:
#   $(call inherit-product-if-exists, $(DEVICE_PATH)/fox_I005D.mk)
#

# -------------------------
# Virtual A/B (VAB) support
# -------------------------
# This device uses Virtual A/B + vendor_boot-as-recovery (GKI model).
# The recovery ramdisk lives inside vendor_boot, NOT a dedicated recovery partition.
FOX_VIRTUAL_AB_DEVICE := 1

# -------------------------
# OrangeFox build identity
# -------------------------
FOX_BUILD_TYPE := Unofficial
FOX_MAINTAINER := YourName

# -------------------------
# Dynamic partitions
# -------------------------
# Super partition size for ROG Phone 5 (9,126,805,504 bytes = ~8.5GB)
OF_DYNAMIC_FULL_SIZE := 9126805504

# -------------------------
# Display / UI
# -------------------------
# ROG Phone 5 has a 144Hz AMOLED, 1080x2448 resolution
OF_SCREEN_H := 2448
OF_STATUS_H := 100
OF_STATUS_INDENT_LEFT := 48
OF_STATUS_INDENT_RIGHT := 48

# Keep navbar visible (ROG 5 has software navbar)
OF_HIDE_NOTCHBAR_BUTTON := 1

# -------------------------
# Crypto / Decryption
# -------------------------
# Enable metadata encryption decryption support
FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER := 1

# -------------------------
# Flashlight / LED
# -------------------------
OF_FLASHLIGHT_ENABLE := 1

# -------------------------
# AromaFM / extras
# -------------------------
# Disable MIUI-specific OrangeFox checks (not MIUI device)
OF_NO_MIUI_PATCH_WARNING := 1

# -------------------------
# Patch Installer
# -------------------------
# Automatically patch Magisk on ROM flash
OF_USE_MAGISKBOOT := 1
OF_USE_MAGISKBOOT_FOR_ALL_PATCHES := 1

# -------------------------
# Disable APEX SEPolicy (not applicable on stock ASUS ROM)
# -------------------------
OF_SKIP_MULTIUSER_FOLDERS_BACKUP := 1
