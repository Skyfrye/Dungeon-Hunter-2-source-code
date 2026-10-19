// Checks for the platform batch p1-tinyxml-and-c-libs-global-f216b6-0, with a fake JNIEnv (no JVM needed):
//  - the JNI table slots the forwarders call sit at the binary's byte offsets (4 bytes per slot there),
//  - each VZPurchase_* forwarder calls the right static method ID on the right class,
//  - the byte[] getters copy the bytes and NUL-terminate them,
//  - NVThreadSpawnJNIThread runs its function on a new thread with the argument it was given.
#include "tinyxml-and-c-libs/jni_globals.hpp"
#include "tinyxml-and-c-libs/nvthread_jni.hpp"
#include "tinyxml-and-c-libs/vzpurchase.hpp"

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

// This test links only this batch's source, not core-platform's, so it supplies the mEnv that the image gets
// from core-platform/src/p1-core-platform-global-f216b6-0.cpp. Only this test program defines it.
JNIEnv* mEnv = nullptr;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// What the fake table saw.
int g_voidCalls = 0;
int g_intCalls = 0;
int g_objectCalls = 0;
jmethodID g_lastMethod = nullptr;
jclass g_lastClass = nullptr;
int g_intResult = 0;
jobject g_array = reinterpret_cast<jobject>(static_cast<std::uintptr_t>(0x55));
jsize g_arrayLength = 0;
const char* g_bytes = "";
jobject g_deletedRef = nullptr;
int g_deleteCalls = 0;
int g_regionStart = -1;

void MockCallStaticVoidMethod(JNIEnv*, jclass cls, jmethodID method, ...) {
    ++g_voidCalls;
    g_lastClass = cls;
    g_lastMethod = method;
}

jint MockCallStaticIntMethod(JNIEnv*, jclass cls, jmethodID method, ...) {
    ++g_intCalls;
    g_lastClass = cls;
    g_lastMethod = method;
    return g_intResult;
}

jobject MockCallStaticObjectMethod(JNIEnv*, jclass cls, jmethodID method, ...) {
    ++g_objectCalls;
    g_lastClass = cls;
    g_lastMethod = method;
    return g_array;
}

jsize MockGetArrayLength(JNIEnv*, jarray) {
    return g_arrayLength;
}

void MockGetByteArrayRegion(JNIEnv*, jbyteArray, jsize start, jsize len, jbyte* buf) {
    g_regionStart = start;
    std::memcpy(buf, g_bytes, static_cast<std::size_t>(len));
}

void MockDeleteLocalRef(JNIEnv*, jobject ref) {
    ++g_deleteCalls;
    g_deletedRef = ref;
}

void ResetCalls() {
    g_voidCalls = g_intCalls = g_objectCalls = 0;
    g_lastMethod = nullptr;
    g_lastClass = nullptr;
    g_deleteCalls = 0;
    g_deletedRef = nullptr;
    g_regionStart = -1;
}

// The byte offset that a slot has in the 32-bit binary table (4 bytes per slot), from its offset in this
// host's table (sizeof(void*) bytes per slot).
std::size_t Slot32(std::size_t offset_in_host_table) {
    return offset_in_host_table / sizeof(void*) * 4;
}

// Every test shares one fake env. Its table is filled in once by main().
JNINativeInterface g_table{};
_JNIEnv g_env;

// Each fake method ID is a distinct non-null address, so the tests can match the one that was passed.
jmethodID Id(std::uintptr_t n) { return reinterpret_cast<jmethodID>(n); }

void SetUpGlobals() {
    mEnv = &g_env;
    mClassDungeonHunter2 = reinterpret_cast<jclass>(static_cast<std::uintptr_t>(0x1001));
    mMethodVZIsInProgress = Id(0x2001);
    mMethodVZIsErrorOcurred = Id(0x2002);
    mMethodVZRequestLogin = Id(0x2003);
    mMethodVZRequestPurchaseGame = Id(0x2004);
    mMethodVZGetGamePrice = Id(0x2005);
    mMethodVZGetGameName = Id(0x2006);
    mMethodVZGetLastServerMsg = Id(0x2007);
    mMethodVZInitMobileNetwork = Id(0x2008);
    mMethodVZIsMobileNetworkReady = Id(0x2009);
    mMethodVZRestoreNetworkState = Id(0x200a);
}

// Context for the thread test: the function records what it was given.
int g_threadArg = 0;
int g_threadRan = 0;
int ThreadFn(int arg) {
    g_threadArg = arg;
    g_threadRan = 1;
    return arg * 2;
}

}  // namespace

