#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Security patch level
VENDOR_SECURITY_PATCH := 2025-04-01

# Inherit from xiaomi sm8450-common
include device/xiaomi/sm8450-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/xiaomi/ingres/BoardConfigVendor.mk

DEVICE_PATH := device/xiaomi/ingres

# Audio
AUDIO_FEATURE_ENABLED_CIRRUS_CALIBRATION_RESISTANCE := true
AUDIO_FEATURE_ENABLED_ULTRASOUND_PROXIMITY := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/properties/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/properties/vendor.prop

BOARD_DTBOIMG_PARTITION_SIZE := 26214400

# Screen density
TARGET_SCREEN_DENSITY := 395

# Vintf
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
	$(DEVICE_PATH)/vintf/compatibility_matrix.xml
