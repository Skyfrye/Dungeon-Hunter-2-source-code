// Batch p1-core-platform-global-f216b6-0: the Android JNI glue of the platform pass (GameRenderer, GLMediaPlayer and
// the sound calls the game makes into Java), plus the empty native nativepauseAllMusic.
//
// Hex-Rays is the primary source. Where it differs from the ARM listing (tools/decomp_asm.py), the listing decides:
//   - nativePlaySound takes a third float argument (ARM: MOV r0,r2; BL __aeabi_f2d). The Hex-Rays signature drops it.
//   - The GameRenderer natives that Hex-Rays shows as empty are bare BX LR returns, and the tail calls are as shown.
// The sound calls go through the JNINativeInterface table by slot, not through the C++ _JNIEnv wrappers: the
// wrappers call the va_list (V) variants (slot 142), and the binary calls the variadic CallStaticVoidMethod
// (slot 141, byte offset 0x234 on 32-bit ARM).

#include "core-platform/tb/android_jni_bridge.hpp"
#include "core-platform/tb/app_lifecycle.hpp"

// Globals. Zero-initialised in the binary (.bss), except the window size (.data, 480 and 854).
// mEnv has one definition in the library code, here. tinyxml-and-c-libs/include/tinyxml-and-c-libs/jni_globals.hpp
// declares it extern and does not define it. The tinyxml test program defines its own copy, because it links without
// this file.
JNIEnv* mEnv = nullptr;
int m_bOpenIGM = 0;
int g_appAlive = 0;
int m_bOGLLostContext = 0;
int s_windowWidth = 480;
int s_windowHeight = 854;
jclass mClassGLMediaPlayer = nullptr;
jmethodID loadSoundID = nullptr;
jmethodID loadSoundBigID = nullptr;
jmethodID playSoundID = nullptr;
jmethodID playSoundBigID = nullptr;
jmethodID pauseSoundID = nullptr;
jmethodID pauseSoundBigID = nullptr;

// 0x52f0e4 nativepauseAllMusic
// ARM: BX LR. The symbol is referenced as data (a table entry at LOAD:0009D408), so it stays a C symbol.
extern "C" void nativepauseAllMusic() {}

// 0x531150 Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGameRenderer
// ARM: BX LR. Instance native GameRenderer.nativeGameRenderer().
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGameRenderer(JNIEnv*,
                                                                                                          jobject) {}

// 0x531154 Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeConfig
// ARM: BX LR. Static native GameRenderer.nativeConfig().
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeConfig(JNIEnv*, jclass) {}

// 0x531158 Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeOnDrawFrame
// ARM: BX LR. Static native GameRenderer.nativeOnDrawFrame().
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeOnDrawFrame(JNIEnv*,
                                                                                                          jclass) {}

// 0x53115c Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGetJNIEnv
// ARM: mEnv = r0 (the JNIEnv*), then BX LR with r0 unchanged. Instance native GameRenderer.nativeGetJNIEnv().
// The Java side is void, so the returned r0 is not used and the wrapper returns nothing.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGetJNIEnv(JNIEnv* env,
                                                                                                        jobject) {
    mEnv = env;
}

// 0x53117c Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeResize
// ARM: STM of r2 and r3 to s_windowWidth and s_windowHeight (s_windowHeight is at +4). Static native
// GameRenderer.nativeResize(int, int), so r2 and r3 are the two int arguments after the env and class.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeResize(JNIEnv*,
                                                                                                      jclass,
                                                                                                      jint width,
                                                                                                      jint height) {
    s_windowWidth = width;
    s_windowHeight = height;
    appResizeSurface(width, height);   // Track B (UI3): follow a surface resize after appInit (fold/unfold)
}

