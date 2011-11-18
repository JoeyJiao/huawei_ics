#PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
#    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
#    ro.com.google.clientidbase=android-google \
#    ro.com.android.wifi-watchlist=GoogleGuest \
#    ro.setupwizard.enterprise_mode=1 \
#    ro.com.android.dateformat=MM-dd-yyyy \
#    ro.com.android.dataroaming=false

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \
    device/huawei/CHANGELOG.mkdn:system/etc/CHANGELOG-CM.txt

# Common CM overlay
#PRODUCT_PACKAGE_OVERLAYS += device/huawei/overlay/common

PRODUCT_COPY_FILES += \
    device/huawei/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    device/huawei/prebuilt/common/bin/modelid_cfg.sh:system/bin/modelid_cfg.sh \
    device/huawei/prebuilt/common/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
    device/huawei/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    device/huawei/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    device/huawei/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    device/huawei/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    device/huawei/prebuilt/common/etc/profile:system/etc/profile \
    device/huawei/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    device/huawei/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    device/huawei/prebuilt/common/etc/init.d/01log:system/etc/init.d/01log \
    device/huawei/prebuilt/common/etc/init.d/02a2sd:system/etc/init.d/02a2sd \
    device/huawei/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit \
    device/huawei/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    device/huawei/prebuilt/common/bin/compcache:system/bin/compcache \
    device/huawei/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    device/huawei/prebuilt/common/bin/sysinit:system/bin/sysinit \
    device/huawei/prebuilt/common/xbin/htop:system/xbin/htop \
    device/huawei/prebuilt/common/xbin/irssi:system/xbin/irssi \
    device/huawei/prebuilt/common/xbin/powertop:system/xbin/powertop \
    device/huawei/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh \
    device/huawei/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/huawei/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Always run in insecure mode, enables root on user build variants
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0


