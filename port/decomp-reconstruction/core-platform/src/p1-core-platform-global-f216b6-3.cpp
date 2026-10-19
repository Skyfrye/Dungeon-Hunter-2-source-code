// Batch p1-core-platform-global-f216b6-3: the Android app-event JNI natives of the platform pass and the Musicplayer glue.
// The DungeonHunter2 natives forward to the app-event functions (appPause, appResume, appKeyPressed, ...) and keep the
// orientation, accelerometer and launch state. GameGLSurfaceView.nativeOnTouch builds the touch time. Musicplayer's
// nativeInitplayer looks up the class and its methods, and the four calls below use those IDs.
//
// Hex-Rays is the primary source. The ARM listing (tools/decomp_asm.py) settles the points the Hex-Rays signatures do not
// show:
//   - nativeAccelerometer stores its three jfloat arguments as raw 32-bit words (x in r2, y in r3, z on the stack).
//   - nativeOnTouch: the jlong is on the stack at +8 (the int at +0, padding at +4). appOnTouch receives its low word as
//     the 8th argument. Its arguments are (a3, a4, a5, time, 1, a9, a10, low word of the jlong).
//   - nativeInitplayer: NewGlobalRef takes the jclass in r1. Hex-Rays shows that call with one argument.
//   - nativeIsSupportMM: the second appDebugLog text is 68 '0' characters (.rodata at 0x9296624), not a placeholder.
//   - nativeGetInfo: the four jstrings go to GetStringUTFChars through the env argument (not the mEnv global), and each
//     copy goes to strdup. The copies are never freed, as in the binary.
// Java natives in this batch are static. Only nativeCanInterrupt, nativeGetGameMusicVolume and nativegetState return
// a value to Java (int). nativeIsSupportMM is a C function that returns int.

#include <cstdint>
#include <cstdlib>
#include <cstring>

#include <sys/time.h>

#include "core-platform/debug_out.hpp"
#include "core-platform/tb/android_jni_app_events.hpp"
#include "core-platform/tb/android_jni_musicplayer.hpp"
#include "core-platform/tb/android_jni_platform.hpp"
#include "core-platform/w7_global_02.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/platform_app.hpp"

namespace {

// GetStaticMethodID (+452). Every method lookup in this batch goes through here, on the global mEnv.
jmethodID GetStaticMethod(jclass cls, const char* name, const char* signature) {
    return mEnv->functions->GetStaticMethodID(mEnv, cls, name, signature);
}

// The raw 32-bit word of a jfloat argument. The binary stores the argument register as it is.
std::uint32_t FloatWord(jfloat value) {
    std::uint32_t word = 0;
    std::memcpy(&word, &value, sizeof word);
    return word;
}

// strdup as the binary calls it: a malloc'd copy of the text. The strict C++17 build hides the POSIX name on MinGW, so the
// copy is spelled out. Like the original, nothing frees it.
char* DuplicateText(const char* text) {
    const std::size_t length = std::strlen(text) + 1;
    char* copy = static_cast<char*>(std::malloc(length));
    std::memcpy(copy, text, length);
    return copy;
}

// The second text that nativeIsSupportMM passes to appDebugLog (.rodata at 0x9296624, length 68): 68 '0' characters.
const char kZeroText68[] = "00000000000000000000000000000000000000000000000000000000000000000000";

}  // namespace

// Globals of this batch. Their .data initial values are read from the binary: mTimeCallbackFinished, Orientation and
// Enable_Orientation start at 1, and Touch_Hack_int is zero in .bss. The accelerometer words are defined in
// game-app/src/Globals.cpp. The Musicplayer IDs are file-local .bss words in the binary and zero at start.
int mTimeCallbackFinished = 1;  // .data, 0x99b104
int Orientation = 1;            // .data, 0x99b11c
int Enable_Orientation = 1;     // .data, 0x99b120
int Touch_Hack_int = 0;         // .bss, 0x9f6514

jclass mClassMusicplayer = nullptr;
jmethodID mMethodGetNumPlaylists = nullptr;
jmethodID mMethodGetPlaylistName = nullptr;
jmethodID mMethodSetPlaylist = nullptr;
jmethodID mMethodPlayBGMusic = nullptr;
jmethodID mMethodnativeChangeStep = nullptr;
jmethodID mMethodResumeMusicBG = nullptr;
jmethodID mMethodPauseMusicBG = nullptr;
jmethodID mMethodStopMusicBG = nullptr;
jmethodID mMethodGetisplaying = nullptr;

