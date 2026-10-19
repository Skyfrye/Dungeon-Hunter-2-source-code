// Android app-event JNI natives of libDungeonHunter2.so (batch p1-core-platform-global-f216b6-3): the DungeonHunter2
// natives for the accelerometer, keys, trackball, pause and resume, orientation, music volume, state, info and the
// launch counter; the GameGLSurfaceView touch native; and the C natives nativeIsSupportMM and nativeIncreaseLaunchTimes.
// Definitions: core-platform/src/p1-core-platform-global-f216b6-3.cpp.
//
// Where the other globals live:
//   mEnv and m_bOpenIGM: tb/android_jni_bridge.hpp (batch -0).
//   mClassDungeonHunter2, mMethodIncreaseLaunchTimes and mMethodIsSupportMM: tinyxml-and-c-libs/jni_globals.hpp and
//     tb/android_jni_platform.hpp (batches tinyxml and -2).
//   mAccelerometerX, mAccelerometerY and mAccelerometerZ: game/include/dh2/global/Globals.hpp (game-app/src/Globals.cpp).
//   GetGameMusicVolume and SetFinalOrientation: game/include/dh2/global/platform_app.hpp.
//   getState: core-platform/w7_global_02.hpp (core-platform/src/w7_global_02.cpp).
// The app-event functions declared below are not defined in this tree yet. Their signatures are the ones the call sites
// in this batch show.
#pragma once

#include <jni.h>

#include "core-platform/tb/android_jni_bridge.hpp"

class MenuManager;

// Globals written and read by the natives of this batch. The .data words start at 1 (read from the binary), and
// Touch_Hack_int is zero in .bss.
extern int mTimeCallbackFinished;  // .data, 0x99b104: returned by nativeCanInterrupt
extern int Orientation;            // .data, 0x99b11c: the last orientation set by nativeSetOrientation
extern int Enable_Orientation;     // .data, 0x99b120: non-zero when nativeSetOrientation may change the orientation
extern int Touch_Hack_int;         // .bss, 0x9f6514: when it is 1, nativeOnTouch does nothing

extern "C" {

// App-event functions called by the natives. appPause and appKeyPressed return int, appResume returns float (Hex-Rays),
// appTrackBall returns nothing, appKeyReleased returns a MenuManager pointer, and appOnTouch takes eight int words.
int appPause();
float appResume();
MenuManager* appKeyReleased(int keyCode);
int appKeyPressed();
void appTrackBall();
int appOnTouch(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8);

// C natives of this batch (plain symbol names). nativeIsSupportMM returns the isSupportMM value of DungeonHunter2.
// nativeIncreaseLaunchTimes returns nothing: the Hex-Rays int is the r0 left by a void Java call.
int nativeIsSupportMM();
void nativeIncreaseLaunchTimes();

// DungeonHunter2 natives. All are static Java natives, so the second argument is the jclass.
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeAccelerometer(JNIEnv*, jclass, jfloat x,
                                                                                                    jfloat y, jfloat z);
JNIEXPORT jint JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeCanInterrupt(JNIEnv*, jclass);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeOpenIGM(JNIEnv*, jclass);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativePause(JNIEnv*, jclass, jint);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeResume(JNIEnv*, jclass, jint);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeKeyDown(JNIEnv*, jclass, jint);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeKeyUp(JNIEnv*, jclass, jint keyCode);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeonTrackballEvent(JNIEnv*, jclass, jint);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeSetOrientation(JNIEnv*, jclass,
                                                                                                      jint orientation);
JNIEXPORT jint JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeGetGameMusicVolume(JNIEnv*, jclass);
JNIEXPORT jint JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativegetState(JNIEnv*, jclass, jint);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeGetInfo(JNIEnv*, jclass, jstring a3,
                                                                                              jstring a4, jstring a5,
                                                                                              jstring a6);

// GameGLSurfaceView touch native. The jlong is the Java time; the native passes its own time and the low word of this
// argument to appOnTouch.
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameGLSurfaceView_nativeOnTouch(JNIEnv*, jclass, jint a3,
                                                                                                jint a4, jint a5,
                                                                                                jlong javaTime, jint a9,
                                                                                                jint a10);

}  // extern "C"
