include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = replayprefs
replayprefs_FILES = XXXRootListController.m
replayprefs_INSTALL_PATH = /Library/PreferenceBundles
replayprefs_FRAMEWORKS = UIKit
replayprefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/replayprefs.plist$(ECHO_END)
