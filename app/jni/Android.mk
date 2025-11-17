LOCAL_PATH := $(call my-dir)

# Include SDL2's Android.mk (this will define the SDL2 module)
include $(LOCAL_PATH)/SDL/Android.mk

# Now build your game
include $(CLEAR_VARS)

LOCAL_MODULE := main
LOCAL_C_INCLUDES := $(LOCAL_PATH)/SDL/include
LOCAL_SRC_FILES := src/main.cpp
LOCAL_SHARED_LIBRARIES := SDL2
LOCAL_LDLIBS := -lGLESv2 -llog -landroid

include $(BUILD_SHARED_LIBRARY)
