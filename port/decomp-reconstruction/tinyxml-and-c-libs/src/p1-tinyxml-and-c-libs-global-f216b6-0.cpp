// Platform batch p1-tinyxml-and-c-libs-global-f216b6-0: the Android JNI glue that the decomp pass skipped
// (VZPurchase_*, the NVThread JNI thread helpers). Written against the real JNI header
// (shared/include/jni.h). Every JNI call goes through mEnv->functions with the same table slot the binary
// uses (the +N byte offsets in the comments, 4 bytes per slot in the 32-bit table), so the call sequence is
// the original's.
#include "tinyxml-and-c-libs/jni_globals.hpp"
#include "tinyxml-and-c-libs/nvthread.hpp"  // g_nvThreadVm, the JavaVM word NVThreadInit stores
#include "tinyxml-and-c-libs/nvthread_jni.hpp"
#include "tinyxml-and-c-libs/vzpurchase.hpp"

#include <cstdarg>
#include <cstddef>
#include <cstdio>
#include <cstdlib>

#if defined(__ANDROID__)
#include <android/log.h>
#endif

// JNI state, declared in jni_globals.hpp. mEnv is not defined here: its one definition is in
// core-platform/src/p1-core-platform-global-f216b6-0.cpp, because GameRenderer nativeGetJNIEnv (0x53115c) stores
// into it. The binary also sets mEnv in Musicplayer nativeInitplayer (0x533658). The rest are defined here, and
// nothing else in the tree defines them. This batch sets mClassDungeonHunter2 and the mMethodVZ* IDs in
// DungeonHunter2.nativeInit (0x5325c4).
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

namespace {

// The binary's s_vm (0x9f6544), shared by NVThreadInit (0x533bd8) and the two functions below. nvthread.cpp
// owns the storage (g_nvThreadVm, nvthread.hpp) and NVThreadInit writes it, so this file reads it instead of
// keeping a second copy; that is what lets the attach and detach branches below run.
//
// Key that holds each thread's JNIEnv. It is 0 until pthread_key_create runs.
pthread_key_t s_jniEnvKey{};

// Logs like _android_log_print(3, "NVThread", ...): debug priority on Android, stderr elsewhere.
void NVThreadLog(const char* format, ...) {
    va_list args;
    va_start(args, format);
#if defined(__ANDROID__)
    __android_log_vprint(ANDROID_LOG_DEBUG, "NVThread", format, args);
#else
    std::fprintf(stderr, "NVThread: ");
    std::vfprintf(stderr, format, args);
    std::fprintf(stderr, "\n");
#endif
    va_end(args);
}

// Calls the static method that returns byte[], copies the bytes into a malloc'd buffer with a NUL after
// them, and drops the local reference. The three byte[] getters (0x5331b4, 0x533278, 0x53333c) share this
// sequence: CallStaticObjectMethod +456, GetArrayLength +684, GetByteArrayRegion +800, DeleteLocalRef +92.
// The original does not check the malloc result or a null array, so neither is checked here.
char* CopyStaticByteArray(jmethodID method) {
    jbyteArray array = static_cast<jbyteArray>(
        mEnv->functions->CallStaticObjectMethod(mEnv, mClassDungeonHunter2, method));
    jsize length = mEnv->functions->GetArrayLength(mEnv, array);
    char* buffer = static_cast<char*>(std::malloc(static_cast<std::size_t>(length) + 1));
    mEnv->functions->GetByteArrayRegion(mEnv, array, 0, length, reinterpret_cast<jbyte*>(buffer));
    buffer[length] = 0;
    mEnv->functions->DeleteLocalRef(mEnv, array);
    return buffer;
}

}  // namespace

// 0x532fb0 VZPurchase_requestLogin
// The Java method is ()V. The Hex-Rays result is the register left by the void call, so this is void.
void VZPurchase_requestLogin() {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodVZRequestLogin);  // +564
}

// 0x532ff8 VZPurchase_requestPurchaseGame
// ()V, same as VZPurchase_requestLogin.
void VZPurchase_requestPurchaseGame() {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodVZRequestPurchaseGame);  // +564
}

// 0x533040 VZPurchase_InitMobileNetwork
// ()V.
void VZPurchase_InitMobileNetwork() {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodVZInitMobileNetwork);  // +564
}

// 0x533088 VZPurchase_RestoreNetworkState
// ()V.
void VZPurchase_RestoreNetworkState() {
    mEnv->functions->CallStaticVoidMethod(mEnv, mClassDungeonHunter2, mMethodVZRestoreNetworkState);  // +564
}

