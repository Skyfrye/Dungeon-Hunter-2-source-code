// Checks for the platform batch p1-core-platform-JNIEnv-09bcf6-0 (the _JNIEnv wrappers at
// 0x52ea74, 0x52eaf8, 0x88ed78, 0x88ee94, 0x88eec8, 0x88ef00, 0x88ef38, 0x89acc8, 0x89aea0).
// A mock JNINativeInterface records each call. Two things are checked for each wrapper:
//   - the table slot it calls. The listing loads the target with `ldr pc, [r12, #off]` from a
//     32-bit table, so off / 4 is the slot index. offsetof / sizeof(void*) gives the same index
//     on this host, whatever the pointer width;
//   - the forwarded arguments: env, the receiver, the class, the methodID, and the first
//     variadic word read back through the va_list the wrapper built.

#include <cstddef>
#include <cstdio>
#include <cstring>

#include <jni.h>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Table index of a JNINativeInterface member (every member is one pointer wide).
#define SLOT(member) (offsetof(JNINativeInterface, member) / sizeof(void*))

namespace {

struct Record {
    int calls = 0;
    const void* env = nullptr;
    const void* second = nullptr;  // obj (instance and nonvirtual forms) or clazz (static and NewObject)
    const void* third = nullptr;   // clazz of the nonvirtual forms
    const void* method = nullptr;  // methodID
    const char* name = nullptr;    // GetMethodID only
    const char* sig = nullptr;     // GetMethodID only
    int vararg = 0;                // first variadic word, read through the va_list
};

Record rec;

void note(JNIEnv* env, const void* second, const void* third, const void* method, int vararg) {
    ++rec.calls;
    rec.env = env;
    rec.second = second;
    rec.third = third;
    rec.method = method;
    rec.vararg = vararg;
}

_jobject objectArg;      // receiver object
_jclass classArg;        // class
_jobject objectResult;   // returned by the jobject-valued mocks
int methodTag = 0;       // jmethodID is an opaque type; this is a stand-in address

jmethodID methodArg() { return reinterpret_cast<jmethodID>(&methodTag); }

// Mocks of the V slots. The (env, clazz, methodID, va_list) forms first.
jboolean StaticBooleanV(JNIEnv* env, jclass clazz, jmethodID mid, va_list args) {
    note(env, clazz, nullptr, mid, va_arg(args, int));
    return 1;
}
jobject StaticObjectV(JNIEnv* env, jclass clazz, jmethodID mid, va_list args) {
    note(env, clazz, nullptr, mid, va_arg(args, int));
    return &objectResult;
}
jint StaticIntV(JNIEnv* env, jclass clazz, jmethodID mid, va_list args) {
    note(env, clazz, nullptr, mid, va_arg(args, int));
    return 0x7712;
}
void StaticVoidV(JNIEnv* env, jclass clazz, jmethodID mid, va_list args) {
    note(env, clazz, nullptr, mid, va_arg(args, int));
}
jobject NewObjectV(JNIEnv* env, jclass clazz, jmethodID mid, va_list args) {
    note(env, clazz, nullptr, mid, va_arg(args, int));
    return &objectResult;
}
// (env, obj, methodID, va_list)
jobject ObjectV(JNIEnv* env, jobject obj, jmethodID mid, va_list args) {
    note(env, obj, nullptr, mid, va_arg(args, int));
    return &objectResult;
}
// (env, obj, clazz, methodID, va_list)
void NonvirtualVoidV(JNIEnv* env, jobject obj, jclass clazz, jmethodID mid, va_list args) {
    note(env, obj, clazz, mid, va_arg(args, int));
}
jint NonvirtualIntV(JNIEnv* env, jobject obj, jclass clazz, jmethodID mid, va_list args) {
    note(env, obj, clazz, mid, va_arg(args, int));
    return 0x3344;
}
// (env, clazz, name, sig)
jmethodID GetMethodIDImpl(JNIEnv* env, jclass clazz, const char* name, const char* sig) {
    note(env, clazz, nullptr, nullptr, 0);
    rec.name = name;
    rec.sig = sig;
    return methodArg();
}

}  // namespace

