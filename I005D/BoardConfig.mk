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

# Inherit from device common
-include $(DEVICE_PATH)/BoardConfigCommon.mk

# TWRP device-specific build flags
TW_HAPTICS_TSPDRV := true
TW_NO_SCREEN_BLANK := true
TW_LOAD_VENDOR_MODULES := "adsp_loader_dlkm.ko focaltech_fts_rog.ko focaltech_fts_rog2.ko msm_drm.ko q6_dlkm.ko texfat.ko tntfs.ko"

#
# For local builds only
#
# Custom TWRP Versioning
ifneq ($(wildcard device/common/version-info/.),)
    CUSTOM_TWRP_DEVICE_VERSION := 0
endif
#
# end local build flags
#
