ARCHS = arm64 arm64e

THEOS_PACKAGE_SCHEME = rootless 

TARGET := iphone:clang:latest:7.0
PREFIX = $(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/

INSTALL_TARGET_PROCESSES = Snapchat

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SecretShotRootless

SecretShot_FILES = $(shell find Logos -name "*.x")
SecretShot_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS = SecretShotPreferences
include $(THEOS_MAKE_PATH)/aggregate.mk
