# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
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

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/samsung/i9300/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_i9300
PRODUCT_DEVICE := i9300
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9300

# Override common i9300 properties to show properly i.e. in google services
# This is required to solve some apps being incompatible with our device
# Values should be equal to newest Sammy's stock release, or adapted to Omni
# Currently they're stock, but we may want to change them in the future, such as:
# BUILD_FINGERPRINT="samsung/m0xx/m0:4.4.2/KVT49L/I9300OMNI:user/release-keys"
# PRIVATE_BUILD_DESC="m0xx-user 4.4.2 KVT49L I9300OMNI release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="samsung/m0xx/m0:4.3/JSS15J/I9300XXUGNA7:user/release-keys" \
    PRIVATE_BUILD_DESC="m0xx-user 4.3 JSS15J I9300XXUGNA7 release-keys" \
    TARGET_DEVICE=m0 \
    PRODUCT_DEVICE=m0 \
    PRODUCT_NAME=m0xx
