// Platform batch p1-core-platform-JNIEnv-09bcf6-0: nine _JNIEnv wrappers of the Android JNI
// function table (0x52ea74, 0x52eaf8, 0x88ed78, 0x88ee94, 0x88eec8, 0x88ef00, 0x88ef38,
// 0x89acc8, 0x89aea0).
//
// Every function here is an inline member of struct _JNIEnv in the NDK r29 jni.h
// (port/decomp-reconstruction/shared/include/jni.h, copied unchanged from AOSP). The binary
// carries each one as a WEAK copy of that inline body, so the body is not repeated in this
// file: a second definition would conflict with the header. The signatures below pin the
// header members to the argument lists in the listing. The runtime checks (the table slot each
// wrapper calls and the variadic forwarding) are in
// tests/p1-core-platform-JNIEnv-09bcf6-0_test.cpp.
//
// Variadic wrappers take the variadic words as a va_list and call the V form of one table slot
// (the listing's `ldr pc, [r12, #off]`, with off / 4 as the slot index):
//   CallStaticBooleanMethod   -> CallStaticBooleanMethodV   (#0x1d8)
//   CallStaticObjectMethod    -> CallStaticObjectMethodV    (#0x1cc)
//   CallStaticIntMethod       -> CallStaticIntMethodV       (#0x208)
//   CallStaticVoidMethod      -> CallStaticVoidMethodV      (#0x238)
//   CallObjectMethod          -> CallObjectMethodV          (#0x8c)
//   NewObject                 -> NewObjectV                 (#0x74)
//   CallNonvirtualVoidMethod  -> CallNonvirtualVoidMethodV  (#0x170)
//   CallNonvirtualIntMethod   -> CallNonvirtualIntMethodV   (#0x140)
// GetMethodID has no variadic words: it forwards (clazz, name, sig) to GetMethodID (#0x84).

#include <jni.h>

#include <type_traits>

// 0x52ea74 _ZN7_JNIEnv23CallStaticBooleanMethodEP7_jclassP10_jmethodIDz
static_assert(std::is_same<decltype(&_JNIEnv::CallStaticBooleanMethod),
                           jboolean (_JNIEnv::*)(jclass, jmethodID, ...)>::value,
              "CallStaticBooleanMethod(clazz, methodID, ...)");

// 0x52eaf8 _ZN7_JNIEnv22CallStaticObjectMethodEP7_jclassP10_jmethodIDz
static_assert(std::is_same<decltype(&_JNIEnv::CallStaticObjectMethod),
                           jobject (_JNIEnv::*)(jclass, jmethodID, ...)>::value,
              "CallStaticObjectMethod(clazz, methodID, ...)");

// 0x88ed78 _ZN7_JNIEnv11GetMethodIDEP7_jclassPKcS3_
static_assert(std::is_same<decltype(&_JNIEnv::GetMethodID),
                           jmethodID (_JNIEnv::*)(jclass, const char*, const char*)>::value,
              "GetMethodID(clazz, name, sig)");

// 0x88ee94 _ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz
static_assert(std::is_same<decltype(&_JNIEnv::NewObject),
                           jobject (_JNIEnv::*)(jclass, jmethodID, ...)>::value,
              "NewObject(clazz, methodID, ...)");

// 0x88eec8 _ZN7_JNIEnv24CallNonvirtualVoidMethodEP8_jobjectP7_jclassP10_jmethodIDz
static_assert(std::is_same<decltype(&_JNIEnv::CallNonvirtualVoidMethod),
                           void (_JNIEnv::*)(jobject, jclass, jmethodID, ...)>::value,
              "CallNonvirtualVoidMethod(obj, clazz, methodID, ...)");

// 0x88ef00 _ZN7_JNIEnv23CallNonvirtualIntMethodEP8_jobjectP7_jclassP10_jmethodIDz
static_assert(std::is_same<decltype(&_JNIEnv::CallNonvirtualIntMethod),
                           jint (_JNIEnv::*)(jobject, jclass, jmethodID, ...)>::value,
              "CallNonvirtualIntMethod(obj, clazz, methodID, ...)");

// 0x88ef38 _ZN7_JNIEnv19CallStaticIntMethodEP7_jclassP10_jmethodIDz
static_assert(std::is_same<decltype(&_JNIEnv::CallStaticIntMethod),
                           jint (_JNIEnv::*)(jclass, jmethodID, ...)>::value,
              "CallStaticIntMethod(clazz, methodID, ...)");

// 0x89acc8 _ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz
static_assert(std::is_same<decltype(&_JNIEnv::CallObjectMethod),
                           jobject (_JNIEnv::*)(jobject, jmethodID, ...)>::value,
              "CallObjectMethod(obj, methodID, ...)");

// 0x89aea0 _ZN7_JNIEnv20CallStaticVoidMethodEP7_jclassP10_jmethodIDz
static_assert(std::is_same<decltype(&_JNIEnv::CallStaticVoidMethod),
                           void (_JNIEnv::*)(jclass, jmethodID, ...)>::value,
              "CallStaticVoidMethod(clazz, methodID, ...)");
