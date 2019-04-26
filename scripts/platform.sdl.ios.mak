TOOLCHAIN = apple
EXE = bin

APPLE_PLATFORM ?= ios
APPLE_PLATFORM_MIN_VERSION = 8.0

ifeq ($(APPLE_PLATFORM),ios)
ARCHS ?= arm64 armv7
UI_REQUIRED_CAPABILITIES += armv7
else ifeq ($(APPLE_PLATFORM),ios-simulator)
ARCHS = x86_64
endif

BUILD_DIR := $(subst $(MODEL),$(APPLE_PLATFORM),$(BUILD_DIR))

ifdef ARCH
BUILD_DIR := $(BUILD_DIR)/$(ARCH)
endif
