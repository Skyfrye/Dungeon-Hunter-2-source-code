// Port settings JNI (Track B, not in the original): the Java session dialog (SessionUi) reads and writes the port settings
// (core-platform/port_settings.hpp) through these two natives on DungeonHunter2. Set() only records the value; the game
// thread applies it at the start of its next frame (dh2port::Apply in appUpdate).
#if defined(__ANDROID__)
#include <jni.h>

#include "core-platform/port_settings.hpp"

extern "C" JNIEXPORT jint JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeGetPortSetting(JNIEnv* env, jclass,
                                                                                                                  jstring key) {
    if (key == nullptr) {
        return -1;
    }
    const char* k = env->GetStringUTFChars(key, nullptr);
    const int value = dh2port::Get(k, -1);
    env->ReleaseStringUTFChars(key, k);
    return value;
}

extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeSetPortSetting(JNIEnv* env, jclass,
                                                                                                                  jstring key, jint value) {
    if (key == nullptr) {
        return;
    }
    const char* k = env->GetStringUTFChars(key, nullptr);
    dh2port::Set(k, value);
    env->ReleaseStringUTFChars(key, k);
}
#endif
