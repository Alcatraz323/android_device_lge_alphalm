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

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# OEM Info
BOARD_VENDOR := lge

# Identifier for common folder
COMMON_SOC := sm8150

# Define hardware platform
PRODUCT_PLATFORM := msmnile

# Release name
PRODUCT_RELEASE_NAME := alphalm

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := alphalm
PRODUCT_NAME := twrp_alphalm
PRODUCT_BRAND := lge
PRODUCT_MODEL := LM-G820
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=alphalm_lao_com \
    BUILD_PRODUCT=alphalm \
    TARGET_DEVICE=alphalm

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/$(PRODUCT_BRAND)/$(PRODUCT_DEVICE)/device.mk)
