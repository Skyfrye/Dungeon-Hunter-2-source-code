#include "net-session-online/a_license_check.hpp"

#include <cctype>
#include <chrono>
#include <cstdarg>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <vector>

#include "core-platform/lc_api.hpp"
#include "core-platform/config_file.hpp"
#include "net-session-online/lcx_player_http.hpp"
#include "tinyxml-and-c-libs/nvthread_jni.hpp"
#include "tinyxml-and-c-libs/ssencdec.hpp"

#ifdef __ANDROID__
#include <android/log.h>
#endif

jclass ALicenseCheck::cGame = nullptr;
jclass ALicenseCheck::cContext = nullptr;
jmethodID ALicenseCheck::mLicense = nullptr;
jmethodID ALicenseCheck::mFileConfig = nullptr;
jmethodID ALicenseCheck::mKEY = nullptr;
jmethodID ALicenseCheck::mInstance = nullptr;
char ALicenseCheck::EKEY[255] = {};
char ALicenseCheck::EPID[255] = {};
char ALicenseCheck::SERVER[512] = {};
char ALicenseCheck::KEY[255] = {};
char ALicenseCheck::IMEI[255] = {};
int ALicenseCheck::UCODE = 0;
char* ALicenseCheck::RMS_PATH = nullptr;
LCXPlayerHttp* ALicenseCheck::m_http = nullptr;

namespace {

// _ZL9MAP_CHARS (48 characters and the terminator) and _ZL2IK, from the .rodata listing.
constexpr char kMapChars[] = "INV29DS0-2  92.. 0239..- 109223G0293 LOT9S, 239 ";
constexpr int kIK[8] = {1, 0x25, 0x26, 0x27, 6, 1, 2, 0};

// The RMS file (iglu.bin) is one 0x80000-byte block. Offsets of its header bytes and
// of its blocks, as the listing reads and writes them.
constexpr std::size_t kRmsSize = 0x80000;
constexpr std::size_t kKeyBaseSlot = 8204;     // base offset of the key block
constexpr std::size_t kKeyStepSlot = 8272;     // entry stride of the key block
constexpr std::size_t kKeyBlock = 8320;        // key block starts at base + 8320
constexpr std::size_t kKeyFlagSlot = 1024;     // set to 2 by a valid save
constexpr std::size_t kCountSlot = 24588;      // number of entries in the count block
constexpr std::size_t kCountStepSlot = 24656;  // entry stride of the count block
constexpr std::size_t kCountBlock = 24704;     // count block entries (low nibble used)
constexpr std::size_t kImeiBaseSlot = 57356;   // base offset of the IMEI block
constexpr std::size_t kImeiStepSlot = 57424;   // entry stride of the IMEI block
constexpr std::size_t kImeiBlock = 57600;      // IMEI block starts at base + 57600
constexpr std::size_t kChecksumFrom = 205312;  // checksum covers [from, to)
constexpr std::size_t kChecksumTo = 410112;
constexpr std::size_t kChecksumSlot = 410240;  // signed byte sum of the range above

constexpr std::size_t kConfigBufferSize = 0x40000;

// The 48-bit generator of srand48/lrand48, reproduced so that the port does not depend
// on the POSIX functions (mingw has none). Same constants as the original.
std::uint64_t g_rand48State = 0;
constexpr std::uint64_t kRandMask = (1ULL << 48) - 1;

void Srand48(long seed) {
    g_rand48State = ((static_cast<std::uint64_t>(static_cast<std::uint32_t>(seed)) << 16) | 0x330EULL) &
                    kRandMask;
}

long Lrand48() {
    g_rand48State = (0x5DEECE66DULL * g_rand48State + 0xBULL) & kRandMask;
    return static_cast<long>(g_rand48State >> 17);
}

// Scratch for LC_API_PARSE_DATA, which copies the whole field with no bound. A field is never
// longer than its input, so a buffer of strlen(input) + 1 bytes holds it.
std::vector<char> ParseScratch(const char* in) {
    return std::vector<char>(std::strlen(in) + 1, 0);
}

// Byte of the RMS buffer as the listing reads it (a signed char). Out-of-range reads
// return 0 here; the original reads past the block, which valid files never do.
char ByteAt(const std::vector<char>& buffer, std::size_t index) {
    return index < buffer.size() ? buffer[index] : 0;
}

void StoreByte(std::vector<char>& buffer, std::size_t index, char value) {
    if (index < buffer.size()) {
        buffer[index] = value;
    }
}

// The key or IMEI text, upper-cased where the original calls toupper_tab_. Negative chars
// (the original's sign-extended values above 0xFF) are kept.
void UpperInto(const char* text, std::size_t length, char* out) {
    for (std::size_t k = 0; k < length; ++k) {
        char c = text[k];
        if (c >= 0) {
            c = static_cast<char>(std::toupper(static_cast<unsigned char>(c)));
        }
        out[k] = c;
    }
}

}  // namespace

