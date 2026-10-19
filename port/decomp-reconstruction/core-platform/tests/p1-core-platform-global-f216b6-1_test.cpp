// Tests for batch p1-core-platform-global-f216b6-1: the remaining Android JNI sound natives. A fake JNINativeInterface
// records the class, method ID and variadic arguments of CallStaticVoidMethod (table slot 141) and CallStaticIntMethod
// (table slot 129). Each call sets the expected argument kinds in g_sig first: 'i' is an int, 'd' is a double.
#include "core-platform/tb/android_jni_bridge.hpp"

#include <cstddef>
#include <cstdarg>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <initializer_list>

// The app-loop functions the linked p1-core-platform-global-f216b6-0 source calls. The app batches define them.
extern "C" int appInit() { return 0; }
extern "C" int appUpdate() { return 0; }
extern "C" int appDestroy() { return 0; }

namespace {

int g_failures = 0;

#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                              \
        }                                                              \
    } while (0)

const char* g_sig = "";
int g_callCount = 0;
int g_voidCalls = 0;
int g_intCalls = 0;
int g_argCount = 0;
double g_args[8] = {};
jclass g_clsSeen = nullptr;
jmethodID g_midSeen = nullptr;
jint g_intReturn = 0;

void RecordVarArgs(jclass cls, jmethodID mid, va_list ap) {
    g_clsSeen = cls;
    g_midSeen = mid;
    g_argCount = 0;
    for (const char* p = g_sig; *p != '\0'; ++p) {
        if (*p == 'i') {
            g_args[g_argCount++] = va_arg(ap, int);
        } else if (*p == 'd') {
            g_args[g_argCount++] = va_arg(ap, double);
        }
    }
    ++g_callCount;
}

void FakeCallStaticVoidMethod(JNIEnv*, jclass cls, jmethodID mid, ...) {
    va_list ap;
    va_start(ap, mid);
    RecordVarArgs(cls, mid, ap);
    va_end(ap);
    ++g_voidCalls;
}

jint FakeCallStaticIntMethod(JNIEnv*, jclass cls, jmethodID mid, ...) {
    va_list ap;
    va_start(ap, mid);
    RecordVarArgs(cls, mid, ap);
    va_end(ap);
    ++g_intCalls;
    return g_intReturn;
}

void ResetFake(const char* sig) {
    g_sig = sig;
    g_callCount = 0;
    g_voidCalls = 0;
    g_intCalls = 0;
    g_argCount = 0;
    g_clsSeen = nullptr;
    g_midSeen = nullptr;
}

// True when the last call was one call of the wanted kind (void or int) on the class and method ID, with the expected
// arguments in order.
bool Matches(bool isVoid, jmethodID mid, std::initializer_list<double> expected) {
    if (g_callCount != 1) {
        return false;
    }
    if ((isVoid ? g_voidCalls : g_intCalls) != 1) {
        return false;
    }
    if (g_clsSeen != mClassGLMediaPlayer || g_midSeen != mid) {
        return false;
    }
    if (g_argCount != static_cast<int>(expected.size())) {
        return false;
    }
    int i = 0;
    for (double v : expected) {
        if (g_args[i++] != v) {
            return false;
        }
    }
    return true;
}

// True when the last call read an (int, int, double) argument list in that order, with the expected values. The fake
// reads the third argument as a double, so a caller that omits the float, or passes it as an int, reads a value that
// does not match the promoted float.
bool MatchesIntIntDouble(jmethodID mid, int a, int b, double d) {
    return std::strcmp(g_sig, "iid") == 0 &&
           Matches(true, mid, {static_cast<double>(a), static_cast<double>(b), d});
}

JNINativeInterface g_table{};
JNIEnv g_env{};

jclass ClassObj() { return reinterpret_cast<jclass>(static_cast<std::uintptr_t>(0x1000)); }
jmethodID MethodId(std::uintptr_t id) { return reinterpret_cast<jmethodID>(id); }

}  // namespace