// 0x5330d0 VZPurchase_IsMobileNetworkReady
// The Java method is ()I, so the call is CallStaticIntMethod (+516), not a boolean call. The Hex-Rays
// char cast is the decompiler's guess.
int VZPurchase_IsMobileNetworkReady() {
    return mEnv->functions->CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodVZIsMobileNetworkReady);  // +516
}

// 0x53311c VZPurchase_isErrorOcurred
// ()I, CallStaticIntMethod (+516).
int VZPurchase_isErrorOcurred() {
    return mEnv->functions->CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodVZIsErrorOcurred);  // +516
}

// 0x533168 VZPurchase_isInProgress
// ()I, CallStaticIntMethod (+516).
int VZPurchase_isInProgress() {
    return mEnv->functions->CallStaticIntMethod(mEnv, mClassDungeonHunter2, mMethodVZIsInProgress);  // +516
}

// 0x5331b4 VZPurchase_getLastServerMsg
// Returns a malloc'd copy of the byte[] that VZGetLastServerMsg returns. The caller frees it.
char* VZPurchase_getLastServerMsg() {
    return CopyStaticByteArray(mMethodVZGetLastServerMsg);
}

// 0x533278 VZPurchase_getGameName
// Same as VZPurchase_getLastServerMsg, for VZGetGameName.
char* VZPurchase_getGameName() {
    return CopyStaticByteArray(mMethodVZGetGameName);
}

// 0x53333c VZPurchase_getGamePrice
// Same as VZPurchase_getLastServerMsg, for VZGetGamePrice.
char* VZPurchase_getGamePrice() {
    return CopyStaticByteArray(mMethodVZGetGamePrice);
}

// 0x533cb8 NVThreadSpawnJNIThread
// The context is a malloc'd {arg, fn} block; NVThreadSpawnProc frees it when the thread starts. On failure
// the block is freed here. The original's 8-byte block is the host-size struct here.
int NVThreadSpawnJNIThread(pthread_t* thread, const pthread_attr_t* attr, int (*fn)(int), int arg) {
    if (!fn) {
        return -1;
    }
    auto* context = static_cast<NVThreadSpawnContext*>(std::malloc(sizeof(NVThreadSpawnContext)));
    context->arg = arg;
    context->fn = fn;
    int result = pthread_create(thread, attr, reinterpret_cast<void* (*)(void*)>(&NVThreadSpawnProc), context);
    if (result != 0) {
        std::free(context);
    }
    return result;
}

// 0x533d20 NVThreadGetCurrentJNIEnv
// The key handling is the binary's (create once, getspecific, setspecific). The JavaVM is g_nvThreadVm.asVm,
// the word NVThreadInit (0x533bd8, nvthread.cpp) stores, so the attach path runs whenever a VM was supplied.
// The listing's `return v0` at the end returns the (null) value read before the attach attempt; the port
// returns the same.
JNIEnv* NVThreadGetCurrentJNIEnv() {
    JNIEnv* pointer = nullptr;
    void* v0 = nullptr;
    if (s_jniEnvKey) {
        v0 = pthread_getspecific(s_jniEnvKey);
        pointer = static_cast<JNIEnv*>(v0);
        if (v0) {
            return pointer;
        }
    } else {
        pthread_key_create(&s_jniEnvKey, nullptr);
        v0 = pointer;
    }
    if (g_nvThreadVm.asVm) {
        JavaVM* const vm = g_nvThreadVm.asVm;
        jint v2 = vm->functions->AttachCurrentThread(vm, &pointer, v0);  // +16
        NVThreadLog("AttachCurrentThread: %d, 0x%p", static_cast<int>(v2), static_cast<void*>(pointer));
        if (v2 || !pointer) {
            NVThreadLog("Error - could not attach thread to JVM!");
        } else {
            pthread_setspecific(s_jniEnvKey, pointer);
            return pointer;
        }
    } else {
        NVThreadLog("Error - could not find JVM!");
    }
    return static_cast<JNIEnv*>(v0);
}

// 0x533e4c NVThreadSpawnProc
// The context is read and freed, NVThreadGetCurrentJNIEnv runs, the function runs with its argument, and its
// result is returned. The listing's DetachCurrentThread (+20) runs when the VM is set, which is now reachable
// through g_nvThreadVm.asVm.
int NVThreadSpawnProc(NVThreadSpawnContext* context) {
    int arg = context->arg;
    int (*fn)(int) = context->fn;
    std::free(context);
    NVThreadGetCurrentJNIEnv();
    int result = fn(arg);
    if (g_nvThreadVm.asVm) {
        JavaVM* const vm = g_nvThreadVm.asVm;
        vm->functions->DetachCurrentThread(vm);  // +20
    }
    return result;
}
