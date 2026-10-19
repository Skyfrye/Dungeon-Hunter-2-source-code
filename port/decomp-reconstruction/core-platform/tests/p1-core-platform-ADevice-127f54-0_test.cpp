// Checks for batch p1-core-platform-ADevice-127f54-0 (the JNI half of ADevice).
// A mock JNINativeInterface records each JNI call in order. The checks cover the call sequence of each
// body, the method names and signatures Init passes to GetStaticMethodID, the variadic words, and the
// buffer effects of memset (255 for most getters, 7 for getGameVersion(char*)) and of the byte[] copy.

#include "core-platform/adevice.hpp"
#include "tinyxml-and-c-libs/nvthread_jni.hpp"

#include <cstdarg>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <map>
#include <string>
#include <vector>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

_jclass g_globalClass;          // what NewGlobalRef returns (the cDevice reference)
_jclass g_javaClass;            // the class Init is given
_jbyteArray g_bytes;            // the byte[] that object-valued calls return
_jstring g_string;              // what NewStringUTF returns
_JNIEnv g_env;
JNINativeInterface g_table{};   // slots this test does not use stay null

std::vector<std::string> g_log;                       // one entry per JNI call, in order
std::vector<jbyte> g_byteArray;                       // contents of g_bytes
std::map<std::uintptr_t, std::string> g_methodNames;  // methodID -> Device method name
std::uintptr_t g_nextMethodId = 0x100;
jboolean g_booleanResult = JNI_TRUE;
const void* g_globalSource = nullptr;  // object NewGlobalRef was given
const void* g_lastClass = nullptr;     // class of the last GetStaticMethodID or call
int g_intVararg = 0;                   // int variadic word of the last call
const void* g_stringVararg = nullptr;  // string variadic word of the last call
std::string g_text;                    // text given to NewStringUTF

std::string nameOf(jmethodID mid) {
    auto it = g_methodNames.find(reinterpret_cast<std::uintptr_t>(mid));
    return it == g_methodNames.end() ? std::string("?") : it->second;
}

jobject FakeNewGlobalRef(JNIEnv*, jobject obj) {
    g_log.push_back("NewGlobalRef");
    g_globalSource = obj;
    return &g_globalClass;
}

void FakeDeleteLocalRef(JNIEnv*, jobject ref) {
    if (ref == &g_bytes) {
        g_log.push_back("DeleteLocalRef bytes");
    } else if (ref == &g_string) {
        g_log.push_back("DeleteLocalRef string");
    } else {
        g_log.push_back("DeleteLocalRef other");
    }
}

jmethodID FakeGetStaticMethodID(JNIEnv*, jclass clazz, const char* name, const char* sig) {
    g_log.push_back(std::string("GetStaticMethodID ") + name + " " + sig);
    g_lastClass = clazz;
    std::uintptr_t id = g_nextMethodId++;
    g_methodNames[id] = name;
    return reinterpret_cast<jmethodID>(id);
}

jobject FakeCallStaticObjectMethodV(JNIEnv*, jclass clazz, jmethodID mid, va_list args) {
    std::string name = nameOf(mid);
    g_log.push_back("CallStaticObjectMethod " + name);
    g_lastClass = clazz;
    if (name == "e") {
        g_intVararg = va_arg(args, int);
    } else if (name == "text") {
        g_stringVararg = va_arg(args, jstring);
    }
    return &g_bytes;
}

jboolean FakeCallStaticBooleanMethodV(JNIEnv*, jclass clazz, jmethodID mid, va_list) {
    g_log.push_back("CallStaticBooleanMethod " + nameOf(mid));
    g_lastClass = clazz;
    return g_booleanResult;
}

jstring FakeNewStringUTF(JNIEnv*, const char* bytes) {
    g_log.push_back(std::string("NewStringUTF ") + bytes);
    g_text = bytes;
    return &g_string;
}

jsize FakeGetArrayLength(JNIEnv*, jarray array) {
    g_log.push_back(array == &g_bytes ? "GetArrayLength bytes" : "GetArrayLength other");
    return static_cast<jsize>(g_byteArray.size());
}

void FakeGetByteArrayRegion(JNIEnv*, jbyteArray, jsize start, jsize len, jbyte* buf) {
    g_log.push_back("GetByteArrayRegion " + std::to_string(start) + " " + std::to_string(len));
    std::memcpy(buf, g_byteArray.data() + start, static_cast<std::size_t>(len));
}

void setUpEnv() {
    g_table.NewGlobalRef = FakeNewGlobalRef;
    g_table.DeleteLocalRef = FakeDeleteLocalRef;
    g_table.GetStaticMethodID = FakeGetStaticMethodID;
    g_table.CallStaticObjectMethodV = FakeCallStaticObjectMethodV;
    g_table.CallStaticBooleanMethodV = FakeCallStaticBooleanMethodV;
    g_table.NewStringUTF = FakeNewStringUTF;
    g_table.GetArrayLength = FakeGetArrayLength;
    g_table.GetByteArrayRegion = FakeGetByteArrayRegion;
    g_env.functions = &g_table;
}

