// Test for batch p1-core-platform-global-f216b6-3 (the app-event and Musicplayer JNI natives).
//
// A recording JNI table stands in for the VM, as in the -2 test. mEnv and m_bOpenIGM come from batch -0, which is linked
// in. Functions owned by other categories are stubbed here: the app loop (appInit, appUpdate, appDestroy), the app
// events (appPause and the rest), the orientation and music-volume helpers, getState, appDebugLog, and the accelerometer
// words and DungeonHunter2 class and method IDs that other batches define.

#include <cstdarg>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <map>
#include <string>
#include <vector>

#include <sys/time.h>

#include "core-platform/debug_out.hpp"
#include "core-platform/tb/android_jni_app_events.hpp"
#include "core-platform/tb/android_jni_musicplayer.hpp"
#include "core-platform/tb/android_jni_platform.hpp"
#include "core-platform/tb/app_lifecycle.hpp"
#include "core-platform/w7_global_02.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/platform_app.hpp"

#define DH2(name) Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_##name
#define GLSV(name) Java_com_gameloft_android_GAND_GloftD2SS_GameGLSurfaceView_##name
#define MUSIC(name) Java_com_gameloft_android_GAND_GloftD2SS_Musicplayer_##name

using Trace = std::vector<std::string>;

// ---- Stubs and globals of other categories ------------------------------------------------------------------------------

namespace {
Trace g_calls;  // one entry per app-event stub or JNI call, in call order
std::string g_lastLogTag;
std::string g_lastLogText;
int g_touchArgs[8] = {};
int g_isSupportResult = 33;
}  // namespace

// Defined in game-app/src/Globals.cpp and tinyxml-and-c-libs / batch -2 in the real build.
std::uint32_t mAccelerometerX = 0;
std::uint32_t mAccelerometerY = 0;
std::uint32_t mAccelerometerZ = 0;
jclass mClassDungeonHunter2 = nullptr;
jmethodID mMethodIncreaseLaunchTimes = nullptr;
jmethodID mMethodIsSupportMM = nullptr;

void appDebugLog(const char* tag, const char* text) {
    g_calls.push_back("appDebugLog");
    g_lastLogTag = tag;
    g_lastLogText = text;
}

extern "C" {

int appInit() { return 0; }
int appUpdate() { return 0; }
int appDestroy() { return 0; }

int appPause() {
    g_calls.push_back("appPause");
    return 7;
}

float appResume() {
    g_calls.push_back("appResume");
    return 0.5f;
}

MenuManager* appKeyReleased(int keyCode) {
    g_calls.push_back("appKeyReleased " + std::to_string(keyCode));
    return nullptr;
}

int appKeyPressed() {
    g_calls.push_back("appKeyPressed");
    return 5;
}

void appTrackBall() { g_calls.push_back("appTrackBall"); }

int appOnTouch(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8) {
    g_calls.push_back("appOnTouch");
    const int args[8] = {a1, a2, a3, a4, a5, a6, a7, a8};
    std::memcpy(g_touchArgs, args, sizeof args);
    return 0;
}

int SetFinalOrientation(int orientation) {
    g_calls.push_back("SetFinalOrientation " + std::to_string(orientation));
    return 0;
}

int GetGameMusicVolume() { return 42; }

int getState() { return 9; }

}  // extern "C"

// ---- Recording JNI table ------------------------------------------------------------------------------------------------

