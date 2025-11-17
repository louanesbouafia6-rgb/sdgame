#include <jni.h>
#include <android/log.h>

#define LOG_TAG "SimpleTest"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)

extern "C" JNIEXPORT jstring JNICALL
Java_org_libsdl_app_SDLActivity_nativeGetHint(JNIEnv* env, jclass cls, jstring name) {
    LOGI("Simple test library loaded!");
    return env->NewStringUTF("test");
}