// 0x89a6e4 _ZN13ALicenseCheck14ValidateNativeEv
void ALicenseCheck::ValidateNative() {}

// 0x89a6e8 _ZN13ALicenseCheck6LOGGEREPKcz
// Formats into a buffer (vsprintf into the frame's 1 KB; vsnprintf here), prints it, and logs it with priority 4 (info) under
// the tag "LicenseCheck" (__android_log_print, available on Android only: the host builds skip that call).
void ALicenseCheck::LOGGER(const char* fmt, ...) {
    char text[1024];
    va_list args;
    va_start(args, fmt);
    std::vsnprintf(text, sizeof(text), fmt, args);
    va_end(args);
    std::printf("%s", text);
#ifdef __ANDROID__
    __android_log_print(ANDROID_LOG_INFO, "LicenseCheck", "%s", text);
#endif
}

// 0x89a798 _ZN13ALicenseCheck11currentTimeEv
// The original computes usec / 1000 + 1000 * sec from gettimeofday, which is milliseconds
// since the epoch truncated to 32 bits. std::chrono gives the same value.
int ALicenseCheck::currentTime() {
    const auto since = std::chrono::system_clock::now().time_since_epoch();
    const auto ms = std::chrono::duration_cast<std::chrono::milliseconds>(since).count();
    return static_cast<int>(static_cast<std::uint32_t>(ms));
}

// 0x89a7d8 _ZN13ALicenseCheck16createUniqueCodeEv
int ALicenseCheck::createUniqueCode() {
    const int seed = currentTime();
    Srand48(seed);
    return static_cast<int>(static_cast<double>(Lrand48()) * 4.65661287e-10 * 8889.0 + 1111.0);
}

// 0x89a820 _ZN13ALicenseCheck3XOREPKcS1_Pc
// Each value byte is XORed with the key, which repeats. The result is built in a 512-byte
// buffer and copied to output, so output may be the same buffer as value.
void ALicenseCheck::XOR(const char* value, const char* key, char* output) {
    char retval[512];
    std::memset(retval, 0, sizeof(retval));
    const std::size_t keyLength = std::strlen(key);
    const std::size_t valueLength = std::strlen(value);
    if (valueLength != 0) {
        std::size_t keyIndex = 0;
        for (std::size_t i = 0; i != valueLength; ++i) {
            const char k = key[keyIndex++];
            retval[i] = static_cast<char>(k ^ value[i]);
            if (keyLength <= keyIndex) {
                keyIndex = 0;
            }
        }
    }
    std::strcpy(output, retval);
}

// 0x89a8e0 _ZN13ALicenseCheck15CallJNIFuncCharEP7_jclassP10_jmethodIDPciS4_
// Zeroes out, then calls the static method with one string argument (NewStringUTF of param) and copies its byte[] result
// (GetArrayLength, GetByteArrayRegion) into out; both local references are released.
// Deviation: without a JNI environment (the host builds have no JVM) the output stays zeroed; the byte count is clamped
// to the buffer (the original copies the whole array).
void ALicenseCheck::CallJNIFuncChar(jclass javaClass, jmethodID javaMethod, char* out, int max, char* param) {
    JNIEnv* env = NVThreadGetCurrentJNIEnv();
    std::memset(out, 0, static_cast<std::size_t>(max));
    if (env == nullptr) {
        return;
    }
    jstring argument = env->NewStringUTF(param);
    jobject array = env->CallStaticObjectMethod(javaClass, javaMethod, argument);
    jsize length = env->GetArrayLength(static_cast<jarray>(array));
    if (length > max) {
        length = max;
    }
    env->GetByteArrayRegion(static_cast<jbyteArray>(array), 0, length, reinterpret_cast<jbyte*>(out));
    env->DeleteLocalRef(array);
    env->DeleteLocalRef(argument);
}

