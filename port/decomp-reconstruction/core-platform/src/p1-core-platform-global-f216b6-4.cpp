// Batch p1-core-platform-global-f216b6-4: the Musicplayer natives that read the playlist, the play state and the music
// title. Declarations are in core-platform/tb/android_jni_musicplayer.hpp, with the class and method IDs that batch -3
// stores in nativeInitplayer.
//
// Like the binary, every JNI call here goes through the mEnv global, not through the env argument of the JNI export.
// Hex-Rays is the primary source. The ARM listing (tools/decomp_asm.py) settles the GetByteArrayRegion call, which the
// Hex-Rays pseudocode shows with two arguments only: the env and the array, then start 0 (r2), the length (r3) and the
// buffer (the first stack word). The Java side declares GetPlayListName(int) as returning byte[] and
// nativeDisplayMusicTitle(byte[]) as taking one.

#include <cstddef>
#include <cstdlib>
#include <cstring>

#include <jni.h>

#include "core-platform/tb/android_jni_bridge.hpp"
#include "core-platform/tb/android_jni_musicplayer.hpp"
#include "dh2/global/platform_app.hpp"

namespace {

// The byte[] copy that both playlist natives make. The binary does, in order: GetArrayLength (+684), malloc(length + 1)
// (LC_API_MALLOC_0, the C library malloc), memset to zero (LC_API_MEMSET_0), store the terminating NUL, then
// GetByteArrayRegion(env, array, 0, length, buffer) (+800) and DeleteLocalRef(env, array) (+92). The buffer is handed to
// the caller, who owns it. The binary never frees it.
char* CopyByteArrayText(jbyteArray array) {
    const jsize length = mEnv->functions->GetArrayLength(mEnv, array);
    const std::size_t byteCount = static_cast<std::size_t>(length) + 1;
    char* buffer = static_cast<char*>(std::malloc(byteCount));
    std::memset(buffer, 0, byteCount);
    buffer[length] = '\0';
    mEnv->functions->GetByteArrayRegion(mEnv, array, 0, length, reinterpret_cast<jbyte*>(buffer));
    mEnv->functions->DeleteLocalRef(mEnv, array);
    return buffer;
}

}  // namespace

// 0x533978 nativeGetisplaying
// Returns 0 (ARM: MOV R0,#0; BX LR). The binary makes no JNI call, so mMethodGetisplaying is not used here.
extern "C" int nativeGetisplaying() {
    return 0;
}

// 0x533980 nativePauseMusicBG
// CallStaticVoidMethod(mEnv, mClassMusicplayer, mMethodPauseMusicBG) (+564). The Hex-Rays int is the r0 left by that void
// call, so the function returns nothing (as nativeResumeMusicBG in batch -3).
extern "C" void nativePauseMusicBG() {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassMusicplayer, mMethodPauseMusicBG);
}

// 0x5339c8 nativePlayBGMusic
// CallStaticVoidMethod(mEnv, mClassMusicplayer, mMethodPlayBGMusic) (+564). Void, as nativePauseMusicBG.
extern "C" void nativePlayBGMusic() {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassMusicplayer, mMethodPlayBGMusic);
}

// 0x533a10 nativeGetNumPlaylists
// CallStaticIntMethod(mEnv, mClassMusicplayer, mMethodGetNumPlaylists) (+516): the jint that GetNumPlaylists ()I returns.
extern "C" int nativeGetNumPlaylists() {
    return mEnv->functions->CallStaticIntMethod(mEnv, mClassMusicplayer, mMethodGetNumPlaylists);
}

// 0x533a58 nativeGetPlaylistName
// The byte[] from CallStaticObjectMethod(mEnv, mClassMusicplayer, mMethodGetPlaylistName, index) (+456), copied into a
// malloc'd NUL-terminated buffer (see CopyByteArrayText). Returns the buffer. The Hex-Rays signature is void *; the text is
// returned as char *.
extern "C" char* nativeGetPlaylistName(int index) {
    const jbyteArray name = static_cast<jbyteArray>(
        mEnv->functions->CallStaticObjectMethod(mEnv, mClassMusicplayer, mMethodGetPlaylistName, index));
    return CopyByteArrayText(name);
}

// 0x533b2c Java_com_gameloft_android_GAND_GloftD2SS_Musicplayer_nativeDisplayMusicTitle
// Static native nativeDisplayMusicTitle(byte[]). The title bytes are copied as in CopyByteArrayText, then the buffer is
// passed to SetDisplayString (the binary tail-calls it, so the void Java native gets nothing back).
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_Musicplayer_nativeDisplayMusicTitle(
    JNIEnv*, jclass, jbyteArray title) {
    SetDisplayString(CopyByteArrayText(title));
}
