// Android platform JNI glue of libDungeonHunter2.so (batch p1-core-platform-global-f216b6-2): the JNI natives of
// GLMediaPlayer, GLResLoader and DungeonHunter2 that the decomp pass skipped as Android glue, the natives the game
// calls into them, and JNI_OnLoad. Definitions: core-platform/src/p1-core-platform-global-f216b6-2.cpp.
//
// Where the other JNI globals live:
//   mEnv, mClassGLMediaPlayer and the GLMediaPlayer sound IDs: tb/android_jni_bridge.hpp (batches -0 and -1).
//   mClassDungeonHunter2 and the mMethodVZ* IDs: tinyxml-and-c-libs/jni_globals.hpp (defined there).
// The globals declared below are file-local .bss words in the binary. The nativeInit natives of this batch write them.
#pragma once

#include <jni.h>

#include "core-platform/tb/android_jni_bridge.hpp"
#include "tinyxml-and-c-libs/jni_globals.hpp"

// GLMediaPlayer: the file lookup and the movie player (nativeInit and nativeLoadMovie).
extern jmethodID getSDFolderID;
extern jmethodID loadMovie;

// GLResLoader class and method IDs (Java_..._GLResLoader_nativeInit).
extern jclass mClassGLResLoader;
extern jmethodID getResFullID;
extern jmethodID getResBytesID;
extern jmethodID getResLengthID;

// DungeonHunter2 method IDs (Java_..._DungeonHunter2_nativeInit). The class and the mMethodVZ* IDs are declared in
// tinyxml-and-c-libs/jni_globals.hpp.
extern jmethodID mMethodSendAppToBackground;
extern jmethodID mMethodOpenGLive;
extern jmethodID mMethodOpenIGP;
extern jmethodID mMethodNotifyTrophy;
extern jmethodID mMethodGet_PhoneLanguage;
extern jmethodID mMethodGet_PhoneManufacturer;
extern jmethodID mMethodGet_PhoneModel;
extern jmethodID mMethodExit;
extern jmethodID mMethodIsWifiAlive;
extern jmethodID mMethodIsSupportMM;
extern jmethodID mMethodOpenBrowser;
extern jmethodID mMethodUnlockDemo;
extern jmethodID mMethodLockDemo;
extern jmethodID mMethodDisableLaunchGame;
extern jmethodID mMethodIncreaseLaunchTimes;

// Screen size written by DungeonHunter2.nativeSetPhone. The definitions belong to the game's globals batch (see
// game/include/dh2/global/screen_size.hpp); this batch only writes them.
extern int Width_Screen;
extern int Height_Screen;

extern "C" {

// Natives the game calls (C linkage, the binary's symbol names). Each one calls a static method of GLMediaPlayer or
// DungeonHunter2 through mEnv. The void Java methods return nothing; the r0 left by their void calls has no defined
// value.
char* nativeGetSdFolderPath();
int nativeLoadMovie(const char* movie, int language);
void nativeSendAppBackground();
void nativeOpenIGP(int language);
void nativeOpenGLive(int language);
void NotifyTrophy(int glIndex);
void nativeExit();
int nativeIsWifiAlive();
void nativeOpenBrowser(const char* url);
int nativeGet_PhoneLanguage();
int nativeGet_PhoneManufacturer();
int nativeGet_PhoneModel();
int nativeUnlockDemo();
void nativeLockDemo();
int nativeDisableLaunchGame();

// JNI exports called by the recovered Java classes. The int argument of nativeInit is not read by the binary.
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeInit(JNIEnv*, jclass, jint);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GLResLoader_nativeInit(JNIEnv*, jclass, jint);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeInit(JNIEnv*, jclass, jint);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeSetPhone(JNIEnv*, jclass, jint width,
                                                                                              jint height);

// JNI_OnLoad (the library's entry when the VM loads it): stores the VM and returns JNI_VERSION_1_4.
JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved);

}  // extern "C"