// 0x89a9a4 _ZN13ALicenseCheck15CallJNIFuncCharEP7_jclassP10_jmethodIDPci
// As the overload above, without the string argument.
void ALicenseCheck::CallJNIFuncChar(jclass javaClass, jmethodID javaMethod, char* out, int max) {
    JNIEnv* env = NVThreadGetCurrentJNIEnv();
    std::memset(out, 0, static_cast<std::size_t>(max));
    if (env == nullptr) {
        return;
    }
    jobject array = env->CallStaticObjectMethod(javaClass, javaMethod);
    jsize length = env->GetArrayLength(static_cast<jarray>(array));
    if (length > max) {
        length = max;
    }
    env->GetByteArrayRegion(static_cast<jbyteArray>(array), 0, length, reinterpret_cast<jbyte*>(out));
    env->DeleteLocalRef(array);
}

// 0x89aed4 _ZN13ALicenseCheck15CallJNIFuncVoidEP7_jclassP10_jmethodID
// CallStaticVoidMethod on the thread's JNI environment (skipped without one).
void ALicenseCheck::CallJNIFuncVoid(jclass javaClass, jmethodID javaMethod) {
    if (JNIEnv* env = NVThreadGetCurrentJNIEnv()) {
        env->CallStaticVoidMethod(javaClass, javaMethod);
    }
}

// 0x89aa38 _ZN13ALicenseCheck10LoadConfigEv
// Reads the encrypted config through CallJNIFuncChar (the "db" method, 0x40000 bytes; on the heap here, the original's is
// the stack) and decodes it into EKEY, EPID and SERVER with ConfigFile::Decode.
void ALicenseCheck::LoadConfig() {
    std::vector<char> buffer(kConfigBufferSize, 0);
    CallJNIFuncChar(cGame, mFileConfig, buffer.data(), static_cast<int>(kConfigBufferSize));
    ConfigFile config;
    config.Decode(buffer.data(), EKEY, EPID, SERVER);
}

// 0x89ab08 _ZN13ALicenseCheck4InitEP7_JNIEnvP7_jclass
// Keeps a global reference to the game class and looks up its static methods "d" ()V, "db" ()[B, "dc" ()[B and "da"
// ()Landroid/app/Activity;, and the Context class (a global reference); with the Context class found the three config
// buffers are cleared and the config loaded.
// Deviation: a null JNI environment (no JVM, the host tests) does nothing; the original dereferences it.
void ALicenseCheck::Init(JNIEnv* env, jclass game) {
    if (env == nullptr) {
        return;
    }
    cGame = static_cast<jclass>(env->NewGlobalRef(game));
    mLicense = env->GetStaticMethodID(cGame, "d", "()V");
    mFileConfig = env->GetStaticMethodID(cGame, "db", "()[B");
    mKEY = env->GetStaticMethodID(cGame, "dc", "()[B");
    mInstance = env->GetStaticMethodID(cGame, "da", "()Landroid/app/Activity;");
    cContext = env->FindClass("android/content/Context");
    if (cContext != nullptr) {
        cContext = static_cast<jclass>(env->NewGlobalRef(cContext));
        std::memset(EKEY, 0, 0xFF);
        std::memset(EPID, 0, 0xFF);
        std::memset(SERVER, 0, 0x200);
        LoadConfig();
    }
}

