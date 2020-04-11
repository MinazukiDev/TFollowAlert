ARCHS = armv7 armv7s arm64 arm64e

PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

INSTALL_TARGET_PROCESSES = Twitter

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TFollowAlert

TFollowAlert_FILES = Tweak.xm
TFollowAlert_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