int main() {
    // The slot indices are the listing's offsets divided by 4.
    CHECK(SLOT(CallStaticBooleanMethodV) == 0x1d8 / 4);   // 118
    CHECK(SLOT(CallStaticObjectMethodV) == 0x1cc / 4);    // 115
    CHECK(SLOT(GetMethodID) == 0x84 / 4);                 // 33
    CHECK(SLOT(NewObjectV) == 0x74 / 4);                  // 29
    CHECK(SLOT(CallNonvirtualVoidMethodV) == 0x170 / 4);  // 92
    CHECK(SLOT(CallNonvirtualIntMethodV) == 0x140 / 4);   // 80
    CHECK(SLOT(CallStaticIntMethodV) == 0x208 / 4);       // 130
    CHECK(SLOT(CallObjectMethodV) == 0x8c / 4);           // 35
    CHECK(SLOT(CallStaticVoidMethodV) == 0x238 / 4);      // 142

    JNINativeInterface table{};
    _JNIEnv env{};
    env.functions = &table;

    // 0x52ea74 CallStaticBooleanMethod(clazz, methodID, 41)
    table.CallStaticBooleanMethodV = &StaticBooleanV;
    rec = Record{};
    CHECK(env.CallStaticBooleanMethod(&classArg, methodArg(), 41) == 1);
    CHECK(rec.calls == 1 && rec.env == &env && rec.second == &classArg && rec.method == methodArg() &&
          rec.vararg == 41);

    // 0x52eaf8 CallStaticObjectMethod(clazz, methodID, 42)
    table.CallStaticObjectMethodV = &StaticObjectV;
    rec = Record{};
    CHECK(env.CallStaticObjectMethod(&classArg, methodArg(), 42) == &objectResult);
    CHECK(rec.calls == 1 && rec.env == &env && rec.second == &classArg && rec.method == methodArg() &&
          rec.vararg == 42);

    // 0x88ed78 GetMethodID(clazz, name, sig): forwarded as is, no va_list
    table.GetMethodID = &GetMethodIDImpl;
    rec = Record{};
    CHECK(env.GetMethodID(&classArg, "run", "()V") == methodArg());
    CHECK(rec.calls == 1 && rec.env == &env && rec.second == &classArg);
    CHECK(rec.name != nullptr && std::strcmp(rec.name, "run") == 0);
    CHECK(rec.sig != nullptr && std::strcmp(rec.sig, "()V") == 0);

    // 0x88ee94 NewObject(clazz, methodID, 43) -> NewObjectV
    table.NewObjectV = &NewObjectV;
    rec = Record{};
    CHECK(env.NewObject(&classArg, methodArg(), 43) == &objectResult);
    CHECK(rec.calls == 1 && rec.env == &env && rec.second == &classArg && rec.method == methodArg() &&
          rec.vararg == 43);

    // 0x88eec8 CallNonvirtualVoidMethod(obj, clazz, methodID, 44)
    table.CallNonvirtualVoidMethodV = &NonvirtualVoidV;
    rec = Record{};
    env.CallNonvirtualVoidMethod(&objectArg, &classArg, methodArg(), 44);
    CHECK(rec.calls == 1 && rec.env == &env && rec.second == &objectArg && rec.third == &classArg &&
          rec.method == methodArg() && rec.vararg == 44);

    // 0x88ef00 CallNonvirtualIntMethod(obj, clazz, methodID, 45)
    table.CallNonvirtualIntMethodV = &NonvirtualIntV;
    rec = Record{};
    CHECK(env.CallNonvirtualIntMethod(&objectArg, &classArg, methodArg(), 45) == 0x3344);
    CHECK(rec.calls == 1 && rec.env == &env && rec.second == &objectArg && rec.third == &classArg &&
          rec.method == methodArg() && rec.vararg == 45);

    // 0x88ef38 CallStaticIntMethod(clazz, methodID, 46)
    table.CallStaticIntMethodV = &StaticIntV;
    rec = Record{};
    CHECK(env.CallStaticIntMethod(&classArg, methodArg(), 46) == 0x7712);
    CHECK(rec.calls == 1 && rec.env == &env && rec.second == &classArg && rec.method == methodArg() &&
          rec.vararg == 46);

    // 0x89acc8 CallObjectMethod(obj, methodID, 47)
    table.CallObjectMethodV = &ObjectV;
    rec = Record{};
    CHECK(env.CallObjectMethod(&objectArg, methodArg(), 47) == &objectResult);
    CHECK(rec.calls == 1 && rec.env == &env && rec.second == &objectArg && rec.method == methodArg() &&
          rec.vararg == 47);

    // 0x89aea0 CallStaticVoidMethod(clazz, methodID, 48)
    table.CallStaticVoidMethodV = &StaticVoidV;
    rec = Record{};
    env.CallStaticVoidMethod(&classArg, methodArg(), 48);
    CHECK(rec.calls == 1 && rec.env == &env && rec.second == &classArg && rec.method == methodArg() &&
          rec.vararg == 48);

    if (failures) {
        std::printf("%d check(s) failed\n", failures);
        return 1;
    }
    std::printf("p1-core-platform-JNIEnv-09bcf6-0: all checks passed\n");
    return 0;
}