// 0x89acfc _ZN13ALicenseCheck7getIMEIEPci
// out is zeroed; Context.TELEPHONY_SERVICE (GetStaticFieldID/GetStaticObjectField) is passed to the activity's
// getSystemService (the activity from the static method "da"), and the telephony manager's getDeviceId() string is
// copied into out. The original leaves the string chars and the objects but the service name unreleased.
// Deviation: skipped without a JNI environment; the copy is clamped to max - 1 so out stays terminated.
void ALicenseCheck::getIMEI(char* out, int max) {
    JNIEnv* env = NVThreadGetCurrentJNIEnv();
    std::memset(out, 0, static_cast<std::size_t>(max));
    if (env == nullptr) {
        return;
    }
    jfieldID serviceField = env->GetStaticFieldID(cContext, "TELEPHONY_SERVICE", "Ljava/lang/String;");
    jobject serviceName = env->GetStaticObjectField(cContext, serviceField);
    jobject activity = env->CallStaticObjectMethod(cGame, mInstance);
    jclass activityClass = env->GetObjectClass(activity);
    jmethodID getSystemService =
        env->GetMethodID(activityClass, "getSystemService", "(Ljava/lang/String;)Ljava/lang/Object;");
    jobject telephony = env->CallObjectMethod(activity, getSystemService, serviceName);
    jclass telephonyClass = env->GetObjectClass(telephony);
    jmethodID getDeviceId = env->GetMethodID(telephonyClass, "getDeviceId", "()Ljava/lang/String;");
    jstring id = static_cast<jstring>(env->CallObjectMethod(telephony, getDeviceId));
    const char* text = env->GetStringUTFChars(id, nullptr);
    if (text != nullptr) {
        std::size_t length = std::strlen(text);
        if (max > 0 && length > static_cast<std::size_t>(max) - 1) {
            length = static_cast<std::size_t>(max) - 1;
        }
        std::memcpy(out, text, length);
    }
    env->DeleteLocalRef(serviceName);
}

// 0x89aef4 _ZN13ALicenseCheck7DestroyEv
// The original calls the HTTP object's slot 5, which is its deleting destructor, so it is
// a delete. RMS_PATH came from new[] (SetRMS_PATH), so it is freed with delete[].
void ALicenseCheck::Destroy() {
    if (m_http != nullptr) {
        delete m_http;
        m_http = nullptr;
    }
    if (RMS_PATH != nullptr) {
        delete[] RMS_PATH;
        RMS_PATH = nullptr;
    }
}

// 0x89af5c _ZN13ALicenseCheck13getPhpAddressEPc
// Partial: the original's field index is one less than the parser's result, so a URL with no
// third separator reads before the string. The port starts at 0 instead.
char* ALicenseCheck::getPhpAddress(char* url) {
    std::vector<char> field = ParseScratch(url);
    int start = LC_API_PARSE_DATA(url, field.data(), 3, '/') - 1;
    if (start < 0) {
        start = 0;
    }
    char temp[256];
    std::memset(temp, 0, sizeof(temp));
    const std::size_t length = std::strlen(url);
    std::size_t count = length - static_cast<std::size_t>(start);
    if (count > sizeof(temp) - 1) {
        count = sizeof(temp) - 1;
    }
    std::memcpy(temp, url + start, count);
    const std::size_t copyLength = std::strlen(temp);
    char* result = new char[copyLength + 1];
    std::memset(result, 0, copyLength + 1);
    std::memcpy(result, temp, copyLength);
    return result;
}

// 0x89b044 _ZN13ALicenseCheck7getHostEPc
// Partial: as getPhpAddress, a missing field starts at 0 instead of reading before the string.
// The host is parsed from temp, which holds at most 255 bytes, so host (256) cannot overflow.
char* ALicenseCheck::getHost(char* url) {
    std::vector<char> field = ParseScratch(url);
    int start = LC_API_PARSE_DATA(url, field.data(), 2, '/');
    if (start < 0) {
        start = 0;
    }
    char temp[256];
    char host[256];
    std::memset(temp, 0, sizeof(temp));
    std::memset(host, 0, sizeof(host));
    const std::size_t length = std::strlen(url);
    std::size_t count = length - static_cast<std::size_t>(start);
    if (count > sizeof(temp) - 1) {
        count = sizeof(temp) - 1;
    }
    std::memcpy(temp, url + start, count);
    LC_API_PARSE_DATA(temp, host, 0, '/');
    const std::size_t hostLength = std::strlen(host);
    char* result = new char[hostLength + 1];
    std::memset(result, 0, hostLength + 1);
    std::memcpy(result, host, hostLength);
    return result;
}

// 0x89b16c _ZN13ALicenseCheck10initXPlayerEv
// The host and the PHP address are copies. The HTTP object gets its own copies, so both are
// freed afterwards.
void ALicenseCheck::initXPlayer() {
    char* host = getHost(SERVER);
    char* phpAddress = getPhpAddress(SERVER);
    m_http = new LCXPlayerHttp(host, "4", phpAddress);
    delete[] host;
    delete[] phpAddress;
}

