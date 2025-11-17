LOCAL_PATH := $(call my-dir)

# SDL2 module
include $(CLEAR_VARS)
LOCAL_MODULE := SDL2
LOCAL_SRC_FILES := $(LOCAL_PATH)/SDL/Android.mk
include $(LOCAL_PATH)/SDL/Android.mk

# Your game
include $(CLEAR_VARS)
LOCAL_MODULE := main
LOCAL_C_INCLUDES := $(LOCAL_PATH)/SDL/include
LOCAL_SRC_FILES := src/main.cpp
LOCAL_SHARED_LIBRARIES := SDL2
LOCAL_LDLIBS := -lGLESv2 -llog -landroid
include $(BUILD_SHARED_LIBRARY)
