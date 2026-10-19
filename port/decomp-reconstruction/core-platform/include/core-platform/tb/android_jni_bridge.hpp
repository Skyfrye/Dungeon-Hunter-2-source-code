// Android JNI bridge of libDungeonHunter2.so (batch p1-core-platform-global-f216b6-0).
//
// Holds the JNIEnv and the GLMediaPlayer class and method-ID globals that the sound natives use, the
// GameRenderer and GLMediaPlayer natives that Java calls, and the sound calls that the game makes into Java.
// Owner: <global> (no class). Definitions: core-platform/src/p1-core-platform-global-f216b6-0.cpp.
#pragma once

#include <jni.h>

#include "core-platform/tb/app_lifecycle.hpp"

// JNIEnv of the render thread, stored by GameRenderer.nativeGetJNIEnv (exported global mEnv).
extern JNIEnv* mEnv;

// Render and app state read or written by the GameRenderer natives (exported globals in the binary).
extern int m_bOpenIGM;         // non-zero while the in-game menu is open; nativeRender then skips appUpdate
extern int g_appAlive;         // set to 1 by nativeInit after appInit
extern int m_bOGLLostContext;  // written by nativeInit once the app is alive (the context-lost flag)

// Window size set by nativeResize (local symbols in the binary, .data initialisers 480 and 854).
extern int s_windowWidth;
extern int s_windowHeight;

// GLMediaPlayer class and method IDs for the sound calls into Java. The binary holds them as file-local
// .bss words; their writers are outside this batch and are not located yet.
extern jclass mClassGLMediaPlayer;
extern jmethodID loadSoundID;
extern jmethodID loadSoundBigID;
extern jmethodID playSoundID;
extern jmethodID playSoundBigID;
extern jmethodID pauseSoundID;
extern jmethodID pauseSoundBigID;

// Method IDs of the remaining sound natives (batch p1-core-platform-global-f216b6-1). Same file-local .bss words as
// above; their writers are outside that batch and are not located yet.
extern jmethodID resumeSoundID;
extern jmethodID resumeSoundBigID;
extern jmethodID stopSoundID;
extern jmethodID stopSoundBigID;
extern jmethodID unloadSoundID;
extern jmethodID unloadSoundBigID;
extern jmethodID isSoundLoadedID;
extern jmethodID isSoundLoadedBigID;
extern jmethodID setVolID;
extern jmethodID setVolumeBigID;
extern jmethodID resetSoundID;
extern jmethodID setPitchID;
extern jmethodID stopAllID;
extern jmethodID stopAllPoolID;
extern jmethodID stopAllBigID;
extern jmethodID destroySoundPoolID;
extern jmethodID initSoundPoolArrayID;
extern jmethodID getWidth;
extern jmethodID isMediaPlaying;
extern jmethodID detectPhoneLangID;

extern "C" {

// Empty native (BX LR), kept as a C symbol.
void nativepauseAllMusic();

// Sound calls made from the game into GLMediaPlayer (static Java methods). Each one calls
// (*mEnv)->CallStaticVoidMethod through the table slot at byte offset 0x234 (index 141), with the class
// and method ID above. Void, because the binary returns the r0 left by that void call.
void nativeLoadSound(int a1, int a2);
void nativeLoadSoundBig(int a1);
void nativePlaySound(int a1, int a2, float a3);
void nativePlaySoundBig(int a1, float a2, int a3, int a4);
void nativePauseSound(int a1, int a2);
void nativePauseSoundBig(int a1);

// Remaining sound calls (batch p1-core-platform-global-f216b6-1). The void ones call CallStaticVoidMethod (slot 141,
// +0x234) and return nothing, as above. The int ones call CallStaticIntMethod (slot 129, +0x204) and return its jint.
void nativeResumeSound(int a1, int a2);
void nativeResumeSoundBig(int a1);
void nativeStopSound(int a1, int a2);
void nativeStopSoundBig(int a1);
void nativeUnloadSound(int a1, int a2);
void nativeUnloadSoundBig(int a1);
int nativeIsSoundLoaded(int a1, int a2);
int nativeIsSoundLoadedBig(int a1);
void nativeSetVolume(int a1, int a2, float a3);
void nativeSetVolumeBig(int a1, float a2, int a3);
void nativeResetSound(int a1);
void nativeSetPitch(int a1, int a2, float a3);
void nativeStopAllSounds();
void nativeStopAllSoundPool(int a1);
void nativeStopAllBigSound(int a1);
void nativeDestroySoundPool();
void nativeInitSoundPoolArray();
int nativeGetWidth();
int nativeIsMediaPlaying(int a1);
int nativeDetectPhoneLang();

// JNI exports called by GameRenderer and GLMediaPlayer.
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGameRenderer(JNIEnv*, jobject);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeConfig(JNIEnv*, jclass);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeOnDrawFrame(JNIEnv*, jclass);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGetJNIEnv(JNIEnv* env, jobject);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeResize(JNIEnv*, jclass, jint width,
                                                                                          jint height);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeOnSurfaceChanged(JNIEnv* env,
                                                                                                    jobject,
                                                                                                    jint width,
                                                                                                    jint height);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeDone(JNIEnv*, jclass);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeRender(JNIEnv*, jclass);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeInit(JNIEnv*, jclass, jint arg);
JNIEXPORT jint JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeGetTotalSounds(JNIEnv*, jclass);
JNIEXPORT jint JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeGetTotalSoundsOfSameInstance(
    JNIEnv*, jclass);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeSetStopOnMusic(JNIEnv*, jclass,
                                                                                                    jint);

}  // extern "C"
