// Batch p1-core-platform-ADevice-127f54-0: the JNI half of ADevice (the platform pass).
// Each body follows its ARM listing (recovered/native/assembly/libDungeonHunter2.so/ADevice-*.asm):
// the same JNIEnv calls in the same order, with the constants the listing passes (255 for most
// getters, 7 for getGameVersion(char*)).
//
// The JNIEnv calls are the jni.h members (shared/include/jni.h). Those members are the binary's
// _JNIEnv wrappers: CallStaticBooleanMethod (0x52ea74) and CallStaticObjectMethod (0x52eaf8), ledgered
// upstream in p1-core-platform-JNIEnv-09bcf6-0. The env comes from NVThreadGetCurrentJNIEnv
// (0x533d20, tinyxml-and-c-libs).

#include "core-platform/adevice.hpp"

#include <cstddef>
#include <cstring>

#include "tinyxml-and-c-libs/nvthread_jni.hpp"

// The binary keeps these as globals; they start at zero.
jclass ADevice::cDevice = nullptr;
jmethodID ADevice::mIMEI = nullptr;
jmethodID ADevice::mOperatorName = nullptr;
jmethodID ADevice::mLineNumber = nullptr;
jmethodID ADevice::mGameVersion = nullptr;
jmethodID ADevice::mIsWifiEnable = nullptr;
jmethodID ADevice::mHostName = nullptr;
jmethodID ADevice::mSetUniqueCode = nullptr;
jmethodID ADevice::mUserAgent = nullptr;

// 0x52eaa8 ADevice::CallJNIFuncBool(_jclass*, _jmethodID*)
// The listing returns the jboolean of CallStaticBooleanMethod(env, cls, method).
bool ADevice::CallJNIFuncBool(jclass cls, jmethodID method) {
    JNIEnv* env = NVThreadGetCurrentJNIEnv();
    return env->CallStaticBooleanMethod(cls, method) != JNI_FALSE;
}

// 0x52eac8 ADevice::isWifiEnable()
// Tail call: CallJNIFuncBool(cDevice, mIsWifiEnable).
bool ADevice::isWifiEnable() { return CallJNIFuncBool(cDevice, mIsWifiEnable); }

// 0x52eb2c ADevice::CallJNIFuncSendInt(_jclass*, _jmethodID*, int)
// Tail call of _JNIEnv::CallStaticObjectMethod(env, cls, method, value): the int is the single
// variadic word. The Java method it calls, e(int), is void; the listing still uses the
// object-valued form and returns its result, which is kept here.
jobject ADevice::CallJNIFuncSendInt(jclass cls, jmethodID method, int value) {
    JNIEnv* env = NVThreadGetCurrentJNIEnv();
    return env->CallStaticObjectMethod(cls, method, value);
}

// 0x52eb54 ADevice::setUniqueCode(int)
// Tail call: CallJNIFuncSendInt(cDevice, mSetUniqueCode, code). The listing returns the jobject that
// call produces in r0. No caller in the tree reads it, so this body returns void.
void ADevice::setUniqueCode(int code) { CallJNIFuncSendInt(cDevice, mSetUniqueCode, code); }

// 0x52eb88 ADevice::CallJNIFuncSendChar(_jclass*, _jmethodID*, char*)
// NewStringUTF(text), then CallStaticObjectMethod(cls, method, string) with the result discarded,
// then DeleteLocalRef(string).
void ADevice::CallJNIFuncSendChar(jclass cls, jmethodID method, char* text) {
    JNIEnv* env = NVThreadGetCurrentJNIEnv();
    jstring value = env->NewStringUTF(text);
    env->CallStaticObjectMethod(cls, method, value);
    env->DeleteLocalRef(value);
}

// 0x52ebe0 ADevice::CallJNIFuncChar(_jclass*, _jmethodID*, char*, int, char*)
// memset(buffer, 0, size); then NewStringUTF(text); the byte[] result of
// CallStaticObjectMethod(cls, method, string) is copied into buffer with GetByteArrayRegion(0, length).
// The copy takes the whole array length; size only bounds the memset, as in the listing.
// Releases the array and then the string.
void ADevice::CallJNIFuncChar(jclass cls, jmethodID method, char* buffer, int size, char* text) {
    JNIEnv* env = NVThreadGetCurrentJNIEnv();
    std::memset(buffer, 0, static_cast<std::size_t>(size));
    jstring value = env->NewStringUTF(text);
    jbyteArray bytes = static_cast<jbyteArray>(env->CallStaticObjectMethod(cls, method, value));
    jsize length = env->GetArrayLength(bytes);
    env->GetByteArrayRegion(bytes, 0, length, reinterpret_cast<jbyte*>(buffer));
    env->DeleteLocalRef(bytes);
    env->DeleteLocalRef(value);
}

