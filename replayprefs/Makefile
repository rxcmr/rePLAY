include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = rePLAYprefs

rePLAYprefs_FILES = XXXRootListController.m
rePLAYprefs_INSTALL_PATH = /Library/PreferenceBundles
rePLAYprefs_FRAMEWORKS = UIKit
rePLAYprefs_PRIVATE_FRAMEWORKS = Preferences
rePLAYprefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/rePLAYprefs.plist$(ECHO_END)
