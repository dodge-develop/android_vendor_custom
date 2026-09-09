CUSTOM_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)

CUSTOM_PLATFORM_VERSION := 17.0

CUSTOM_VERSION := $(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)
CUSTOM_VERSION_PROP := seventeen

# PixelOS Platform Version
PRODUCT_PRODUCT_PROPERTIES += \
    ro.custom.build.date=$(CUSTOM_BUILD_DATE) \
    ro.custom.device=$(CUSTOM_BUILD) \
    ro.custom.version=PixelOS_$(CUSTOM_VERSION) \
    net.pixelos.version=$(CUSTOM_VERSION_PROP)

# Updater
# net.pixelos.build_type must be non-empty for the Updater app; unofficial builds
# have no official update channel, so advertise themselves as "unofficial".
ifneq ($(IS_OFFICIAL),true)
    PRODUCT_PRODUCT_PROPERTIES += \
        net.pixelos.build_type=unofficial
else
    PRODUCT_PRODUCT_PROPERTIES += \
        net.pixelos.build_type=ci
endif
