// Tests for batch p1-core-platform-global-f216b6-0: the GameRenderer and GLMediaPlayer natives, the app-loop
// forwards, and the sound calls into Java. A fake JNINativeInterface records the variadic arguments of
// CallStaticVoidMethod (table slot 141); each call sets the expected argument kinds in g_sig first.
#include "core-platform/tb/android_jni_bridge.hpp"

#include <cstddef>
#include <cstdint>
#include <cstdarg>
#include <cstdio>

// Stand-ins for the app-loop functions, which the app and menu batches define (not in this tree yet).
namespace {
int g_appInitCalls = 0;
int g_appUpdateCalls = 0;
int g_appDestroyCalls = 0;

int g_failures = 0;

#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                              \
        }                                                              \
    } while (0)

// Expected variadic kinds for the next call: 'i' is an int argument, 'd' is a double argument.
const char* g_sig = "";
int g_callCount = 0;
int g_argCount = 0;
double g_args[8] = {};
jclass g_clsSeen = nullptr;
jmethodID g_midSeen = nullptr;

void FakeCallStaticVoidMethod(JNIEnv*, jclass cls, jmethodID mid, ...) {
    va_list ap;
    va_start(ap, mid);
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
    va_end(ap);
    ++g_callCount;
}

void ResetFake(const char* sig) {
    g_sig = sig;
    g_callCount = 0;
    g_argCount = 0;
    g_clsSeen = nullptr;
    g_midSeen = nullptr;
}

JNINativeInterface g_table{};
JNIEnv g_env{};

jclass ClassObj() { return reinterpret_cast<jclass>(static_cast<std::uintptr_t>(0x1000)); }
jmethodID MethodId(std::uintptr_t id) { return reinterpret_cast<jmethodID>(id); }

}  // namespace

// The app-loop functions the natives forward to. C linkage, as in the binary.
extern "C" int appInit() {
    ++g_appInitCalls;
    return 1;
}
extern "C" int appUpdate() {
    ++g_appUpdateCalls;
    return 2;
}
extern "C" int appDestroy() {
    ++g_appDestroyCalls;
    return 3;
}

int main() {
    // The binary calls CallStaticVoidMethod at byte offset 0x234 on 32-bit ARM, which is table index 141.
    // The host table has pointer-sized slots, so the check divides the offset by the slot size.
    CHECK(offsetof(JNINativeInterface, CallStaticVoidMethod) / sizeof(void*) == 141);

    g_table.CallStaticVoidMethod = &FakeCallStaticVoidMethod;
    g_env.functions = &g_table;
    mEnv = &g_env;
    mClassGLMediaPlayer = ClassObj();
    loadSoundID = MethodId(0x101);
    loadSoundBigID = MethodId(0x102);
    playSoundID = MethodId(0x103);
    playSoundBigID = MethodId(0x104);
    pauseSoundID = MethodId(0x105);
    pauseSoundBigID = MethodId(0x106);

    // GLMediaPlayer constants.
    CHECK(Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeGetTotalSounds(&g_env, ClassObj()) == 640);
    CHECK(Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeGetTotalSoundsOfSameInstance(&g_env, ClassObj()) ==
          0);

    // nativeGetJNIEnv stores the env it receives in mEnv.
    mEnv = nullptr;
    Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGetJNIEnv(&g_env, nullptr);
    CHECK(mEnv == &g_env);

    // nativeResize stores width and height; nativeOnSurfaceChanged forwards its width and height to it.
    Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeResize(&g_env, ClassObj(), 800, 480);
    CHECK(s_windowWidth == 800 && s_windowHeight == 480);
    Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeOnSurfaceChanged(&g_env, nullptr, 320, 240);
    CHECK(s_windowWidth == 320 && s_windowHeight == 240);

    // nativeInit: the first call (app not alive) runs appInit and sets g_appAlive; later calls set the context flag.
    g_appAlive = 0;
    m_bOGLLostContext = -1;
    g_appInitCalls = 0;
    Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeInit(&g_env, ClassObj(), 5);
    CHECK(g_appInitCalls == 1);
    CHECK(g_appAlive == 1);
    CHECK(m_bOGLLostContext == -1);
    Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeInit(&g_env, ClassObj(), 7);
    CHECK(g_appInitCalls == 1);
    CHECK(m_bOGLLostContext == 7);

    // nativeRender calls appUpdate only while the in-game menu is closed.
    g_appUpdateCalls = 0;
    m_bOpenIGM = 0;
    Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeRender(&g_env, ClassObj());
    CHECK(g_appUpdateCalls == 1);
    m_bOpenIGM = 1;
    Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeRender(&g_env, ClassObj());
    CHECK(g_appUpdateCalls == 1);
    m_bOpenIGM = 0;

    // nativeDone forwards to appDestroy.
    g_appDestroyCalls = 0;
    Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeDone(&g_env, ClassObj());
    CHECK(g_appDestroyCalls == 1);

    // Empty natives return without effect.
    Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeGameRenderer(&g_env, nullptr);
    Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeConfig(&g_env, ClassObj());
    Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeOnDrawFrame(&g_env, ClassObj());
    Java_com_gameloft_android_GAND_GloftD2SS_GLMediaPlayer_nativeSetStopOnMusic(&g_env, ClassObj(), 1);
    nativepauseAllMusic();

    // Sound calls: each makes one CallStaticVoidMethod with the class, its method ID and the arguments in order.
    ResetFake("ii");
    nativeLoadSound(3, 4);
    CHECK(g_callCount == 1 && g_clsSeen == mClassGLMediaPlayer && g_midSeen == loadSoundID);
    CHECK(g_argCount == 2 && g_args[0] == 3 && g_args[1] == 4);

    ResetFake("i");
    nativeLoadSoundBig(12);
    CHECK(g_callCount == 1 && g_clsSeen == mClassGLMediaPlayer && g_midSeen == loadSoundBigID);
    CHECK(g_argCount == 1 && g_args[0] == 12);

    // A float third argument arrives as a double, as the binary's __aeabi_f2d does.
    ResetFake("iid");
    nativePlaySound(5, 6, 0.5f);
    CHECK(g_callCount == 1 && g_clsSeen == mClassGLMediaPlayer && g_midSeen == playSoundID);
    CHECK(g_argCount == 3 && g_args[0] == 5 && g_args[1] == 6 && g_args[2] == 0.5);

    ResetFake("idii");
    nativePlaySoundBig(1, 0.25f, 2, 3);
    CHECK(g_callCount == 1 && g_clsSeen == mClassGLMediaPlayer && g_midSeen == playSoundBigID);
    CHECK(g_argCount == 4 && g_args[0] == 1 && g_args[1] == 0.25 && g_args[2] == 2 && g_args[3] == 3);

    ResetFake("ii");
    nativePauseSound(8, 9);
    CHECK(g_callCount == 1 && g_clsSeen == mClassGLMediaPlayer && g_midSeen == pauseSoundID);
    CHECK(g_argCount == 2 && g_args[0] == 8 && g_args[1] == 9);

    ResetFake("i");
    nativePauseSoundBig(10);
    CHECK(g_callCount == 1 && g_clsSeen == mClassGLMediaPlayer && g_midSeen == pauseSoundBigID);
    CHECK(g_argCount == 1 && g_args[0] == 10);

    if (g_failures == 0) {
        std::printf("p1-core-platform-global-f216b6-0 tests passed\n");
    } else {
        std::printf("%d check(s) failed\n", g_failures);
    }
    return g_failures == 0 ? 0 : 1;
}