// 0x532ea8 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeCanInterrupt
// Returns the .data word mTimeCallbackFinished. Static native returning int.
extern "C" JNIEXPORT jint JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeCanInterrupt(JNIEnv*,
                                                                                                             jclass) {
    return mTimeCallbackFinished;
}

// 0x532ec8 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeAccelerometer
// Stores y into mAccelerometerY, x into mAccelerometerX and z into mAccelerometerZ, as raw words. Static native
// nativeAccelerometer(float, float, float), void. The binary returns &mAccelerometerZ in r0, which the void Java side drops.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeAccelerometer(
    JNIEnv*, jclass, jfloat x, jfloat y, jfloat z) {
    mAccelerometerY = FloatWord(y);
    mAccelerometerX = FloatWord(x);
    mAccelerometerZ = FloatWord(z);
}

// 0x532f68 nativeIncreaseLaunchTimes
// CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodIncreaseLaunchTimes) (+564). The Hex-Rays int is the r0 left by
// that void call, so the function returns nothing.
extern "C" void nativeIncreaseLaunchTimes() {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodIncreaseLaunchTimes);
}

// 0x533400 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeOpenIGM
// m_bOpenIGM = 1, then appPause(). The int result is dropped by the void Java native.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeOpenIGM(JNIEnv*, jclass) {
    m_bOpenIGM = 1;
    (void)appPause();
}

// 0x533424 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativePause
// Thunk: B appPause. The int argument is not used.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativePause(JNIEnv*, jclass,
                                                                                                      jint) {
    (void)appPause();
}

// 0x533428 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeKeyUp
// Thunk: MOV R0,R2; B appKeyReleased. The key code (the third JNI word) goes to appKeyReleased. Its MenuManager result is
// dropped by the void Java native.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeKeyUp(JNIEnv*, jclass,
                                                                                                      jint keyCode) {
    (void)appKeyReleased(keyCode);
}

// 0x533430 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeonTrackballEvent
// appTrackBall(). The int argument is not used (Hex-Rays shows no argument).
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeonTrackballEvent(JNIEnv*,
                                                                                                                 jclass,
                                                                                                                 jint) {
    appTrackBall();
}

// 0x533438 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeKeyDown
// Returns appKeyPressed(). The Java native is void, so the int result is dropped. The key code is not passed (Hex-Rays
// shows no argument).
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeKeyDown(JNIEnv*, jclass,
                                                                                                        jint) {
    (void)appKeyPressed();
}

// 0x533440 Java_com_gameloft_android_GAND_GloftD2SS_GameGLSurfaceView_nativeOnTouch
// ARM: when Touch_Hack_int is 1 the native returns, with r0 unchanged, which the void Java side ignores. Otherwise it calls
// gettimeofday(&tv, NULL) and computes time = tv.tv_usec / 1000 + 1000 * tv.tv_sec in 32-bit arithmetic, then calls
// appOnTouch(a3, a4, a5, time, 1, a9, a10, low word of javaTime). Static native, void.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameGLSurfaceView_nativeOnTouch(
    JNIEnv*, jclass, jint a3, jint a4, jint a5, jlong javaTime, jint a9, jint a10) {
    if (Touch_Hack_int == 1) {
        return;
    }
    timeval tv{};
    gettimeofday(&tv, nullptr);
    const std::uint32_t timeMs =
        static_cast<std::uint32_t>(tv.tv_usec / 1000) + 1000u * static_cast<std::uint32_t>(tv.tv_sec);
    const int javaTimeLow = static_cast<int>(static_cast<std::uint32_t>(javaTime));
    (void)appOnTouch(a3, a4, a5, static_cast<int>(timeMs), 1, a9, a10, javaTimeLow);
}

// 0x5334dc Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeResume
// m_bOpenIGM = 0, then appResume(). The float result is dropped by the void Java native.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeResume(JNIEnv*, jclass,
                                                                                                       jint) {
    m_bOpenIGM = 0;
    (void)appResume();
}

// 0x533500 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeSetOrientation
// When Enable_Orientation is non-zero and the value differs from Orientation, SetFinalOrientation(value) runs, and then
// Orientation takes the value. Static native, void.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeSetOrientation(
    JNIEnv*, jclass, jint orientation) {
    if (Enable_Orientation == 0) {
        return;
    }
    if (orientation == Orientation) {
        return;
    }
    (void)SetFinalOrientation(orientation);
    Orientation = orientation;
}

// 0x533554 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeGetGameMusicVolume
// Thunk: B GetGameMusicVolume. Static native returning int.
extern "C" JNIEXPORT jint JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeGetGameMusicVolume(JNIEnv*,
                                                                                                                  jclass) {
    return GetGameMusicVolume();
}

