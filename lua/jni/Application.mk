APP_STL := gnustl_static

APP_CPPFLAGS := -frtti -DCC_ENABLE_CHIPMUNK_INTEGRATION=1 -std=c++11 -fsigned-char -DCC_USE_YOUME -DCC_USE_ADJUST
APP_LDFLAGS := -latomic
APP_CPPFLAGS += -fexceptions
NDK_TOOLCHAIN_VERSION := 4.8
APP_PLATFORM := android-9

APP_ABI := all
