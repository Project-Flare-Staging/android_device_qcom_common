#
# SPDX-FileCopyrightText: Paranoid Android
# SPDX-License-Identifier: Apache-2.0
#

# Properties
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    persist.backup.ntpServer="0.pool.ntp.org"

ifneq ($(TARGET_EXCLUDE_QTI_PREBUILT_GPS),true)
# Get non-open-source specific aspects.
$(call inherit-product-if-exists, vendor/qcom/common/system/gps/gps-vendor.mk)
endif
