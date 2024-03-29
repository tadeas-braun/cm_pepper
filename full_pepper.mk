# Copyright (C) 2011 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for maguro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maguro, hence its name.
#
#
 
# Torch
PRODUCT_PACKAGES := \
    Torch

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

#charging animation
$(call inherit-product, device/sony/pepper/prebuilt/resources-480x854.mk)

# Inherit from lotus device
$(call inherit-product, device/sony/pepper/pepper.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_pepper
PRODUCT_DEVICE := pepper
PRODUCT_BRAND := Android
PRODUCT_MODEL := Xperia Sola
PRODUCT_MANUFACTURER := Sony
#PRODUCT_RESTRICT_VENDOR_FILES := owner path