// 0x533558 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativegetState
// Returns getState(). The int argument is not used. Static native returning int.
extern "C" JNIEXPORT jint JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativegetState(JNIEnv*, jclass,
                                                                                                         jint) {
    return getState();
}

// 0x533570 nativeIsSupportMM
// appDebugLog("Orientation not Enable for this proffile", <68 '0' characters>), then
// CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodIsSupportMM) (+516), returned as int.
extern "C" int nativeIsSupportMM() {
    appDebugLog("Orientation not Enable for this proffile", kZeroText68);
    return mEnv->functions->CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodIsSupportMM);
}

// 0x5335d4 Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeGetInfo
// GetStringUTFChars(env, a3, NULL) (+676) and strdup of the result, then the same for a4, a5 and a6, in order. The binary
// returns the strdup of a6 (a tail call), and the void Java side drops it here. The copies are never freed.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeGetInfo(
    JNIEnv* env, jclass, jstring a3, jstring a4, jstring a5, jstring a6) {
    (void)DuplicateText(env->functions->GetStringUTFChars(env, a3, nullptr));
    (void)DuplicateText(env->functions->GetStringUTFChars(env, a4, nullptr));
    (void)DuplicateText(env->functions->GetStringUTFChars(env, a5, nullptr));
    (void)DuplicateText(env->functions->GetStringUTFChars(env, a6, nullptr));
}

// 0x533658 Java_com_gameloft_android_GAND_GloftD2SS_Musicplayer_nativeInitplayer
// mEnv = env. mClassMusicplayer = NewGlobalRef(env, cls) (+84, the jclass in r1). Then nine GetStaticMethodID lookups (+452)
// on that class, in this order: GetNumPlaylists ()I, GetPlayListName (I)[B, SetPlaylist (I)V, PlayBGMusic ()V,
// ChangeMusic (I)V, ResumeMusicBG ()V, PauseMusicBG ()V, StopMusicBG ()V and Getisplaying ()I. The last ID is also
// returned in r0, which the void Java native drops. Static native, void.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_Musicplayer_nativeInitplayer(JNIEnv* env,
                                                                                                        jclass cls) {
    mEnv = env;
    mClassMusicplayer = static_cast<jclass>(env->functions->NewGlobalRef(env, cls));  // +84
    mMethodGetNumPlaylists = GetStaticMethod(mClassMusicplayer, "GetNumPlaylists", "()I");
    mMethodGetPlaylistName = GetStaticMethod(mClassMusicplayer, "GetPlayListName", "(I)[B");
    mMethodSetPlaylist = GetStaticMethod(mClassMusicplayer, "SetPlaylist", "(I)V");
    mMethodPlayBGMusic = GetStaticMethod(mClassMusicplayer, "PlayBGMusic", "()V");
    mMethodnativeChangeStep = GetStaticMethod(mClassMusicplayer, "ChangeMusic", "(I)V");
    mMethodResumeMusicBG = GetStaticMethod(mClassMusicplayer, "ResumeMusicBG", "()V");
    mMethodPauseMusicBG = GetStaticMethod(mClassMusicplayer, "PauseMusicBG", "()V");
    mMethodStopMusicBG = GetStaticMethod(mClassMusicplayer, "StopMusicBG", "()V");
    mMethodGetisplaying = GetStaticMethod(mClassMusicplayer, "Getisplaying", "()I");
}

// 0x533850 nativeSetPlaylist
// CallStaticVoidMethod(mEnv, mClassMusicplayer, mMethodSetPlaylist, playlist) (+564). The Hex-Rays int is the r0 left by
// the void call, so the function returns nothing.
extern "C" void nativeSetPlaylist(int playlist) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassMusicplayer, mMethodSetPlaylist, playlist);
}

// 0x53389c nativeChangeStep
// CallStaticVoidMethod(mEnv, mClassMusicplayer, mMethodnativeChangeStep, step) (+564). Void, as nativeSetPlaylist.
extern "C" void nativeChangeStep(int step) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassMusicplayer, mMethodnativeChangeStep, step);
}

// 0x5338e8 nativeResumeMusicBG
// CallStaticVoidMethod(mEnv, mClassMusicplayer, mMethodResumeMusicBG) (+564). Void.
extern "C" void nativeResumeMusicBG() {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassMusicplayer, mMethodResumeMusicBG);
}

// 0x533930 nativeStopMusicBG
// CallStaticVoidMethod(mEnv, mClassMusicplayer, mMethodStopMusicBG) (+564). Void.
extern "C" void nativeStopMusicBG() {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassMusicplayer, mMethodStopMusicBG);
}