// 0x89b200 _ZN13ALicenseCheck11SetRMS_PATHEPKc
// Copies the path with new[]. As decompiled, a previous path is not released.
void ALicenseCheck::SetRMS_PATH(const char* path) {
    const std::size_t length = std::strlen(path);
    RMS_PATH = new char[length + 1];
    std::memset(RMS_PATH, 0, length + 1);
    std::memcpy(RMS_PATH, path, length);
}

// 0x89b25c _ZN13ALicenseCheck7LoadRMSEv
// Follows the Hex-Rays body step by step: the file read, the key check (the XOR of the
// upper-cased KEY with the table derived from MAP_CHARS and IK), the count block range check,
// the IMEI check, and the checksum over [kChecksumFrom, kChecksumTo). MAP_CHARS (9521344,
// 49 bytes) and IK (9521396, eight 32-bit values) were checked against the binary.
// Deviation: a file shorter than 0x80000 bytes leaves the rest of the buffer zero; the
// original reads uninitialised stack bytes there.
bool ALicenseCheck::LoadRMS() {
    char path[264];
    std::snprintf(path, sizeof(path), "%s/iglu.bin", RMS_PATH != nullptr ? RMS_PATH : "");
    std::FILE* file = std::fopen(path, "rb");
    if (file == nullptr) {
        return false;
    }
    std::vector<char> buffer(kRmsSize, 0);
    std::fread(buffer.data(), 1, kRmsSize, file);
    std::fclose(file);

    char pkey[256] = {};
    for (int i = 0; i != 8; ++i) {
        pkey[i] = kMapChars[kIK[i]];
    }
    pkey[8] = 0;

    const std::size_t stride = static_cast<unsigned char>(ByteAt(buffer, kKeyStepSlot));
    const std::size_t keyBase = static_cast<unsigned char>(ByteAt(buffer, kKeyBaseSlot));
    const std::size_t keyLength = std::strlen(KEY);
    char xkey[256] = {};
    UpperInto(KEY, keyLength, xkey);
    xkey[keyLength] = 0;
    XOR(xkey, pkey, xkey);
    xkey[keyLength] = 0;
    if (keyLength > 0) {
        if (xkey[0] != ByteAt(buffer, keyBase + kKeyBlock)) {
            return false;
        }
        for (std::size_t k = 1; k < keyLength; ++k) {
            if (ByteAt(buffer, keyBase + kKeyBlock + k * stride) != xkey[k]) {
                return false;
            }
        }
    }

    const int count = ByteAt(buffer, kCountSlot);
    if (count != 0) {
        if (ByteAt(buffer, kCountBlock) > 15) {
            return false;
        }
        const std::size_t countStride = static_cast<unsigned char>(ByteAt(buffer, kCountStepSlot));
        for (int k = 1; k < static_cast<unsigned char>(count); ++k) {
            // The listing tests the low byte as signed: values 16..127 are rejected.
            if (ByteAt(buffer, kCountBlock + static_cast<std::size_t>(k) * countStride) > 15) {
                return false;
            }
        }
    }

    const std::size_t imeiBase = static_cast<unsigned char>(ByteAt(buffer, kImeiBaseSlot));
    const std::size_t imeiStep = static_cast<unsigned char>(ByteAt(buffer, kImeiStepSlot));
    const std::size_t imeiLength = std::strlen(IMEI);
    char xime[256] = {};
    if (imeiLength > 0) {
        UpperInto(IMEI, imeiLength, xime);
        xime[imeiLength] = 0;
        XOR(xime, pkey, xime);
        xime[imeiLength] = 0;
        if (xime[0] != ByteAt(buffer, imeiBase + kImeiBlock)) {
            return false;
        }
        for (std::size_t k = 1; k < imeiLength; ++k) {
            if (ByteAt(buffer, imeiBase + kImeiBlock + k * imeiStep) != xime[k]) {
                return false;
            }
        }
    } else {
        xime[0] = 0;
        XOR(xime, pkey, xime);
    }

    // The listing sums into a char, so the total wraps like the stored byte does.
    char sum = 0;
    for (std::size_t i = kChecksumFrom; i != kChecksumTo; ++i) {
        sum = static_cast<char>(sum + ByteAt(buffer, i));
    }
    return sum == ByteAt(buffer, kChecksumSlot);
}

