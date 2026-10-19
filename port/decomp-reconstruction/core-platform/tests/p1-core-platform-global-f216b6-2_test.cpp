// Test for batch p1-core-platform-global-f216b6-2 (the platform JNI glue).
//
// A recording JNI table stands in for the VM. It logs each JNI call and each appDebugLog line into one trace, and it
// returns the values a test sets. The JNI natives are linked with the sound batches -0 and -1, which define mEnv and the
// sound globals. Functions and globals owned by other categories are stubbed here: appDebugLog, VoxSetJavaVMC,
// NVThreadInit, the app loop (appInit, appUpdate, appDestroy), the DungeonHunter2 class and VZ method IDs (defined in
// tinyxml-and-c-libs), and the game's screen-size words.

#include <cstdarg>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <map>
#include <string>
#include <utility>
#include <vector>

#include "core-platform/debug_out.hpp"
#include "core-platform/tb/android_jni_platform.hpp"
#include "core-platform/tb/app_lifecycle.hpp"
#include "tinyxml-and-c-libs/nvthread.hpp"
#include "vox-audio/vox/driver_android.hpp"

// ---- Stubs for other categories --------------------------------------------------------------------------------------

namespace {
std::vector<std::string> g_trace;  // one line per JNI call or debug log, in call order
}  // namespace

void appDebugLog(const char* tag, const char* text) { g_trace.push_back(std::string("appDebugLog ") + tag + "|" + text); }

namespace {
_JavaVM* g_vmSeen = nullptr;
JavaVM* g_nativeThreadVm = nullptr;
}  // namespace

void VoxSetJavaVMC(_JavaVM* java_vm) { g_vmSeen = java_vm; }
JavaVM* NVThreadInit(JavaVM* vm) {
    g_nativeThreadVm = vm;
    return vm;
}

extern "C" {
int appInit() { return 0; }
int appUpdate() { return 0; }
int appDestroy() { return 0; }
}  // extern "C"

jclass mClassDungeonHunter2 = nullptr;
jmethodID mMethodVZIsInProgress = nullptr;
jmethodID mMethodVZIsErrorOcurred = nullptr;
jmethodID mMethodVZRequestLogin = nullptr;
jmethodID mMethodVZRequestPurchaseGame = nullptr;
jmethodID mMethodVZGetGamePrice = nullptr;
jmethodID mMethodVZGetGameName = nullptr;
jmethodID mMethodVZGetLastServerMsg = nullptr;
jmethodID mMethodVZInitMobileNetwork = nullptr;
jmethodID mMethodVZIsMobileNetworkReady = nullptr;
jmethodID mMethodVZRestoreNetworkState = nullptr;

int Width_Screen = 0;
int Height_Screen = 0;

// ---- Recording JNI table ----------------------------------------------------------------------------------------------