int main() {
    // Void calls use CallStaticVoidMethod (index 141, byte offset 0x234); int calls use CallStaticIntMethod (index 129,
    // byte offset 0x204). The host table has pointer-sized slots, so the check divides the offset by the slot size.
    CHECK(offsetof(JNINativeInterface, CallStaticVoidMethod) / sizeof(void*) == 141);
    CHECK(offsetof(JNINativeInterface, CallStaticIntMethod) / sizeof(void*) == 129);

    g_table.CallStaticVoidMethod = &FakeCallStaticVoidMethod;
    g_table.CallStaticIntMethod = &FakeCallStaticIntMethod;
    g_env.functions = &g_table;
    mEnv = &g_env;
    mClassGLMediaPlayer = ClassObj();
    resumeSoundID = MethodId(0x201);
    resumeSoundBigID = MethodId(0x202);
    stopSoundID = MethodId(0x203);
    stopSoundBigID = MethodId(0x204);
    unloadSoundID = MethodId(0x205);
    unloadSoundBigID = MethodId(0x206);
    isSoundLoadedID = MethodId(0x207);
    isSoundLoadedBigID = MethodId(0x208);
    setVolID = MethodId(0x209);
    setVolumeBigID = MethodId(0x20a);
    resetSoundID = MethodId(0x20b);
    setPitchID = MethodId(0x20c);
    stopAllID = MethodId(0x20d);
    stopAllPoolID = MethodId(0x20e);
    stopAllBigID = MethodId(0x20f);
    destroySoundPoolID = MethodId(0x210);
    initSoundPoolArrayID = MethodId(0x211);
    getWidth = MethodId(0x212);
    isMediaPlaying = MethodId(0x213);
    detectPhoneLangID = MethodId(0x214);

    // Void natives with two int arguments.
    ResetFake("ii");
    nativeResumeSound(3, 4);
    CHECK(Matches(true, resumeSoundID, {3, 4}));

    ResetFake("ii");
    nativeStopSound(6, 7);
    CHECK(Matches(true, stopSoundID, {6, 7}));

    ResetFake("ii");
    nativeUnloadSound(9, 10);
    CHECK(Matches(true, unloadSoundID, {9, 10}));

    // nativeSetVolume and nativeSetPitch take a third float argument. The binary converts it with __aeabi_f2d, and the
    // variadic call promotes it to double, so the expected value is the promoted float.
    ResetFake("iid");
    nativeSetVolume(15, 16, 0.1f);
    CHECK(MatchesIntIntDouble(setVolID, 15, 16, static_cast<double>(0.1f)));

    ResetFake("iid");
    nativeSetPitch(20, 21, 0.3f);
    CHECK(MatchesIntIntDouble(setPitchID, 20, 21, static_cast<double>(0.3f)));

    // Void natives with one int argument.
    ResetFake("i");
    nativeResumeSoundBig(5);
    CHECK(Matches(true, resumeSoundBigID, {5}));

    ResetFake("i");
    nativeStopSoundBig(8);
    CHECK(Matches(true, stopSoundBigID, {8}));

    ResetFake("i");
    nativeUnloadSoundBig(11);
    CHECK(Matches(true, unloadSoundBigID, {11}));

    ResetFake("i");
    nativeResetSound(19);
    CHECK(Matches(true, resetSoundID, {19}));

    ResetFake("i");
    nativeStopAllSoundPool(22);
    CHECK(Matches(true, stopAllPoolID, {22}));

    // nativeStopAllBigSound reads only its first argument (ARM: r0 is the only argument used).
    ResetFake("i");
    nativeStopAllBigSound(-1);
    CHECK(Matches(true, stopAllBigID, {-1}));

    // nativeSetVolumeBig passes its float argument as a double (ARM: BL __aeabi_f2d before the call).
    ResetFake("idi");
    nativeSetVolumeBig(17, 0.5f, 18);
    CHECK(Matches(true, setVolumeBigID, {17, 0.5, 18}));

    // Void natives with no arguments.
    ResetFake("");
    nativeStopAllSounds();
    CHECK(Matches(true, stopAllID, {}));

    ResetFake("");
    nativeDestroySoundPool();
    CHECK(Matches(true, destroySoundPoolID, {}));

    ResetFake("");
    nativeInitSoundPoolArray();
    CHECK(Matches(true, initSoundPoolArrayID, {}));

    // Int natives: the CallStaticIntMethod result is returned.
    ResetFake("ii");
    g_intReturn = 1;
    CHECK(nativeIsSoundLoaded(12, 13) == 1);
    CHECK(Matches(false, isSoundLoadedID, {12, 13}));

    ResetFake("i");
    g_intReturn = 0;
    CHECK(nativeIsSoundLoadedBig(14) == 0);
    CHECK(Matches(false, isSoundLoadedBigID, {14}));

    ResetFake("");
    g_intReturn = 480;
    CHECK(nativeGetWidth() == 480);
    CHECK(Matches(false, getWidth, {}));

    ResetFake("i");
    g_intReturn = 1;
    CHECK(nativeIsMediaPlaying(23) == 1);
    CHECK(Matches(false, isMediaPlaying, {23}));

    ResetFake("");
    g_intReturn = 3;
    CHECK(nativeDetectPhoneLang() == 3);
    CHECK(Matches(false, detectPhoneLangID, {}));

    if (g_failures == 0) {
        std::printf("p1-core-platform-global-f216b6-1 tests passed\n");
    } else {
        std::printf("%d check(s) failed\n", g_failures);
    }
    return g_failures == 0 ? 0 : 1;
}