int main() {
    // Table slots: the header's struct order must match the binary's byte offsets (4 bytes per slot).
    CHECK(Slot32(offsetof(JNINativeInterface, CallStaticObjectMethod)) == 456);
    CHECK(Slot32(offsetof(JNINativeInterface, CallStaticIntMethod)) == 516);
    CHECK(Slot32(offsetof(JNINativeInterface, CallStaticVoidMethod)) == 564);
    CHECK(Slot32(offsetof(JNINativeInterface, GetArrayLength)) == 684);
    CHECK(Slot32(offsetof(JNINativeInterface, GetByteArrayRegion)) == 800);
    CHECK(Slot32(offsetof(JNINativeInterface, DeleteLocalRef)) == 92);

    g_table.CallStaticObjectMethod = MockCallStaticObjectMethod;
    g_table.CallStaticIntMethod = MockCallStaticIntMethod;
    g_table.CallStaticVoidMethod = MockCallStaticVoidMethod;
    g_table.GetArrayLength = MockGetArrayLength;
    g_table.GetByteArrayRegion = MockGetByteArrayRegion;
    g_table.DeleteLocalRef = MockDeleteLocalRef;
    g_env.functions = &g_table;
    SetUpGlobals();

    // Void forwarders: one CallStaticVoidMethod with the matching ID.
    ResetCalls();
    VZPurchase_requestLogin();
    CHECK(g_voidCalls == 1 && g_lastMethod == mMethodVZRequestLogin && g_lastClass == mClassDungeonHunter2);
    ResetCalls();
    VZPurchase_requestPurchaseGame();
    CHECK(g_voidCalls == 1 && g_lastMethod == mMethodVZRequestPurchaseGame);
    ResetCalls();
    VZPurchase_InitMobileNetwork();
    CHECK(g_voidCalls == 1 && g_lastMethod == mMethodVZInitMobileNetwork);
    ResetCalls();
    VZPurchase_RestoreNetworkState();
    CHECK(g_voidCalls == 1 && g_lastMethod == mMethodVZRestoreNetworkState);

    // Int forwarders: CallStaticIntMethod, the value is passed through.
    ResetCalls();
    g_intResult = 7;
    CHECK(VZPurchase_IsMobileNetworkReady() == 7);
    CHECK(g_intCalls == 1 && g_lastMethod == mMethodVZIsMobileNetworkReady);
    ResetCalls();
    g_intResult = 0;
    CHECK(VZPurchase_isErrorOcurred() == 0);
    CHECK(g_intCalls == 1 && g_lastMethod == mMethodVZIsErrorOcurred);
    ResetCalls();
    g_intResult = 1;
    CHECK(VZPurchase_isInProgress() == 1);
    CHECK(g_intCalls == 1 && g_lastMethod == mMethodVZIsInProgress);

    // byte[] getters: the bytes are copied, NUL-terminated, and the array reference is released.
    ResetCalls();
    g_array = reinterpret_cast<jobject>(static_cast<std::uintptr_t>(0x77));
    g_arrayLength = 5;
    g_bytes = "hello";
    char* msg = VZPurchase_getLastServerMsg();
    CHECK(msg != nullptr);
    CHECK(msg != nullptr && std::strcmp(msg, "hello") == 0);
    CHECK(g_objectCalls == 1 && g_lastMethod == mMethodVZGetLastServerMsg && g_lastClass == mClassDungeonHunter2);
    CHECK(g_regionStart == 0);
    CHECK(g_deleteCalls == 1 && g_deletedRef == g_array);
    std::free(msg);

    ResetCalls();
    g_arrayLength = 4;
    g_bytes = "Game";
    char* name = VZPurchase_getGameName();
    CHECK(name != nullptr && std::strcmp(name, "Game") == 0);
    CHECK(g_lastMethod == mMethodVZGetGameName);
    std::free(name);

    ResetCalls();
    g_arrayLength = 0;
    g_bytes = "";
    char* price = VZPurchase_getGamePrice();
    CHECK(price != nullptr && price[0] == '\0');
    CHECK(g_lastMethod == mMethodVZGetGamePrice);
    CHECK(g_deleteCalls == 1);
    std::free(price);

    // Thread glue. With no JavaVM set, NVThreadGetCurrentJNIEnv has no env to return.
    CHECK(NVThreadGetCurrentJNIEnv() == nullptr);

    pthread_t tid{};
    CHECK(NVThreadSpawnJNIThread(&tid, nullptr, nullptr, 0) == -1);

    g_threadArg = 0;
    g_threadRan = 0;
    CHECK(NVThreadSpawnJNIThread(&tid, nullptr, ThreadFn, 21) == 0);
    CHECK(pthread_join(tid, nullptr) == 0);
    CHECK(g_threadRan == 1 && g_threadArg == 21);

    std::printf("%s\n", failures ? "p1-tinyxml-and-c-libs-global-f216b6-0: FAILED" : "p1-tinyxml-and-c-libs-global-f216b6-0: ok");
    return failures != 0;
}
