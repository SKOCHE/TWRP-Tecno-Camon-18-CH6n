#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := CH6n

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from CH6n device
$(call inherit-product, device/Tecno/CH6n/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := CH6n
PRODUCT_NAME := twrp_CH6n
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CH6n
PRODUCT_MANUFACTURER := TECNO

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=TECNO-CH6n \
    PRODUCT_NAME=CH6n-OP \
    PRIVATE_BUILD_DESC="sys_tssi_64_tecno-user 12 SP1A.210812.016 176266 release-keys"

BUILD_FINGERPRINT := TECNO/TSSI/FULL-64:12/SP1A.210812.016/221201V353:user/release-keys
