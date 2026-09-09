# Updater
# Keep Updater available on unofficial builds too (uwuAOSP does the same), so
# "Install local update" works without IS_OFFICIAL=true.
PRODUCT_PACKAGES += \
    Updater

PRODUCT_COPY_FILES += \
    vendor/custom/config/permissions/privapp-permissions-custom.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-custom.xml
