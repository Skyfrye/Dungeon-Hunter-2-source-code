// Test for batch p1-core-platform-global-f216b6-4 (the Musicplayer playlist, play-state and title natives).
//
// A recording JNI table stands in for the VM and logs each call into one trace. The batch's source is linked alone, so
// this test defines the Musicplayer globals that batch -0 and batch -3 own (mEnv, mClassMusicplayer and the method IDs)
// and the SetDisplayString stub that game-app defines.

#include <cstdarg>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <map>
#include <string>
#include <vector>

#include <jni.h>

#include "core-platform/tb/android_jni_musicplayer.hpp"
#include "dh2/global/platform_app.hpp"

#define MUSIC(name) Java_com_gameloft_android_GAND_GloftD2SS_Musicplayer_##name

// ---- Globals owned by other batches -------------------------------------------------------------------------------------

JNIEnv* mEnv = nullptr;
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

namespace {

using Trace = std::vector<std::string>;

// Playlist names by index, as GetPlayListName returns them (a byte[] on the Java side).
const char* const kPlaylistNames[] = {"Rock", "Jazz", "Blues!"};
const jint kPlaylistCount = 3;

Trace g_calls;                       // one entry per JNI call or SetDisplayString, in call order
jclass g_lastClass = nullptr;        // class of the last static call
std::string g_title;                 // text the last SetDisplayString call received
std::map<jmethodID, std::string> g_methodNames;
std::map<uintptr_t, std::vector<char>> g_arrays;  // byte[] handle -> bytes
uintptr_t g_nextHandle = 0x1000;
JNINativeInterface g_table{};
_JNIEnv g_env;

jmethodID NewMethodId(const char* name) {
    jmethodID id = reinterpret_cast<jmethodID>(g_nextHandle++);
    g_methodNames[id] = name;
    return id;
}

std::string NameOf(jmethodID id) {
    auto it = g_methodNames.find(id);
    return it == g_methodNames.end() ? std::string("?") : it->second;
}

uintptr_t MakeArray(const std::string& text) {
    const uintptr_t handle = g_nextHandle++;
    g_arrays[handle] = std::vector<char>(text.begin(), text.end());
    return handle;
}

// Static object call: the only one here is GetPlayListName (I)[B, whose index is the variadic int.
jobject MockCallStaticObjectMethod(JNIEnv*, jclass cls, jmethodID id, ...) {
    g_lastClass = cls;
    va_list args;
    va_start(args, id);
    const jint index = va_arg(args, jint);
    va_end(args);
    g_calls.push_back("CallStaticObjectMethod " + NameOf(id) + " " + std::to_string(index));
    return reinterpret_cast<jobject>(MakeArray(kPlaylistNames[index]));
}

jint MockCallStaticIntMethod(JNIEnv*, jclass cls, jmethodID id, ...) {
    g_lastClass = cls;
    g_calls.push_back("CallStaticIntMethod " + NameOf(id));
    return id == mMethodGetNumPlaylists ? kPlaylistCount : 0;
}

void MockCallStaticVoidMethod(JNIEnv*, jclass cls, jmethodID id, ...) {
    g_lastClass = cls;
    g_calls.push_back("CallStaticVoidMethod " + NameOf(id));
}

jsize MockGetArrayLength(JNIEnv*, jarray array) {
    g_calls.push_back("GetArrayLength");
    return static_cast<jsize>(g_arrays[reinterpret_cast<uintptr_t>(array)].size());
}

void MockGetByteArrayRegion(JNIEnv*, jbyteArray array, jsize start, jsize len, jbyte* buf) {
    g_calls.push_back("GetByteArrayRegion " + std::to_string(start) + " " + std::to_string(len));
    const std::vector<char>& bytes = g_arrays[reinterpret_cast<uintptr_t>(array)];
    std::memcpy(buf, bytes.data() + start, static_cast<std::size_t>(len));
}

void MockDeleteLocalRef(JNIEnv*, jobject) {
    g_calls.push_back("DeleteLocalRef");
}

void InstallEnv() {
    g_table.CallStaticObjectMethod = &MockCallStaticObjectMethod;
    g_table.CallStaticIntMethod = &MockCallStaticIntMethod;
    g_table.CallStaticVoidMethod = &MockCallStaticVoidMethod;
    g_table.GetArrayLength = &MockGetArrayLength;
    g_table.GetByteArrayRegion = &MockGetByteArrayRegion;
    g_table.DeleteLocalRef = &MockDeleteLocalRef;
    g_env.functions = &g_table;
}

// ---- Checks -------------------------------------------------------------------------------------------------------------

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

}  // namespace