void resetLog() {
    g_log.clear();
    g_intVararg = 0;
    g_stringVararg = nullptr;
}

void expectLog(const char* where, const std::vector<std::string>& want) {
    if (g_log != want) {
        std::printf("FAIL %s: JNI call log differs\n", where);
        for (const auto& line : g_log) {
            std::printf("  got  %s\n", line.c_str());
        }
        ++failures;
    }
}

// The methodID the text-taking calls use. Registered as "text" so the mock reads a string variadic.
const std::uintptr_t kTextMethod = 0x7001;

jmethodID idOf(std::uintptr_t value) { return reinterpret_cast<jmethodID>(value); }

}  // namespace

// The env the binary's NVThreadGetCurrentJNIEnv returns for this thread.
JNIEnv* NVThreadGetCurrentJNIEnv() { return &g_env; }

int main() {
    setUpEnv();
    g_methodNames[kTextMethod] = "text";

    // Init: NewGlobalRef of the class, then the eight GetStaticMethodID lookups in listing order.
    resetLog();
    ADevice::Init(&g_env, &g_javaClass);
    expectLog("Init", {
        "NewGlobalRef",
        "GetStaticMethodID a ()[B",
        "GetStaticMethodID b ()[B",
        "GetStaticMethodID c ()[B",
        "GetStaticMethodID d ()[B",
        "GetStaticMethodID IsWifiEnable ()Z",
        "GetStaticMethodID getHostName ()[B",
        "GetStaticMethodID e (I)V",
        "GetStaticMethodID f ()[B",
    });
    CHECK(g_globalSource == &g_javaClass);
    CHECK(ADevice::cDevice == &g_globalClass);
    CHECK(g_lastClass == &g_globalClass);
    // Method IDs come back in lookup order: mIMEI first, mUserAgent last.
    CHECK(ADevice::mIMEI == idOf(0x100));
    CHECK(ADevice::mOperatorName == idOf(0x101));
    CHECK(ADevice::mLineNumber == idOf(0x102));
    CHECK(ADevice::mGameVersion == idOf(0x103));
    CHECK(ADevice::mIsWifiEnable == idOf(0x104));
    CHECK(ADevice::mHostName == idOf(0x105));
    CHECK(ADevice::mSetUniqueCode == idOf(0x106));
    CHECK(ADevice::mUserAgent == idOf(0x107));

    // isWifiEnable: CallStaticBooleanMethod on IsWifiEnable, boolean from the jboolean.
    g_booleanResult = JNI_TRUE;
    resetLog();
    CHECK(ADevice::isWifiEnable() == true);
    expectLog("isWifiEnable true", {"CallStaticBooleanMethod IsWifiEnable"});
    CHECK(g_lastClass == &g_globalClass);
    g_booleanResult = JNI_FALSE;
    CHECK(ADevice::isWifiEnable() == false);

    // setUniqueCode: the int is the only variadic word, passed to the e(int) method.
    resetLog();
    ADevice::setUniqueCode(4321);
    expectLog("setUniqueCode", {"CallStaticObjectMethod e"});
    CHECK(g_intVararg == 4321);

    // CallJNIFuncSendInt returns the jobject of the object-valued call.
    resetLog();
    CHECK(ADevice::CallJNIFuncSendInt(&g_globalClass, idOf(kTextMethod + 1), 9) == &g_bytes);

    // CallJNIFuncSendChar: NewStringUTF, the call with the string, then DeleteLocalRef of the string.
    resetLog();
    char hello[] = "hello";
    ADevice::CallJNIFuncSendChar(&g_globalClass, idOf(kTextMethod), hello);
    expectLog("CallJNIFuncSendChar", {
        "NewStringUTF hello",
        "CallStaticObjectMethod text",
        "DeleteLocalRef string",
    });
    CHECK(g_stringVararg == &g_string);

    // getIMEI: memset of 255 bytes, then the 15-byte array copied from offset 0.
    char imei[256];
    std::memset(imei, 0xAA, sizeof imei);
    g_byteArray.assign({'3', '5', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3'});
    resetLog();
    ADevice::getIMEI(imei);
    expectLog("getIMEI", {
        "CallStaticObjectMethod a",
        "GetArrayLength bytes",
        "GetByteArrayRegion 0 15",
        "DeleteLocalRef bytes",
    });
    CHECK(std::memcmp(imei, "351234567890123", 15) == 0);
    bool zeroed = true;
    for (int i = 15; i < 255; ++i) {
        zeroed = zeroed && imei[i] == 0;
    }
    CHECK(zeroed);
    CHECK(static_cast<unsigned char>(imei[255]) == 0xAA);  // memset stops at 255

    // getGameVersion(char*): memset of 7 bytes, then the 5-byte array.
    char version[16];
    std::memset(version, 0xAA, sizeof version);
    g_byteArray.assign({'1', '.', '0', '.', '2'});
    resetLog();
    ADevice::getGameVersion(version);
    expectLog("getGameVersion", {
        "CallStaticObjectMethod d",
        "GetArrayLength bytes",
        "GetByteArrayRegion 0 5",
        "DeleteLocalRef bytes",
    });
    CHECK(std::memcmp(version, "1.0.2", 5) == 0);
    CHECK(version[5] == 0 && version[6] == 0);
    CHECK(static_cast<unsigned char>(version[7]) == 0xAA);

    // getHostName(char*, int): the size argument bounds the memset; the array is 3 bytes.
    char host[16];
    std::memset(host, 0xAA, sizeof host);
    g_byteArray.assign({'b', 'o', 'x'});
    resetLog();
    ADevice::getHostName(host, 8);
    expectLog("getHostName(char*,int)", {
        "CallStaticObjectMethod getHostName",
        "GetArrayLength bytes",
        "GetByteArrayRegion 0 3",
        "DeleteLocalRef bytes",
    });
    CHECK(std::memcmp(host, "box", 3) == 0);
    CHECK(host[3] == 0 && host[7] == 0);
    CHECK(static_cast<unsigned char>(host[8]) == 0xAA);

    // getHostName(char*) forwards to the two-argument form with 255.
    char host2[300];
    std::memset(host2, 0xAA, sizeof host2);
    g_byteArray.assign({'x'});
    resetLog();
    ADevice::getHostName(host2);
    expectLog("getHostName(char*)", {
        "CallStaticObjectMethod getHostName",
        "GetArrayLength bytes",
        "GetByteArrayRegion 0 1",
        "DeleteLocalRef bytes",
    });
    CHECK(host2[0] == 'x');
    CHECK(host2[254] == 0);
    CHECK(static_cast<unsigned char>(host2[255]) == 0xAA);

    // getGameVersion(char*) forwards to the two-argument form with 7 (checked above).
    // getUserAgent, getLineNumber and getOperatorName each use 255 and their own method ID.
    char agent[256];
    std::memset(agent, 0xAA, sizeof agent);
    g_byteArray.assign({'U', 'A'});
    resetLog();
    ADevice::getUserAgent(agent);
    expectLog("getUserAgent", {
        "CallStaticObjectMethod f",
        "GetArrayLength bytes",
        "GetByteArrayRegion 0 2",
        "DeleteLocalRef bytes",
    });
    CHECK(agent[0] == 'U' && agent[1] == 'A' && agent[2] == 0);
    CHECK(static_cast<unsigned char>(agent[255]) == 0xAA);

    resetLog();
    ADevice::getLineNumber(agent);
    expectLog("getLineNumber", {
        "CallStaticObjectMethod c",
        "GetArrayLength bytes",
        "GetByteArrayRegion 0 2",
        "DeleteLocalRef bytes",
    });
    resetLog();
    ADevice::getOperatorName(agent);
    expectLog("getOperatorName", {
        "CallStaticObjectMethod b",
        "GetArrayLength bytes",
        "GetByteArrayRegion 0 2",
        "DeleteLocalRef bytes",
    });

    // CallJNIFuncChar with a string: memset(4), NewStringUTF, the call, the copy, then both releases.
    char small[8];
    std::memset(small, 0xAA, sizeof small);
    g_byteArray.assign({'X', 'Y'});
    resetLog();
    char abc[] = "abc";
    ADevice::CallJNIFuncChar(&g_globalClass, idOf(kTextMethod), small, 4, abc);
    expectLog("CallJNIFuncChar with text", {
        "NewStringUTF abc",
        "CallStaticObjectMethod text",
        "GetArrayLength bytes",
        "GetByteArrayRegion 0 2",
        "DeleteLocalRef bytes",
        "DeleteLocalRef string",
    });
    CHECK(g_stringVararg == &g_string);
    CHECK(small[0] == 'X' && small[1] == 'Y');
    CHECK(small[2] == 0 && small[3] == 0);
    CHECK(static_cast<unsigned char>(small[4]) == 0xAA);

    // CallJNIFuncBool forwards straight to CallStaticBooleanMethod.
    g_booleanResult = JNI_TRUE;
    resetLog();
    CHECK(ADevice::CallJNIFuncBool(&g_globalClass, idOf(kTextMethod)) == true);
    expectLog("CallJNIFuncBool", {"CallStaticBooleanMethod text"});

    std::printf("%s\n", failures ? "p1-core-platform-ADevice-127f54-0: FAILED" : "p1-core-platform-ADevice-127f54-0: ok");
    return failures != 0;
}