// 0x531190 Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeOnSurfaceChanged
// ARM: MOV r0,r2; MOV r1,r3; B nativeResize. The tail call leaves width and height in r2 and r3, which nativeResize
// stores. nativeResize never reads its first two arguments, so this forwards env and a null class in their place.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeOnSurfaceChanged(
    JNIEnv* env, jobject, jint width, jint height) {
    Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeResize(env, nullptr, width, height);
}

// 0x53119c Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeDone
// ARM: B appDestroy (tail call), so the call forwards to it. Static native GameRenderer.nativeDone(). The int result
// is dropped because the Java side is void.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeDone(JNIEnv*, jclass) {
    (void)appDestroy();
}

// 0x5311a0 Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeRender
// ARM: if (m_bOpenIGM == 0) tail-call appUpdate, else BX LR with r0 unchanged. Static native
// GameRenderer.nativeRender(). The int result is dropped because the Java side is void.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeRender(JNIEnv*, jclass) {
    if (m_bOpenIGM == 0) {
        (void)appUpdate();
    }
}

// 0x5311c8 Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeInit
// ARM: if (g_appAlive != 0) m_bOGLLostContext = arg3; else { appInit(); g_appAlive = 1; }. Static native
// GameRenderer.nativeInit(int). appInit's int result is dropped, because the Java side is void.
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeInit(JNIEnv*, jclass,
                                                                                                    jint arg) {
    if (g_appAlive != 0) {
        m_bOGLLostContext = arg;
    } else {
        (void)appInit();
        g_appAlive = 1;
    }
}

// 0x531214 Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeGetTotalSounds
// ARM: MOV r0,#0x280; BX LR. Static native GLMediaPlayer.nativeGetTotalSounds(): 640 sound slots.
extern "C" JNIEXPORT jint JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeGetTotalSounds(JNIEnv*,
                                                                                                             jclass) {
    return 640;
}

// 0x53121c Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeGetTotalSoundsOfSameInstance
// ARM: MOV r0,#0; BX LR.
extern "C" JNIEXPORT jint JNICALL
Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeGetTotalSoundsOfSameInstance(JNIEnv*, jclass) {
    return 0;
}

// 0x531224 Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeSetStopOnMusic
// ARM: BX LR. Static native GLMediaPlayer.nativeSetStopOnMusic(int).
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeSetStopOnMusic(JNIEnv*,
                                                                                                             jclass,
                                                                                                             jint) {}

// 0x531230 nativeLoadSound
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, loadSoundID, a1, a2) through table slot 141 (+0x234). The
// binary returns the r0 left by that void call, which has no defined value, so the function is void.
extern "C" void nativeLoadSound(int a1, int a2) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, loadSoundID, a1, a2);
}

// 0x53128c nativeLoadSoundBig
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, loadSoundBigID, a1) through table slot 141. Void, as above.
extern "C" void nativeLoadSoundBig(int a1) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, loadSoundBigID, a1);
}

// 0x5312d8 nativePlaySound
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, playSoundID, a1, a2, (double)a3). The third argument is a
// float (MOV r0,r2; BL __aeabi_f2d). The variadic call promotes it to double, as the binary does. Void.
extern "C" void nativePlaySound(int a1, int a2, float a3) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, playSoundID, a1, a2, a3);
}

// 0x531348 nativePlaySoundBig
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, playSoundBigID, a1, (double)a2, a3, a4). The float a2 is
// promoted to double by the variadic call, as the binary converts it with __aeabi_f2d. Void.
extern "C" void nativePlaySoundBig(int a1, float a2, int a3, int a4) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, playSoundBigID, a1, a2, a3, a4);
}

// 0x5313c4 nativePauseSound
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, pauseSoundID, a1, a2) through table slot 141. Void, as above.
extern "C" void nativePauseSound(int a1, int a2) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, pauseSoundID, a1, a2);
}

// 0x531420 nativePauseSoundBig
// ARM: CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, pauseSoundBigID, a1) through table slot 141. Void, as above.
extern "C" void nativePauseSoundBig(int a1) {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassGLMediaPlayer, pauseSoundBigID, a1);
}
