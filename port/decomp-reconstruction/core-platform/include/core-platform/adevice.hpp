// ADevice: the Android device-information class. Its methods call the Java side through
// JNI (bodies in src/p1-core-platform-ADevice-127f54-0.cpp). The Windows build reads device
// facts through Device (device.hpp), and the Windows port does not call these methods.
#pragma once

#include <cstdint>
#include <jni.h>

class ADevice {
public:
    // 0x52eea8: milliseconds since the epoch in the low 32 bits (usec / 1000 plus
    // 1000 * sec, 32-bit arithmetic as in the listing).
    static int currentTime();

    // JNI state, set by Init. cDevice is a global reference to the Java Device class.
    // Each method ID is the Device method it calls (Device.java):
    static jclass cDevice;
    static jmethodID mIMEI;           // a()           byte[]   "()[B"
    static jmethodID mOperatorName;   // b()           byte[]   "()[B"
    static jmethodID mLineNumber;     // c()           byte[]   "()[B"
    static jmethodID mGameVersion;    // d()           byte[]   "()[B"
    static jmethodID mIsWifiEnable;   // IsWifiEnable() boolean "()Z"
    static jmethodID mHostName;       // getHostName() byte[]   "()[B"
    static jmethodID mSetUniqueCode;  // e(int)        void     "(I)V"
    static jmethodID mUserAgent;      // f()           byte[]   "()[B"

    // 0x52eee8: caches cDevice and the method IDs above (the native behind nativeInit).
    static void Init(JNIEnv* env, jclass cls);
    // 0x52eaa8: CallStaticBooleanMethod(cls, method) through the JNI env.
    static bool CallJNIFuncBool(jclass cls, jmethodID method);
    // 0x52eac8: CallJNIFuncBool(cDevice, mIsWifiEnable).
    static bool isWifiEnable();
    // 0x52eb2c: CallStaticObjectMethod(cls, method, value); returns the jobject.
    static jobject CallJNIFuncSendInt(jclass cls, jmethodID method, int value);
    // 0x52eb54: CallJNIFuncSendInt(cDevice, mSetUniqueCode, code).
    static void setUniqueCode(int code);
    // 0x52eb88: passes text as a Java string and discards the object-valued result.
    static void CallJNIFuncSendChar(jclass cls, jmethodID method, char* text);
    // 0x52ebe0: memset(buffer, 0, size), then copies the byte[] result of method(text) into buffer.
    static void CallJNIFuncChar(jclass cls, jmethodID method, char* buffer, int size, char* text);
    // 0x52eca4: memset(buffer, 0, size), then copies the byte[] result of method() into buffer.
    static void CallJNIFuncChar(jclass cls, jmethodID method, char* buffer, int size);
    // 0x52ed38 .. 0x52ee70: the getters, each CallJNIFuncChar on its method ID (size 255, or
    // the size argument, or 7 for getGameVersion(char*)).
    static void getUserAgent(char* buffer);
    static void getHostName(char* buffer, int size);
    static void getHostName(char* buffer);
    static void getGameVersion(char* buffer, int size);
    static void getGameVersion(char* buffer);
    static void getLineNumber(char* buffer);
    static void getOperatorName(char* buffer);
    static void getIMEI(char* buffer);
};
