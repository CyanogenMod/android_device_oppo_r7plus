#
# Copyright (C) 2015 The CyanogenMod Project
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

LOCAL_PATH := $(call my-dir)

ifneq ($(filter r7plus, $(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

CMNLIB_IMAGES := \
    cmnlib.b00 cmnlib.b01 cmnlib.b02 cmnlib.b03 cmnlib.mdt

CMNLIB_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(CMNLIB_IMAGES)))
$(CMNLIB_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CMNlib firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CMNLIB_SYMLINKS)

ISDBTMM_IMAGES := \
    isdbtmm.b00 isdbtmm.b01 isdbtmm.b02 isdbtmm.b03 isdbtmm.mdt \

ISDBTMM_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(ISDBTMM_IMAGES)))
$(ISDBTMM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ISDBTMM firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ISDBTMM_SYMLINKS)

KEYMASTER_IMAGES := \
    keymaste.b00 keymaste.b01 keymaste.b02 keymaste.b03 keymaste.mdt

KEYMASTER_SYMLINKS :=$(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(KEYMASTER_IMAGES)))
$(KEYMASTER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Keymaster firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(KEYMASTER_SYMLINKS)

MODEM_IMAGES := \
    mba.b00 mba.mdt modem.b00 modem.b01 modem.b02 modem.b03 modem.b04 modem.b05 \
    modem.b06 modem.b07 modem.b08 modem.b09 modem.b10 modem.b11 modem.b12 modem.b13 \
    modem.b14 modem.b15 modem.b16 modem.b17 modem.b18 modem.b19 modem.b20 modem.b21 \
    modem.b22 modem.b23 modem.b24 modem.b25 modem.b26 modem.b27 modem.b28 modem.mdt modem.pr

MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MODEM_IMAGES)))
$(MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MODEM_SYMLINKS)

PLAYREAD_IMAGES := \
    playread.b00 playread.b01 playread.b02 playread.b03 playread.mdt

PLAYREAD_SYMLINKS :=$(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(PLAYREAD_IMAGES)))
$(PLAYREAD_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Playread firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(PLAYREAD_SYMLINKS)

WCNSS_IMAGES := \
    wcnss.b00 wcnss.b01 wcnss.b02 wcnss.b04 wcnss.b06 wcnss.b09 wcnss.b10 wcnss.b11 wcnss.mdt \

WCNSS_SYMLINKS :=$(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(WCNSS_IMAGES)))
$(WCNSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WCNSS firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WCNSS_SYMLINKS)

WIDEVINE_IMAGES := \
    widevine.b00 widevine.b01 widevine.b02 widevine.b03 widevine.mdt

WIDEVINE_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(WIDEVINE_IMAGES)))
$(WIDEVINE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Widevine firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WIDEVINE_SYMLINKS)

endif
