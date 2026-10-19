// Android Musicplayer JNI glue of libDungeonHunter2.so (batch p1-core-platform-global-f216b6-3): the static native
// Musicplayer.nativeInitplayer that looks up the Musicplayer class and its method IDs, and the four calls the game makes
// into those methods. Definitions: core-platform/src/p1-core-platform-global-f216b6-3.cpp.
//
// mEnv is declared in tb/android_jni_bridge.hpp. The globals below are file-local .bss words in the binary, written by
// nativeInitplayer and read by the calls. The method IDs are named as the binary names them, including the lowercase
// mMethodnativeChangeStep (its Java method is ChangeMusic).
#pragma once

#include <jni.h>

#include "core-platform/tb/android_jni_bridge.hpp"

// Musicplayer class (a global reference made by nativeInitplayer) and its method IDs.
extern jclass mClassMusicplayer;
extern jmethodID mMethodGetNumPlaylists;   // GetNumPlaylists ()I
extern jmethodID mMethodGetPlaylistName;   // GetPlayListName (I)[B
extern jmethodID mMethodSetPlaylist;       // SetPlaylist (I)V
extern jmethodID mMethodPlayBGMusic;       // PlayBGMusic ()V
extern jmethodID mMethodnativeChangeStep;  // ChangeMusic (I)V
extern jmethodID mMethodResumeMusicBG;     // ResumeMusicBG ()V
extern jmethodID mMethodPauseMusicBG;      // PauseMusicBG ()V
extern jmethodID mMethodStopMusicBG;       // StopMusicBG ()V
extern jmethodID mMethodGetisplaying;      // Getisplaying ()I

extern "C" {

// Calls into Musicplayer (static Java methods). Each one calls CallStaticVoidMethod (table slot 141, +0x234) with
// mClassMusicplayer and its method ID, and returns nothing: the r0 left by the void call has no defined value.
void nativeSetPlaylist(int playlist);
void nativeChangeStep(int step);
void nativeResumeMusicBG();
void nativeStopMusicBG();

// Playlist and play-state calls (batch p1-core-platform-global-f216b6-4, definitions in src/p1-core-platform-global-f216b6-4.cpp).
// nativeGetisplaying returns 0 without a JNI call. nativePauseMusicBG and nativePlayBGMusic are void calls, as above.
// nativeGetNumPlaylists is CallStaticIntMethod (table slot 129, +0x204). nativeGetPlaylistName returns a malloc'd,
// NUL-terminated copy of the byte[] from GetPlayListName; the binary never frees it.
int nativeGetisplaying();
void nativePauseMusicBG();
void nativePlayBGMusic();
int nativeGetNumPlaylists();
char* nativeGetPlaylistName(int index);

// JNI export: static native Musicplayer.nativeInitplayer().
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_Musicplayer_nativeInitplayer(JNIEnv*, jclass);

// JNI export: static native Musicplayer.nativeDisplayMusicTitle(byte[]).
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_Musicplayer_nativeDisplayMusicTitle(JNIEnv*, jclass,
                                                                                                    jbyteArray);

}  // extern "C"