// Stub of the game-app definition: records the title it is given.
extern "C" void SetDisplayString(char* title) {
    g_calls.push_back(std::string("SetDisplayString ") + title);
    g_title = title;
}

int main() {
    InstallEnv();
    mEnv = &g_env;
    mClassMusicplayer = reinterpret_cast<jclass>(0x3001);
    mMethodGetNumPlaylists = NewMethodId("GetNumPlaylists");
    mMethodGetPlaylistName = NewMethodId("GetPlayListName");
    mMethodPlayBGMusic = NewMethodId("PlayBGMusic");
    mMethodPauseMusicBG = NewMethodId("PauseMusicBG");
    mMethodGetisplaying = NewMethodId("Getisplaying");

    // nativeGetisplaying returns 0 and makes no JNI call (the Getisplaying ID is not used).
    g_calls.clear();
    CHECK(nativeGetisplaying() == 0);
    CHECK(g_calls.empty());

    // nativePauseMusicBG and nativePlayBGMusic are void static calls on the class with their own IDs.
    g_calls.clear();
    nativePauseMusicBG();
    CHECK((g_calls == Trace{"CallStaticVoidMethod PauseMusicBG"}));
    CHECK(g_lastClass == mClassMusicplayer);
    g_calls.clear();
    nativePlayBGMusic();
    CHECK((g_calls == Trace{"CallStaticVoidMethod PlayBGMusic"}));
    CHECK(g_lastClass == mClassMusicplayer);

    // nativeGetNumPlaylists returns the jint of the int call.
    g_calls.clear();
    CHECK(nativeGetNumPlaylists() == 3);
    CHECK((g_calls == Trace{"CallStaticIntMethod GetNumPlaylists"}));
    CHECK(g_lastClass == mClassMusicplayer);

    // nativeGetPlaylistName(2): the byte[] is fetched, sized, copied with GetByteArrayRegion(0, length) and released.
    g_calls.clear();
    char* blues = nativeGetPlaylistName(2);
    CHECK((g_calls == Trace{"CallStaticObjectMethod GetPlayListName 2", "GetArrayLength", "GetByteArrayRegion 0 6",
                            "DeleteLocalRef"}));
    CHECK(blues != nullptr);
    if (blues != nullptr) {
        CHECK(std::strcmp(blues, "Blues!") == 0);
        CHECK(blues[6] == '\0');
        std::free(blues);
    }

    // nativeGetPlaylistName(0): a shorter name gets its own length.
    g_calls.clear();
    char* rock = nativeGetPlaylistName(0);
    CHECK((g_calls == Trace{"CallStaticObjectMethod GetPlayListName 0", "GetArrayLength", "GetByteArrayRegion 0 4",
                            "DeleteLocalRef"}));
    CHECK(rock != nullptr);
    if (rock != nullptr) {
        CHECK(std::strcmp(rock, "Rock") == 0);
        CHECK(rock[4] == '\0');
        std::free(rock);
    }

    // nativeDisplayMusicTitle copies the byte[] title the same way and passes the buffer to SetDisplayString.
    g_calls.clear();
    g_title.clear();
    const jbyteArray title = reinterpret_cast<jbyteArray>(MakeArray("Track 1"));
    MUSIC(nativeDisplayMusicTitle)(&g_env, nullptr, title);
    CHECK((g_calls == Trace{"GetArrayLength", "GetByteArrayRegion 0 7", "DeleteLocalRef", "SetDisplayString Track 1"}));
    CHECK(g_title == "Track 1");

    // An empty title gives an empty string, still NUL-terminated.
    g_calls.clear();
    g_title = "unchanged";
    const jbyteArray empty = reinterpret_cast<jbyteArray>(MakeArray(""));
    MUSIC(nativeDisplayMusicTitle)(&g_env, nullptr, empty);
    CHECK((g_calls == Trace{"GetArrayLength", "GetByteArrayRegion 0 0", "DeleteLocalRef", "SetDisplayString "}));
    CHECK(g_title.empty());

    if (g_failures == 0) {
        std::printf("p1-core-platform-global-f216b6-4 test: all checks passed\n");
    } else {
        std::printf("p1-core-platform-global-f216b6-4 test: %d check(s) failed\n", g_failures);
    }
    return g_failures == 0 ? 0 : 1;
}
