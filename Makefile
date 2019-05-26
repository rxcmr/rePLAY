ARCHS = armv7 armv7s arm64

INSTALL_TARGET_PROCESSES = Deepworld

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = rePLAY

rePLAY_FILES = Tweak.x
rePLAY_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += replayprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