namespace {

struct Lookup {
    std::string key;  // "name signature"
    jclass cls;
    jmethodID id;
};

std::vector<Lookup> g_lookups;
std::map<uintptr_t, std::string> g_strings;  // jstring handle -> text
std::map<jmethodID, jint> g_intResults;      // value returned by CallStaticIntMethod for a method
std::string g_folderText = "/sdcard/dh2";    // text returned by getSDFolder
uintptr_t g_nextHandle = 0x1000;
JNINativeInterface g_table{};
_JNIEnv g_env;

std::string NameOf(jmethodID id) {
    for (const Lookup& lookup : g_lookups) {
        if (lookup.id == id) {
            return lookup.key.substr(0, lookup.key.find(' '));
        }
    }
    return "?";
}

std::string TextOf(jstring s) {
    auto it = g_strings.find(reinterpret_cast<uintptr_t>(s));
    return it == g_strings.end() ? std::string("<unknown>") : it->second;
}

jstring NewHandle(const std::string& text) {
    uintptr_t handle = g_nextHandle++;
    g_strings[handle] = text;
    return reinterpret_cast<jstring>(handle);
}

jobject MockNewGlobalRef(JNIEnv*, jobject obj) {
    g_trace.push_back("NewGlobalRef");
    return obj;
}

jmethodID MockGetStaticMethodID(JNIEnv*, jclass cls, const char* name, const char* sig) {
    jmethodID id = reinterpret_cast<jmethodID>(g_nextHandle++);
    g_lookups.push_back(Lookup{std::string(name) + " " + sig, cls, id});
    return id;
}

jobject MockCallStaticObjectMethod(JNIEnv*, jclass, jmethodID id, ...) {
    g_trace.push_back("CallStaticObjectMethod " + NameOf(id));
    return reinterpret_cast<jobject>(NewHandle(g_folderText));
}

jint MockCallStaticIntMethod(JNIEnv*, jclass, jmethodID id, ...) {
    va_list args;
    va_start(args, id);
    std::string line = "CallStaticIntMethod " + NameOf(id);
    if (NameOf(id) == "loadMovie") {  // (Ljava/lang/String;I)I
        jstring path = va_arg(args, jstring);
        jint language = va_arg(args, jint);
        line += " " + TextOf(path) + " " + std::to_string(language);
    }
    va_end(args);
    g_trace.push_back(line);
    auto it = g_intResults.find(id);
    return it == g_intResults.end() ? 0 : it->second;
}

void MockCallStaticVoidMethod(JNIEnv*, jclass, jmethodID id, ...) {
    va_list args;
    va_start(args, id);
    std::string line = "CallStaticVoidMethod " + NameOf(id);
    if (id == mMethodOpenGLive || id == mMethodOpenIGP || id == mMethodNotifyTrophy) {
        jint value = va_arg(args, jint);
        line += " " + std::to_string(value);
    } else if (id == mMethodOpenBrowser) {
        jstring text = va_arg(args, jstring);
        line += " " + TextOf(text);
    }
    va_end(args);
    g_trace.push_back(line);
}

jstring MockNewStringUTF(JNIEnv*, const char* text) {
    g_trace.push_back(std::string("NewStringUTF ") + text);
    return NewHandle(text);
}

const char* MockGetStringUTFChars(JNIEnv*, jstring s, jboolean* isCopy) {
    g_trace.push_back(std::string("GetStringUTFChars ") + (isCopy == nullptr ? "isCopy=NULL" : "isCopy=set"));
    return g_strings[reinterpret_cast<uintptr_t>(s)].c_str();
}

void MockReleaseStringUTFChars(JNIEnv*, jstring s, const char* chars) {
    bool matches = chars == g_strings[reinterpret_cast<uintptr_t>(s)].c_str();
    g_trace.push_back(std::string("ReleaseStringUTFChars ") + (matches ? "same chars" : "other chars"));
}

void MockDeleteLocalRef(JNIEnv*, jobject obj) {
    g_trace.push_back("DeleteLocalRef " + TextOf(reinterpret_cast<jstring>(obj)));
}

void InstallTable() {
    g_table.NewGlobalRef = &MockNewGlobalRef;
    g_table.DeleteLocalRef = &MockDeleteLocalRef;
    g_table.GetStaticMethodID = &MockGetStaticMethodID;
    g_table.CallStaticObjectMethod = &MockCallStaticObjectMethod;
    g_table.CallStaticIntMethod = &MockCallStaticIntMethod;
    g_table.CallStaticVoidMethod = &MockCallStaticVoidMethod;
    g_table.NewStringUTF = &MockNewStringUTF;
    g_table.GetStringUTFChars = &MockGetStringUTFChars;
    g_table.ReleaseStringUTFChars = &MockReleaseStringUTFChars;
    g_env.functions = &g_table;
    mEnv = &g_env;
}

// ---- Checks ------------------------------------------------------------------------------------------------------------

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

struct Expect {
    const char* key;  // "name signature"
    jmethodID* slot;
};

// Checks that the lookups of this run are exactly the expected ones, each once, on cls, and that each global holds the ID
// the lookup returned.
void CheckLookups(const std::vector<Expect>& expects, jclass cls) {
    CHECK(g_lookups.size() == expects.size());
    for (const Expect& expect : expects) {
        int found = 0;
        for (const Lookup& lookup : g_lookups) {
            if (lookup.key == expect.key) {
                ++found;
                CHECK(lookup.cls == cls);
                CHECK(*expect.slot == lookup.id);
            }
        }
        CHECK(found == 1);
        if (found != 1) {
            std::fprintf(stderr, "  lookup %s seen %d times\n", expect.key, found);
        }
    }
}

// ---- Scenarios ---------------------------------------------------------------------------------------------------------

void TestJniOnLoad() {
    g_trace.clear();
    _JavaVM* vm = reinterpret_cast<_JavaVM*>(static_cast<uintptr_t>(0x12345678));
    CHECK(JNI_OnLoad(vm, nullptr) == 0x10004);
    CHECK(g_vmSeen == vm);
    CHECK(g_nativeThreadVm == vm);
    CHECK(g_trace.empty());
}

void TestGLMediaPlayerInit(jclass cls) {
    g_lookups.clear();
    g_trace.clear();
    Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeInit(&g_env, cls, 0);
    CHECK(mClassGLMediaPlayer == cls);
    const std::vector<std::string> expected = {
        "appDebugLog GLMediaPlayer|Player Init is OK",
        "NewGlobalRef",
    };
    CHECK(g_trace == expected);
    CheckLookups(
        {
            {"isSoundLoaded (II)I", &isSoundLoadedID},
            {"isSoundLoadedBig (I)I", &isSoundLoadedBigID},
            {"unloadSound (II)V", &unloadSoundID},
            {"unloadSoundBig (I)V", &unloadSoundBigID},
            {"loadSound (II)V", &loadSoundID},
            {"loadSoundBig (I)V", &loadSoundBigID},
            {"playSound (IIF)V", &playSoundID},
            {"playSoundBig (IFII)V", &playSoundBigID},
            {"pauseSound (II)V", &pauseSoundID},
            {"pauseSoundBig (I)V", &pauseSoundBigID},
            {"resumeSound (II)V", &resumeSoundID},
            {"resumeSoundBig (I)V", &resumeSoundBigID},
            {"stopSound (II)V", &stopSoundID},
            {"stopSoundBig (I)V", &stopSoundBigID},
            {"setVolume (IIF)V", &setVolID},
            {"setVolumeBig (IFI)V", &setVolumeBigID},
            {"resetSound (I)V", &resetSoundID},
            {"setPitch (IIF)V", &setPitchID},
            {"stopAllSounds ()V", &stopAllID},
            {"stopAllPool (I)V", &stopAllPoolID},
            {"stopAllBig (I)V", &stopAllBigID},
            {"destroySoundPool ()V", &destroySoundPoolID},
            {"initSoundPoolArray ()V", &initSoundPoolArrayID},
            {"loadMovie (Ljava/lang/String;I)I", &loadMovie},
            {"getWidth ()I", &getWidth},
            {"isMediaPlaying (I)I", &isMediaPlaying},
            {"detectPhoneLang ()I", &detectPhoneLangID},
            {"getSDFolder ()Ljava/lang/String;", &getSDFolderID},
        },
        cls);
}

void TestLoadMovie() {
    g_trace.clear();
    g_intResults[loadMovie] = 5;
    const int result = nativeLoadMovie("intro.mp4", 2);
    CHECK(result == 5);
    const std::vector<std::string> expected = {
        "appDebugLog GLMediaPlayer|Player Init is OK__________________________________11111",
        "NewStringUTF intro.mp4",
        "appDebugLog GLMediaPlayer|Player Init is OK__________________________________222222",
        "CallStaticIntMethod loadMovie intro.mp4 2",
        "appDebugLog GLMediaPlayer|Player Init is OK__________________________________333333",
        "DeleteLocalRef intro.mp4",
        "appDebugLog GLMediaPlayer|Player Init is OK__________________________________444444",
    };
    CHECK(g_trace == expected);
}

void TestGetSdFolderPath() {
    g_trace.clear();
    char* path = nativeGetSdFolderPath();
    CHECK(path != nullptr);
    CHECK(path != nullptr && std::strcmp(path, "/sdcard/dh2") == 0);
    const std::vector<std::string> expected = {
        "CallStaticObjectMethod getSDFolder",
        "GetStringUTFChars isCopy=NULL",
        "ReleaseStringUTFChars same chars",
    };
    CHECK(g_trace == expected);
    std::free(path);

    // With no getSDFolder ID the binary makes no JNI call. The return has no defined value there, so this returns nullptr.
    jmethodID saved = getSDFolderID;
    getSDFolderID = nullptr;
    g_trace.clear();
    CHECK(nativeGetSdFolderPath() == nullptr);
    CHECK(g_trace.empty());
    getSDFolderID = saved;
}

void TestGLResLoaderInit(jclass cls) {
    g_lookups.clear();
    g_trace.clear();
    Java_com_gameloft_android_GAND_GloftD2SS_GLResLoader_nativeInit(&g_env, cls, 0);
    CHECK(mClassGLResLoader == cls);
    const std::vector<std::string> expected = {
        "appDebugLog GameLoft|Loader Init is OK",
        "NewGlobalRef",
    };
    CHECK(g_trace == expected);
    CheckLookups(
        {
            {"getResourceFull (Ljava/lang/String;)[B", &getResFullID},
            {"getResourceBytes (Ljava/lang/String;II)[B", &getResBytesID},
            {"getResourceLength (Ljava/lang/String;)I", &getResLengthID},
        },
        cls);
}

void TestDungeonHunter2Init(jclass cls) {
    g_lookups.clear();
    g_trace.clear();
    Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeInit(&g_env, cls, 0);
    CHECK(mClassDungeonHunter2 == cls);
    CheckLookups(
        {
            {"sendAppToBackground ()V", &mMethodSendAppToBackground},
            {"OpenGLive (I)V", &mMethodOpenGLive},
            {"OpenIGP (I)V", &mMethodOpenIGP},
            {"NotifyTrophy (I)V", &mMethodNotifyTrophy},
            {"Get_PhoneLanguage ()I", &mMethodGet_PhoneLanguage},
            {"Get_PhoneManufacturer ()I", &mMethodGet_PhoneManufacturer},
            {"Get_PhoneModel ()I", &mMethodGet_PhoneModel},
            {"Exit ()V", &mMethodExit},
            {"isWifiAlive ()I", &mMethodIsWifiAlive},
            {"isSupportMM ()I", &mMethodIsSupportMM},
            {"openBrowser (Ljava/lang/String;)V", &mMethodOpenBrowser},
            {"unlockDemo ()I", &mMethodUnlockDemo},
            {"lockDemo ()V", &mMethodLockDemo},
            {"DisableLaunchGame ()I", &mMethodDisableLaunchGame},
            {"IncreaseLaunchTimes ()V", &mMethodIncreaseLaunchTimes},
            {"VZIsInProgress ()I", &mMethodVZIsInProgress},
            {"VZIsErrorOcurred ()I", &mMethodVZIsErrorOcurred},
            {"VZRequestLogin ()V", &mMethodVZRequestLogin},
            {"VZRequestPurchaseGame ()V", &mMethodVZRequestPurchaseGame},
            {"VZGetGamePrice ()[B", &mMethodVZGetGamePrice},
            {"VZGetGameName ()[B", &mMethodVZGetGameName},
            {"VZGetLastServerMsg ()[B", &mMethodVZGetLastServerMsg},
            {"VZInitMobileNetwork ()V", &mMethodVZInitMobileNetwork},
            {"VZIsMobileNetworkReady ()I", &mMethodVZIsMobileNetworkReady},
            {"VZRestoreNetworkState ()V", &mMethodVZRestoreNetworkState},
        },
        cls);
}

void TestDungeonHunter2Natives() {
    g_trace.clear();
    nativeSendAppBackground();
    nativeOpenIGP(3);
    nativeOpenGLive(4);
    NotifyTrophy(7);
    nativeExit();
    nativeLockDemo();
    g_intResults[mMethodIsWifiAlive] = 1;
    g_intResults[mMethodUnlockDemo] = 9;
    CHECK(nativeIsWifiAlive() == 1);
    CHECK(nativeUnlockDemo() == 9);
    nativeOpenBrowser("http://example.test/x");
    const std::vector<std::string> expected = {
        "CallStaticVoidMethod sendAppToBackground",
        "CallStaticVoidMethod OpenIGP 3",
        "CallStaticVoidMethod OpenGLive 4",
        "CallStaticVoidMethod NotifyTrophy 7",
        "CallStaticVoidMethod Exit",
        "CallStaticVoidMethod lockDemo",
        "CallStaticIntMethod isWifiAlive",
        "CallStaticIntMethod unlockDemo",
        "NewStringUTF http://example.test/x",
        "CallStaticVoidMethod openBrowser http://example.test/x",
        "DeleteLocalRef http://example.test/x",
    };
    CHECK(g_trace == expected);
}

void TestSetPhone() {
    Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeSetPhone(&g_env, nullptr, 960, 640);
    CHECK(Width_Screen == 960);
    CHECK(Height_Screen == 640);
}

}  // namespace

int main() {
    InstallTable();
    const jclass glMediaPlayer = reinterpret_cast<jclass>(static_cast<uintptr_t>(0x7001));
    const jclass glResLoader = reinterpret_cast<jclass>(static_cast<uintptr_t>(0x7002));
    const jclass dungeonHunter2 = reinterpret_cast<jclass>(static_cast<uintptr_t>(0x7003));

    TestJniOnLoad();
    TestGLMediaPlayerInit(glMediaPlayer);
    TestLoadMovie();
    TestGetSdFolderPath();
    TestGLResLoaderInit(glResLoader);
    TestDungeonHunter2Init(dungeonHunter2);
    TestDungeonHunter2Natives();
    TestSetPhone();

    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("p1-core-platform-global-f216b6-2 test: all checks passed\n");
    return 0;
}