// 0x89b65c _ZN13ALicenseCheck7SaveRMSEb
// The file is always written: a random block, and when valid, the key, count and IMEI blocks
// plus the checksum. The Hex-Rays body reuses its temporaries across branches; the port names
// each value the listing sets (the block base is kept above 3, otherwise it becomes 4, and
// the stride the same). Invalid saves zero the key stride. Deviation: a null RMS_PATH is
// formatted as an empty directory, so the path is "/iglu.bin" (the original prints "(null)").
void ALicenseCheck::SaveRMS(bool valid) {
    char path[264];
    std::snprintf(path, sizeof(path), "%s/iglu.bin", RMS_PATH != nullptr ? RMS_PATH : "");
    std::FILE* file = std::fopen(path, "wb");
    if (file == nullptr) {
        return;
    }
    std::vector<char> buffer(kRmsSize, 0);
    Srand48(currentTime());
    for (std::size_t i = 0; i != kRmsSize; ++i) {
        buffer[i] = static_cast<char>(Lrand48() % 255 + 1);
    }

    if (valid) {
        char pkey[256] = {};
        for (int j = 0; j != 8; ++j) {
            pkey[j] = kMapChars[kIK[j]];
        }
        pkey[8] = 0;

        // Key block: base and stride are kept when above 3, otherwise they become 4.
        const std::size_t oldKeyBase = static_cast<unsigned char>(ByteAt(buffer, kKeyBaseSlot));
        const std::size_t keyWrite = oldKeyBase > 3 ? oldKeyBase + kKeyBlock : 4 + kKeyBlock;
        const std::size_t keyBaseNew = oldKeyBase > 3 ? oldKeyBase : 4;
        std::size_t keyStep = static_cast<unsigned char>(ByteAt(buffer, kKeyStepSlot));
        if (keyStep <= 3) {
            keyStep = 4;
        }
        StoreByte(buffer, kKeyFlagSlot, 2);
        StoreByte(buffer, kKeyBaseSlot, static_cast<char>(keyBaseNew));
        StoreByte(buffer, kKeyStepSlot, static_cast<char>(keyStep));

        const std::size_t keyLength = std::strlen(KEY);
        char xkey[256] = {};
        UpperInto(KEY, keyLength, xkey);
        xkey[keyLength] = 0;
        XOR(xkey, pkey, xkey);
        xkey[keyLength] = 0;
        for (std::size_t m = 0; m != keyLength; ++m) {
            StoreByte(buffer, keyWrite + m * keyStep, xkey[m]);
        }

        // Count block: +10 entries, at least 24, with the low nibble of each entry kept.
        const int oldCount = static_cast<unsigned char>(ByteAt(buffer, kCountSlot));
        const int countPlus = oldCount + 10;
        const int newCount = countPlus <= 20 ? 24 : static_cast<unsigned char>(countPlus);
        std::size_t countStep = static_cast<unsigned char>(ByteAt(buffer, kCountStepSlot));
        if (countStep <= 3) {
            countStep = 4;
        }
        StoreByte(buffer, kCountSlot, static_cast<char>(newCount));
        StoreByte(buffer, kCountStepSlot, static_cast<char>(countStep));
        for (int n = 0; n != newCount; ++n) {
            const std::size_t at = kCountBlock + static_cast<std::size_t>(n) * countStep;
            StoreByte(buffer, at, static_cast<char>(ByteAt(buffer, at) & 0x0F));
        }

        // IMEI block.
        const std::size_t oldImeiBase = static_cast<unsigned char>(ByteAt(buffer, kImeiBaseSlot));
        const std::size_t imeiWrite = oldImeiBase > 3 ? oldImeiBase + kImeiBlock : kImeiBlock + 4;
        const std::size_t imeiBaseNew = oldImeiBase > 3 ? oldImeiBase : 4;
        std::size_t imeiStep = static_cast<unsigned char>(ByteAt(buffer, kImeiStepSlot));
        if (imeiStep <= 3) {
            imeiStep = 4;
        }
        StoreByte(buffer, kImeiBaseSlot, static_cast<char>(imeiBaseNew));
        StoreByte(buffer, kImeiStepSlot, static_cast<char>(imeiStep));

        const std::size_t imeiLength = std::strlen(IMEI);
        char xime[256] = {};
        if (imeiLength > 0) {
            UpperInto(IMEI, imeiLength, xime);
        }
        xime[imeiLength] = 0;
        XOR(xime, pkey, xime);
        if (imeiLength == std::strlen(xime)) {
            for (std::size_t k = 0; k < imeiLength; ++k) {
                StoreByte(buffer, imeiWrite + k * imeiStep, xime[k]);
            }
            char sum = 0;
            for (std::size_t i = kChecksumFrom; i != kChecksumTo; ++i) {
                sum = static_cast<char>(sum + ByteAt(buffer, i));
            }
            StoreByte(buffer, kChecksumSlot, sum);
        }
    } else {
        StoreByte(buffer, kKeyStepSlot, 0);
    }
    std::fwrite(buffer.data(), 1, kRmsSize, file);
    std::fclose(file);
}

