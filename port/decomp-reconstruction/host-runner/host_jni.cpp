// Fake Java side for the host runner. The Android build reaches the platform through JNI (GLMediaPlayer, DungeonHunter2, GLResLoader and
// Musicplayer static methods called from the C natives with mEnv->functions->...). This file supplies a JavaVM/JNIEnv whose static-method calls
// are answered here, so the natives run unchanged: getSDFolder returns the data directory, the phone queries describe a generic phone, the sound
// and movie calls do nothing (loadMovie reports the movie as finished). Every slot of the function table not listed returns 0.

#include <cstdarg>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <map>
#include <string>
#include <vector>

#include "core-platform/tb/android_jni_platform.hpp"
#include "host_runner.hpp"

extern "C" {
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGetJNIEnv(JNIEnv*, jobject);
JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_Musicplayer_nativeInitplayer(JNIEnv*, jclass);
}
extern bool videoDone;  // game-app/src/Globals_link1.cpp

namespace dh2host {

bool g_jniLogCalls = false;

namespace {

struct FakeString {
    std::string text;
};
struct FakeByteArray {
    std::vector<jbyte> bytes;
};
struct FakeClass {
    const char* name;
};

std::string g_sdFolder;
int g_language = 0;
int g_width = 1280;
int g_height = 720;
JNIEnv g_env;
JavaVM g_vm;
JNINativeInterface g_table;
JNIInvokeInterface g_invoke;
std::map<std::string, std::string*> g_names;

long long zeroStub(...) { return 0; }

jint getVersion(JNIEnv*) { return JNI_VERSION_1_4; }
// android.media.AudioTrack, as far as vox::DriverAndroid uses it: the constructor, getMinBufferSize, play, pause, stop, release and write([BII)I.
// The frames land in the host sink (host_audio.cpp).
struct FakeTrack {
    bool playing = false;
};
FakeClass g_audioTrackClass{"android/media/AudioTrack"};
struct FakeNativeArray {  // jbyteArray created by NewByteArray (distinct from the FakeByteArray the Java-array natives read)
    std::vector<jbyte> bytes;
};
jclass findClass(JNIEnv*, const char* name) {
    static FakeClass classes[4] = {{"GLMediaPlayer"}, {"DungeonHunter2"}, {"GLResLoader"}, {"Musicplayer"}};
    if (name && std::strcmp(name, "android/media/AudioTrack") == 0) return std::getenv("DH2_NO_AUDIO_THREAD") ? nullptr : reinterpret_cast<jclass>(&g_audioTrackClass);
    return reinterpret_cast<jclass>(&classes[0]);
}
jobject newRef(JNIEnv*, jobject o) { return o; }
void deleteRef(JNIEnv*, jobject) {}

jmethodID getStaticMethodID(JNIEnv*, jclass, const char* name, const char*) {
    auto it = g_names.find(name);
    if (it == g_names.end()) it = g_names.emplace(name, new std::string(name)).first;
    return reinterpret_cast<jmethodID>(it->second);
}
jmethodID getMethodID(JNIEnv* e, jclass c, const char* name, const char* sig) { return getStaticMethodID(e, c, name, sig); }
const std::string& methodName(jmethodID id) {
    static const std::string none = "<null>";
    return id == nullptr ? none : *reinterpret_cast<const std::string*>(id);
}

jint callStaticInt(JNIEnv*, jclass, jmethodID id, ...) {
    const std::string& n = methodName(id);
    if (g_jniLogCalls) std::fprintf(stderr, "[jni] CallStaticInt %s\n", n.c_str());
    if (n == "detectPhoneLang") return g_language;
    if (n == "getWidth") return g_width;
    if (n == "getMinBufferSize") return 8192;  // bytes; the driver divides by 4 (frames) and mixes 1024-frame chunks
    if (n == "isSoundLoaded" || n == "isSoundLoadedBig") return 1;
    if (n == "loadMovie") {
        videoDone = true;  // the movie is not played; the Java side signals the end through appResume
        return 0;
    }
    if (n == "Get_PhoneManufacturer") return -1;  // none of the vendor flags
    if (n == "unlockDemo") return 1;
    if (n == "isWifiAlive") return std::getenv("DH2_NO_WIFI") != nullptr ? 0 : 1;  // the LAN modes need a live network (Application::IsWifiEnabled)
    return 0;  // Get_PhoneLanguage, Get_PhoneModel, isWifiAlive, isSupportMM, DisableLaunchGame, VZ*, isMediaPlaying, GetNumPlaylists
}
jint callStaticIntV(JNIEnv* e, jclass c, jmethodID id, va_list) { return callStaticInt(e, c, id); }  // the C++ JNIEnv wrappers call the V forms
jobject callStaticObject(JNIEnv*, jclass, jmethodID id, ...) {
    const std::string& n = methodName(id);
    if (g_jniLogCalls) std::fprintf(stderr, "[jni] CallStaticObject %s\n", n.c_str());
    if (n == "getSDFolder") return reinterpret_cast<jobject>(new FakeString{g_sdFolder});
    if (n == "GetPlayListName") return reinterpret_cast<jobject>(new FakeByteArray{{'m', 'u', 's', 'i', 'c'}});
    return nullptr;
}
void callStaticVoid(JNIEnv*, jclass, jmethodID id, ...) {
    if (g_jniLogCalls) std::fprintf(stderr, "[jni] CallStaticVoid %s\n", methodName(id).c_str());
}
float callStaticFloat(JNIEnv*, jclass, jmethodID, ...) { return 0.0f; }

jobject newObjectV(JNIEnv*, jclass c, jmethodID, va_list) {
    if (c != reinterpret_cast<jclass>(&g_audioTrackClass)) return nullptr;
    return reinterpret_cast<jobject>(new FakeTrack());
}
void callNonvirtualVoidV(JNIEnv*, jobject obj, jclass, jmethodID id, va_list) {
    const std::string& n = methodName(id);
    if (g_jniLogCalls) std::fprintf(stderr, "[jni] AudioTrack.%s\n", n.c_str());
    if (!obj) return;
    if (n == "play") audioPlay(true);
    else if (n == "pause" || n == "stop") audioPlay(false);
}
jint callNonvirtualIntV(JNIEnv*, jobject, jclass, jmethodID id, va_list ap) {
    if (methodName(id) != "write") return 0;
    jbyteArray arr = va_arg(ap, jbyteArray);
    int off = va_arg(ap, int);
    int len = va_arg(ap, int);
    if (!arr) return 0;
    FakeNativeArray* a = reinterpret_cast<FakeNativeArray*>(arr);
    if (off < 0 || static_cast<size_t>(off + len) > a->bytes.size()) return 0;
    return audioWrite(a->bytes.data() + off, len);
}
jbyteArray newByteArray(JNIEnv*, jsize n) { return reinterpret_cast<jbyteArray>(new FakeNativeArray{std::vector<jbyte>(n > 0 ? n : 0)}); }
void* getPrimitiveArrayCritical(JNIEnv*, jarray a, jboolean* isCopy) {
    if (isCopy) *isCopy = 0;
    return a ? reinterpret_cast<FakeNativeArray*>(a)->bytes.data() : nullptr;
}
void releasePrimitiveArrayCritical(JNIEnv*, jarray, void*, jint) {}
jint pushLocalFrame(JNIEnv*, jint) { return 0; }
jobject popLocalFrame(JNIEnv*, jobject r) { return r; }

jstring newStringUTF(JNIEnv*, const char* s) { return reinterpret_cast<jstring>(new FakeString{s ? s : ""}); }
const char* getStringUTFChars(JNIEnv*, jstring s, jboolean* isCopy) {
    if (isCopy) *isCopy = 0;
    return s ? reinterpret_cast<FakeString*>(s)->text.c_str() : nullptr;
}
void releaseStringUTFChars(JNIEnv*, jstring, const char*) {}
jsize getArrayLength(JNIEnv*, jarray a) { return a ? static_cast<jsize>(reinterpret_cast<FakeByteArray*>(a)->bytes.size()) : 0; }
void getByteArrayRegion(JNIEnv*, jbyteArray a, jsize start, jsize len, jbyte* buf) {
    if (!a) return;
    FakeByteArray* arr = reinterpret_cast<FakeByteArray*>(a);
    for (jsize i = 0; i < len && static_cast<size_t>(start + i) < arr->bytes.size(); ++i) buf[i] = arr->bytes[start + i];
}
jboolean exceptionCheck(JNIEnv*) { return 0; }
jint getJavaVM(JNIEnv*, JavaVM** vm) {
    *vm = &g_vm;
    return 0;
}

jint vmGetEnv(JavaVM*, void** env, jint) {
    *env = &g_env;
    return 0;
}
jint vmAttach(JavaVM*, JNIEnv** env, void*) {
    *env = &g_env;
    return 0;
}
jint vmDetach(JavaVM*) { return 0; }

}  // namespace

void jniInstall(const Options& opt) {
    g_sdFolder = opt.dataDir;
    for (char& c : g_sdFolder)
        if (c == 92) c = '/';
    if (!g_sdFolder.empty() && g_sdFolder.back() != '/') g_sdFolder += '/';
    g_language = opt.language;
    audioOpen(opt);
    g_width = opt.width;
    g_height = opt.height;

    void** slots = reinterpret_cast<void**>(&g_table);
    const size_t n = sizeof(g_table) / sizeof(void*);
    for (size_t i = 0; i < n; ++i) slots[i] = reinterpret_cast<void*>(&zeroStub);
    g_table.GetVersion = getVersion;
    g_table.FindClass = findClass;
    g_table.NewGlobalRef = newRef;
    g_table.NewLocalRef = newRef;
    g_table.DeleteLocalRef = deleteRef;
    g_table.DeleteGlobalRef = deleteRef;
    g_table.GetStaticMethodID = getStaticMethodID;
    g_table.CallStaticIntMethod = callStaticInt;
    g_table.CallStaticBooleanMethod = reinterpret_cast<jboolean (*)(JNIEnv*, jclass, jmethodID, ...)>(callStaticInt);
    g_table.CallStaticIntMethodV = callStaticIntV;
    g_table.CallStaticObjectMethod = callStaticObject;
    g_table.CallStaticVoidMethod = callStaticVoid;
    g_table.CallStaticFloatMethod = callStaticFloat;
    g_table.GetMethodID = getMethodID;
    g_table.NewObjectV = newObjectV;
    g_table.CallNonvirtualVoidMethodV = callNonvirtualVoidV;
    g_table.CallNonvirtualIntMethodV = callNonvirtualIntV;
    g_table.NewByteArray = newByteArray;
    g_table.GetPrimitiveArrayCritical = getPrimitiveArrayCritical;
    g_table.ReleasePrimitiveArrayCritical = releasePrimitiveArrayCritical;
    g_table.PushLocalFrame = pushLocalFrame;
    g_table.PopLocalFrame = popLocalFrame;
    g_table.NewStringUTF = newStringUTF;
    g_table.GetStringUTFChars = getStringUTFChars;
    g_table.ReleaseStringUTFChars = releaseStringUTFChars;
    g_table.GetArrayLength = getArrayLength;
    g_table.GetByteArrayRegion = getByteArrayRegion;
    g_table.ExceptionCheck = exceptionCheck;
    g_table.GetJavaVM = getJavaVM;
    g_env.functions = &g_table;

    std::memset(&g_invoke, 0, sizeof(g_invoke));
    g_invoke.GetEnv = vmGetEnv;
    g_invoke.AttachCurrentThread = vmAttach;
    g_invoke.AttachCurrentThreadAsDaemon = vmAttach;
    g_invoke.DetachCurrentThread = vmDetach;
    g_vm.functions = &g_invoke;

    // The order the Java classes use: the library load, the renderer hands over its env, then each class registers its method IDs.
    JNI_OnLoad(&g_vm, nullptr);
    FakeClass cls{"host"};
    jclass c = reinterpret_cast<jclass>(&cls);
    Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGetJNIEnv(&g_env, nullptr);
    Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeInit(&g_env, c, 0);
    Java_com_gameloft_android_GAND_GloftD2SS_GLResLoader_nativeInit(&g_env, c, 0);
    Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeInit(&g_env, c, 0);
    Java_com_gameloft_android_GAND_GloftD2SS_Musicplayer_nativeInitplayer(&g_env, c);
    Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeSetPhone(&g_env, c, opt.width, opt.height);
}

}  // namespace dh2host
