LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := lua

LOCAL_MODULE_FILENAME := liblua

 

# compile in ARM mode, since the glyph loader/renderer is a hotspot
# when loading complex pages in the browser
#LOCAL_ARM_MODE := arm

LOCAL_CFLAGS += -fexceptions
#LOCAL_CFLAGS +=  -D__LINUX_CPL__ -DANDROID_NDK -DUNICODE -DFT2_BUILD_LIBRARY
#LOCAL_CFLAGS += -fPIC -DPIC
#LOCAL_CFLAGS += "-DDARWIN_NO_CARBON"
#LOCAL_CFLAGS += "-DFT2_BUILD_LIBRARY"

#lua
  LOCAL_SRC_FILES += ../src/lapi.c \
                     ../src/lauxlib.c \
                    ../src/lbaselib.c \
                    ../src/lcode.c \
                    ../src/ldblib.c \
                    ../src/ldebug.c \
                    ../src/ldo.c \
                    ../src/ldump.c \
                    ../src/lfunc.c \
                    ../src/lgc.c \
                    ../src/linit.c \
                    ../src/liolib.c \
                    ../src/llex.c \
                    ../src/lmathlib.c \
                    ../src/lmem.c \
                    ../src/loadlib.c \
                    ../src/lobject.c \
                    ../src/lopcodes.c \
                    ../src/loslib.c \
                    ../src/lparser.c \
                    ../src/lstate.c \
                    ../src/lstring.c \
                    ../src/lstrlib.c \
                    ../src/ltable.c \
                    ../src/ltablib.c \
                    ../src/ltm.c \
                    ../src/lundump.c \
                    ../src/lvm.c \
                    ../src/lzio.c \
                    ../src/print.c

#LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/bsdiff \
#                    $(LOCAL_PATH)/bzlib/


LOCAL_C_INCLUDES := $(LOCAL_PATH)/../include/ 
					

include $(BUILD_STATIC_LIBRARY)