// 0x89bacc _ZN13ALicenseCheck16validateResponseEPc
// The response is "<code>|<value>". A code of length 2..7 that equals ConfigFile's stored
// value at 255 ends the run with exit(0). The value at 510 is checked against UCODE. Any other
// response saves an invalid RMS file. Partial: ConfigFile::mParams is a stand-in table.
void ALicenseCheck::validateResponse(char* response) {
    char resp[8] = {};
    // The parsed field is not used afterwards; only its start offset (v2) is.
    std::vector<char> temp = ParseScratch(response);
    const int v2 = LC_API_PARSE_DATA(response, temp.data(), 1, '|');
    const int v3 = v2;
    if (static_cast<unsigned>(v2 - 2) <= 5) {
        std::memcpy(resp, response, static_cast<std::size_t>(v2 - 1));
        if (std::strcmp(resp, &ConfigFile::mParams[255]) == 0) {
            SaveRMS(false);
            std::exit(0);
        }
        if (std::strcmp(resp, &ConfigFile::mParams[510]) == 0) {
            if ((std::atoi(&response[v3]) ^ 0xD0A4) != UCODE) {
                SaveRMS(false);
                std::exit(0);
            }
            SaveRMS(true);
            return;
        }
    }
    SaveRMS(false);
}

// 0x89bc38 _ZN13ALicenseCheck16sendRequestByGetEv
// Sends the key, EPID, IMEI and UCODE as one blob, waits for the reply, and validates it.
// The blob codec is the real SSEncDec_String2BlobLC / SSEncDec_Blob2StringLC. Partial: the
// request goes through LCXPlayerHttp::sendByGetWithNoVer, whose Host value is still a stand-in
// (lcx_player_http.cpp). Deviation: a null reply is validated as an empty string; the original
// passes null to the codec.
void ALicenseCheck::sendRequestByGet() {
    if (m_http == nullptr) {
        initXPlayer();
    }
    // The original's 260-byte buffer overflows with three 254-byte fields. The port uses a
    // larger buffer so the text is kept whole (deviation).
    char qry[1024];
    std::snprintf(qry, sizeof(qry), "%s|%s|%s|%d", KEY, EPID, IMEI, UCODE);
    char* blob = SSEncDec_String2BlobLC(qry);
    char buffer[4096];
    std::memset(buffer, 0, sizeof(buffer));
    std::snprintf(buffer, sizeof(buffer), "b=%s", blob != nullptr ? blob : "");
    delete[] blob;

    m_http->sendByGetWithNoVer(SERVER, buffer);
    do {
        m_http->UpdateRequest();
    } while (m_http->IsInProgress());

    if (!m_http->IsErrorOccurred()) {
        char empty[1] = {};
        char* plain = SSEncDec_Blob2StringLC(m_http->GetResponse());
        validateResponse(plain != nullptr ? plain : empty);
        delete[] plain;
    }
}

// 0x89bdc0 _ZN13ALicenseCheck14ValidateServerEb
// The formatted server string is built as the original does, although its result is not
// used afterwards.
void ALicenseCheck::ValidateServer(bool sendTracking) {
    getIMEI(IMEI, 255);
    UCODE = createUniqueCode();
    CallJNIFuncChar(cGame, mKEY, KEY, 255);
    char server[512];
    std::snprintf(server, sizeof(server), SERVER, KEY, EPID, IMEI);
    sendRequestByGet();
    if (!LoadRMS()) {
        std::exit(0);
    }
    if (sendTracking) {
        CallJNIFuncVoid(cGame, mLicense);
    }
}