namespace {

struct MethodInfo {
    std::string name;
    std::string sig;
};

struct Lookup {
    std::string name;
    std::string sig;
    jclass cls;
    jmethodID id;
};

std::map<jmethodID, MethodInfo> g_methods;   // every method ID handed out by the test or by GetStaticMethodID
std::map<uintptr_t, std::string> g_strings;  // jstring handle -> text
std::vector<Lookup> g_lookups;               // GetStaticMethodID calls, in order
jclass g_lastClass = nullptr;                // class of the last static call
uintptr_t g_nextHandle = 0x1000;
JNINativeInterface g_table{};
_JNIEnv g_env;

jmethodID NewMethodId(const std::string& name, const std::string& sig) {
    jmethodID id = reinterpret_cast<jmethodID>(g_nextHandle++);
    g_methods[id] = MethodInfo{name, sig};
    return id;
}

std::string NameOf(jmethodID id) {
    auto it = g_methods.find(id);
    return it == g_methods.end() ? std::string("?") : it->second.name;
}

std::string SigOf(jmethodID id) {
    auto it = g_methods.find(id);
    return it == g_methods.end() ? std::string() : it->second.sig;
}

jstring MakeString(const std::string& text) {
    uintptr_t handle = g_nextHandle++;
    g_strings[handle] = text;
    return reinterpret_cast<jstring>(handle);
}

std::string TextOf(jstring s) {
    auto it = g_strings.find(reinterpret_cast<uintptr_t>(s));
    return it == g_strings.end() ? std::string("<unknown>") : it->second;
}

jobject MockNewGlobalRef(JNIEnv*, jobject obj) {
    g_calls.push_back("NewGlobalRef");
    return obj;
}

jmethodID MockGetStaticMethodID(JNIEnv*, jclass cls, const char* name, const char* sig) {
    g_calls.push_back(std::string("GetStaticMethodID ") + name + " " + sig);
    jmethodID id = NewMethodId(name, sig);
    g_lookups.push_back(Lookup{name, sig, cls, id});
    return id;
}

jint MockCallStaticIntMethod(JNIEnv*, jclass cls, jmethodID id, ...) {
    g_lastClass = cls;
    std::string line = "CallStaticIntMethod " + NameOf(id);
    va_list args;
    va_start(args, id);
    if (SigOf(id).rfind("(I)", 0) == 0) {
        line += " " + std::to_string(va_arg(args, jint));
    }
    va_end(args);
    g_calls.push_back(line);
    return id == mMethodIsSupportMM ? g_isSupportResult : 0;
}

void MockCallStaticVoidMethod(JNIEnv*, jclass cls, jmethodID id, ...) {
    g_lastClass = cls;
    std::string line = "CallStaticVoidMethod " + NameOf(id);
    va_list args;
    va_start(args, id);
    if (SigOf(id).rfind("(I)", 0) == 0) {
        line += " " + std::to_string(va_arg(args, jint));
    }
    va_end(args);
    g_calls.push_back(line);
}

const char* MockGetStringUTFChars(JNIEnv*, jstring s, jboolean* isCopy) {
    g_calls.push_back("GetStringUTFChars " + TextOf(s) + (isCopy == nullptr ? " isCopy=NULL" : " isCopy=set"));
    return g_strings[reinterpret_cast<uintptr_t>(s)].c_str();
}

void InstallEnv() {
    g_table.NewGlobalRef = &MockNewGlobalRef;
    g_table.GetStaticMethodID = &MockGetStaticMethodID;
    g_table.CallStaticIntMethod = &MockCallStaticIntMethod;
    g_table.CallStaticVoidMethod = &MockCallStaticVoidMethod;
    g_table.GetStringUTFChars = &MockGetStringUTFChars;
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

// The same time the native computes: tv_usec / 1000 + 1000 * tv_sec, in 32-bit arithmetic.
std::uint32_t NowMs() {
    timeval tv{};
    gettimeofday(&tv, nullptr);
    return static_cast<std::uint32_t>(tv.tv_usec / 1000) + 1000u * static_cast<std::uint32_t>(tv.tv_sec);
}

}  // namespace

int main() {
    InstallEnv();
    mEnv = &g_env;

    mClassDungeonHunter2 = reinterpret_cast<jclass>(0x2001);
    mMethodIncreaseLaunchTimes = NewMethodId("IncreaseLaunchTimes", "()V");
    mMethodIsSupportMM = NewMethodId("isSupportMM", "()I");

    // nativeCanInterrupt returns the .data word.
    CHECK(DH2(nativeCanInterrupt)(&g_env, nullptr) == 1);
    mTimeCallbackFinished = 0;
    CHECK(DH2(nativeCanInterrupt)(&g_env, nullptr) == 0);
    mTimeCallbackFinished = 1;

    // nativeAccelerometer stores the raw float words: x into X, y into Y, z into Z.
    DH2(nativeAccelerometer)(&g_env, nullptr, 1.0f, -2.0f, 0.5f);
    CHECK(mAccelerometerX == 0x3f800000u);
    CHECK(mAccelerometerY == 0xc0000000u);
    CHECK(mAccelerometerZ == 0x3f000000u);

    // nativeIncreaseLaunchTimes calls the void method on the DungeonHunter2 class.
    g_calls.clear();
    nativeIncreaseLaunchTimes();
    CHECK((g_calls == Trace{"CallStaticVoidMethod IncreaseLaunchTimes"}));
    CHECK(g_lastClass == mClassDungeonHunter2);

    // nativeOpenIGM sets m_bOpenIGM and calls appPause.
    m_bOpenIGM = 0;
    g_calls.clear();
    DH2(nativeOpenIGM)(&g_env, nullptr);
    CHECK(m_bOpenIGM == 1);
    CHECK((g_calls == Trace{"appPause"}));

    // nativePause is a thunk to appPause.
    g_calls.clear();
    DH2(nativePause)(&g_env, nullptr, 0);
    CHECK((g_calls == Trace{"appPause"}));

    // nativeResume clears m_bOpenIGM and calls appResume.
    m_bOpenIGM = 1;
    g_calls.clear();
    DH2(nativeResume)(&g_env, nullptr, 0);
    CHECK(m_bOpenIGM == 0);
    CHECK((g_calls == Trace{"appResume"}));

    // nativeKeyUp passes the key code to appKeyReleased.
    g_calls.clear();
    DH2(nativeKeyUp)(&g_env, nullptr, 82);
    CHECK((g_calls == Trace{"appKeyReleased 82"}));

    // nativeKeyDown calls appKeyPressed with no argument.
    g_calls.clear();
    DH2(nativeKeyDown)(&g_env, nullptr, 4);
    CHECK((g_calls == Trace{"appKeyPressed"}));

    // nativeonTrackballEvent calls appTrackBall.
    g_calls.clear();
    DH2(nativeonTrackballEvent)(&g_env, nullptr, 0);
    CHECK((g_calls == Trace{"appTrackBall"}));

    // nativeOnTouch does nothing while Touch_Hack_int is 1.
    Touch_Hack_int = 1;
    g_calls.clear();
    GLSV(nativeOnTouch)(&g_env, nullptr, 10, 20, 3, 0x100000005LL, 6, 7);
    CHECK(g_calls.empty());

    // With Touch_Hack_int at 0, appOnTouch gets (a3, a4, a5, time, 1, a9, a10, low word of the jlong).
    Touch_Hack_int = 0;
    g_calls.clear();
    const std::uint32_t before = NowMs();
    GLSV(nativeOnTouch)(&g_env, nullptr, 10, 20, 3, 0x100000005LL, 6, 7);
    const std::uint32_t after = NowMs();
    CHECK((g_calls == Trace{"appOnTouch"}));
    CHECK(g_touchArgs[0] == 10);
    CHECK(g_touchArgs[1] == 20);
    CHECK(g_touchArgs[2] == 3);
    const auto stamp = static_cast<std::uint32_t>(g_touchArgs[3]);
    CHECK(stamp >= before && stamp <= after);
    CHECK(g_touchArgs[4] == 1);
    CHECK(g_touchArgs[5] == 6);
    CHECK(g_touchArgs[6] == 7);
    CHECK(g_touchArgs[7] == 5);
    Touch_Hack_int = 1;

    // nativeSetOrientation changes nothing while Enable_Orientation is 0, and nothing when the value is unchanged.
    Enable_Orientation = 0;
    Orientation = 1;
    g_calls.clear();
    DH2(nativeSetOrientation)(&g_env, nullptr, 3);
    CHECK(g_calls.empty());
    CHECK(Orientation == 1);
    Enable_Orientation = 1;
    g_calls.clear();
    DH2(nativeSetOrientation)(&g_env, nullptr, 1);
    CHECK(g_calls.empty());
    // A new value calls SetFinalOrientation and then stores the value.
    DH2(nativeSetOrientation)(&g_env, nullptr, 4);
    CHECK((g_calls == Trace{"SetFinalOrientation 4"}));
    CHECK(Orientation == 4);
    Orientation = 1;

    // The thunks return their targets: GetGameMusicVolume and getState.
    CHECK(DH2(nativeGetGameMusicVolume)(&g_env, nullptr) == 42);
    CHECK(DH2(nativegetState)(&g_env, nullptr, 0) == 9);

    // nativeIsSupportMM logs the 68-character text, then calls isSupportMM and returns its result.
    g_calls.clear();
    g_lastLogTag.clear();
    g_lastLogText.clear();
    const int supported = nativeIsSupportMM();
    CHECK(supported == 33);
    CHECK(g_lastLogTag == "Orientation not Enable for this proffile");
    CHECK(g_lastLogText.size() == 68);
    CHECK(g_lastLogText.find_first_not_of('0') == std::string::npos);
    CHECK((g_calls == Trace{"appDebugLog", "CallStaticIntMethod isSupportMM"}));
    CHECK(g_lastClass == mClassDungeonHunter2);

    // nativeInitplayer stores mEnv and the class, then makes the nine lookups in order.
    mEnv = nullptr;
    const jclass musicClass = reinterpret_cast<jclass>(0x3001);
    g_calls.clear();
    g_lookups.clear();
    MUSIC(nativeInitplayer)(&g_env, musicClass);
    CHECK(mEnv == &g_env);
    CHECK(mClassMusicplayer == musicClass);
    CHECK(g_lookups.size() == 9);
    const char* lookupNames[9] = {"GetNumPlaylists", "GetPlayListName", "SetPlaylist",  "PlayBGMusic", "ChangeMusic",
                                  "ResumeMusicBG",   "PauseMusicBG",    "StopMusicBG", "Getisplaying"};
    const char* lookupSigs[9] = {"()I", "(I)[B", "(I)V", "()V", "(I)V", "()V", "()V", "()V", "()I"};
    jmethodID* slots[9] = {&mMethodGetNumPlaylists, &mMethodGetPlaylistName, &mMethodSetPlaylist,
                           &mMethodPlayBGMusic,     &mMethodnativeChangeStep, &mMethodResumeMusicBG,
                           &mMethodPauseMusicBG,    &mMethodStopMusicBG,      &mMethodGetisplaying};
    if (g_lookups.size() == 9) {
        for (int i = 0; i < 9; ++i) {
            CHECK(g_lookups[i].name == lookupNames[i]);
            CHECK(g_lookups[i].sig == lookupSigs[i]);
            CHECK(g_lookups[i].cls == musicClass);
            CHECK(*slots[i] == g_lookups[i].id);
        }
    }
    CHECK(g_calls.size() == 10);  // NewGlobalRef, then nine lookups

    // The Musicplayer calls go through the class and the stored IDs.
    g_calls.clear();
    nativeSetPlaylist(5);
    CHECK((g_calls == Trace{"CallStaticVoidMethod SetPlaylist 5"}));
    CHECK(g_lastClass == musicClass);
    g_calls.clear();
    nativeChangeStep(9);
    CHECK((g_calls == Trace{"CallStaticVoidMethod ChangeMusic 9"}));
    g_calls.clear();
    nativeResumeMusicBG();
    CHECK((g_calls == Trace{"CallStaticVoidMethod ResumeMusicBG"}));
    g_calls.clear();
    nativeStopMusicBG();
    CHECK((g_calls == Trace{"CallStaticVoidMethod StopMusicBG"}));

    // nativeGetInfo reads its four strings in order and copies each one.
    const jstring s3 = MakeString("alpha");
    const jstring s4 = MakeString("beta");
    const jstring s5 = MakeString("gamma");
    const jstring s6 = MakeString("delta");
    g_calls.clear();
    DH2(nativeGetInfo)(&g_env, nullptr, s3, s4, s5, s6);
    CHECK((g_calls == Trace{"GetStringUTFChars alpha isCopy=NULL", "GetStringUTFChars beta isCopy=NULL",
                            "GetStringUTFChars gamma isCopy=NULL", "GetStringUTFChars delta isCopy=NULL"}));

    if (g_failures == 0) {
        std::printf("p1-core-platform-global-f216b6-3 test: all checks passed\n");
    } else {
        std::printf("p1-core-platform-global-f216b6-3 test: %d check(s) failed\n", g_failures);
    }
    return g_failures == 0 ? 0 : 1;
}
