INSTALL_TARGET_PROCESSES = Deepworld
ARCHS = arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = rePLAY

rePLAY_FILES = Tweak.x
rePLAY_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += prefbundle
SUBPROJECTS += replayprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
