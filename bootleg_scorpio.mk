#
# Copyright (C) 2017-2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from scorpio device
$(call inherit-product, device/xiaomi/scorpio/device.mk)

# Add Framework boost
$(call inherit-product-if-exists, vendor/qcom/common/qti-vendor.mk)

# Inherit some common Bootleg stuff.
$(call inherit-product, vendor/bootleggers/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := bootleg_scorpio
PRODUCT_DEVICE := scorpio
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI Note 2
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="scorpio" \
    PRODUCT_NAME="scorpio" \
    PRIVATE_BUILD_DESC="scorpio-user 8.0.0 OPR1.170623.032 V9.6.1.0.OADMIFD release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/scorpio/scorpio:8.0.0/OPR1.170623.032/V9.6.1.0.OADMIFD:user/release-keys"

#Maintainer
PRODUCT_BUILD_PROP_OVERRIDES += \
DEVICE_MAINTAINERS="tribual"

#Make it official
BOOTLEGGERS_BUILD_TYPE=Shishufied

#select Bootanimation
TARGET_PICK_BOOTANIMATION="6,7,8"