// 0x52eca4 ADevice::CallJNIFuncChar(_jclass*, _jmethodID*, char*, int)
// As the form above with no string argument: memset(buffer, 0, size), the byte[] result of
// CallStaticObjectMethod(cls, method), GetByteArrayRegion(0, length) into buffer, then release.
void ADevice::CallJNIFuncChar(jclass cls, jmethodID method, char* buffer, int size) {
    JNIEnv* env = NVThreadGetCurrentJNIEnv();
    std::memset(buffer, 0, static_cast<std::size_t>(size));
    jbyteArray bytes = static_cast<jbyteArray>(env->CallStaticObjectMethod(cls, method));
    jsize length = env->GetArrayLength(bytes);
    env->GetByteArrayRegion(bytes, 0, length, reinterpret_cast<jbyte*>(buffer));
    env->DeleteLocalRef(bytes);
}

// 0x52ed38 ADevice::getUserAgent(char*)
// Tail call: CallJNIFuncChar(cDevice, mUserAgent, buffer, 255).
void ADevice::getUserAgent(char* buffer) { CallJNIFuncChar(cDevice, mUserAgent, buffer, 0xff); }

// 0x52ed70 ADevice::getHostName(char*, int)
// Tail call: CallJNIFuncChar(cDevice, mHostName, buffer, size).
void ADevice::getHostName(char* buffer, int size) { CallJNIFuncChar(cDevice, mHostName, buffer, size); }

// 0x52edb0 ADevice::getHostName(char*)
// Thunk: mov r1, #0xff; b getHostName(char*, int).
void ADevice::getHostName(char* buffer) { getHostName(buffer, 0xff); }

// 0x52edb8 ADevice::getGameVersion(char*, int)
// Tail call: CallJNIFuncChar(cDevice, mGameVersion, buffer, size).
void ADevice::getGameVersion(char* buffer, int size) {
    CallJNIFuncChar(cDevice, mGameVersion, buffer, size);
}

// 0x52edf8 ADevice::getGameVersion(char*)
// Thunk: mov r1, #7; b getGameVersion(char*, int).
void ADevice::getGameVersion(char* buffer) { getGameVersion(buffer, 7); }

// 0x52ee00 ADevice::getLineNumber(char*)
// Tail call: CallJNIFuncChar(cDevice, mLineNumber, buffer, 255).
void ADevice::getLineNumber(char* buffer) { CallJNIFuncChar(cDevice, mLineNumber, buffer, 0xff); }

// 0x52ee38 ADevice::getOperatorName(char*)
// Tail call: CallJNIFuncChar(cDevice, mOperatorName, buffer, 255).
void ADevice::getOperatorName(char* buffer) {
    CallJNIFuncChar(cDevice, mOperatorName, buffer, 0xff);
}

// 0x52ee70 ADevice::getIMEI(char*)
// Tail call: CallJNIFuncChar(cDevice, mIMEI, buffer, 255).
void ADevice::getIMEI(char* buffer) { CallJNIFuncChar(cDevice, mIMEI, buffer, 0xff); }

// 0x52eee8 ADevice::Init(_JNIEnv*, _jclass*)
// cDevice = NewGlobalRef(cls). Then each method ID is GetStaticMethodID(env, cDevice, name, sig), in
// the listing's order, and each result is stored in its member before the next lookup. The listing
// leaves mUserAgent in r0. Its caller, the nativeInit export, is void, so this body returns void.
void ADevice::Init(JNIEnv* env, jclass cls) {
    cDevice = static_cast<jclass>(env->NewGlobalRef(cls));
    mIMEI = env->GetStaticMethodID(cDevice, "a", "()[B");
    mOperatorName = env->GetStaticMethodID(cDevice, "b", "()[B");
    mLineNumber = env->GetStaticMethodID(cDevice, "c", "()[B");
    mGameVersion = env->GetStaticMethodID(cDevice, "d", "()[B");
    mIsWifiEnable = env->GetStaticMethodID(cDevice, "IsWifiEnable", "()Z");
    mHostName = env->GetStaticMethodID(cDevice, "getHostName", "()[B");
    mSetUniqueCode = env->GetStaticMethodID(cDevice, "e", "(I)V");
    mUserAgent = env->GetStaticMethodID(cDevice, "f", "()[B");
}

// 0x52f0d8 Java_com_gameloft_android_GAND_GloftD2SS_GLUtils_Device_nativeInit
// One instruction in the binary: B ADevice::Init (the JNIEnv and jclass arguments pass straight through).
extern "C" JNIEXPORT void JNICALL Java_com_gameloft_android_GAND_GloftD2SS_GLUtils_Device_nativeInit(JNIEnv* env,
                                                                                                   jclass cls) {
    ADevice::Init(env, cls);
}
