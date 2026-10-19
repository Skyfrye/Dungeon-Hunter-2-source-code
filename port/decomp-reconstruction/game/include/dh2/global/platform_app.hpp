// Application, sound and native-resource glue of the <global> code (batch g1-game-app-global-f216b6-20): the
// orientation and display-string setters, the music volume read, the Android JNI resource loaders and the
// accelerometer copy. All of these have plain (C) symbol names, so they are declared with C linkage.
// Definitions are in game-app/src/g1-game-app-global-f216b6-20.cpp.
#pragma once

#include <cstddef>
#include <cstdint>

// 0x530a6c SetFinalOrientation(int)
extern "C" int SetFinalOrientation(int orientation);

// 0x530b5c SetDisplayString(char*)
extern "C" void SetDisplayString(char* title);

// 0x530b80 GetGameMusicVolume(): the saved "VolumeMusic" option of Singleton<Application>::s_inst.
extern "C" int GetGameMusicVolume();

// 0x531228 GetNativeSoundRaw(): empty in the original.
extern "C" void GetNativeSoundRaw();

// 0x53122c GetNativeResourceSoundRawLength(): empty in the original.
extern "C" void GetNativeResourceSoundRawLength();

// 0x53226c GetNativeResourceFull(int, int): copies the whole named resource into out (Android JNI glue).
extern "C" void GetNativeResourceFull(const char* name, void* out);

// 0x532350 GetNativeResourceLength(int): byte length of the named resource (Android JNI glue).
extern "C" int GetNativeResourceLength(const char* name);

// 0x5323d8 GetNativeResourceBytes(int, int, size_t): malloc'd copy of the named resource (Android JNI glue).
// The caller frees the buffer.
extern "C" void* GetNativeResourceBytes(const char* name, int argument, std::size_t length);

// 0x532f14 GetAccelerometerParams(int*, int*, int*): copies the three accelerometer words.
extern "C" int GetAccelerometerParams(std::int32_t* x, std::int32_t* y, std::int32_t* z);
