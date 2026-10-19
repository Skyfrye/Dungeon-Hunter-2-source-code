#include "core-platform/config_file.hpp"

#include <cstdio>
#include <cstring>

namespace {

// ConfigFile.cpp's file-local tables (0x914a18, 0x914a5c, PARAMS at 0x99f5d8). The key string is 67 characters.
const char kInternalKey[68] =
    "GW45-19S.WK$RP0#O^3LTX_ 23U3SEDGF0 4A @#   . .. $# INVALIDEXCS57/8*";
const int kInternalKeyIndex[8] = {0, 21, 19, 7, 10, 12, 13, 16};
// Three index lists into the internal key; each ends at the entry 42 (0x2a).
const int kParams[3][8] = {{20, 12, 26, 29, 42, 0, 0, 0}, {32, 36, 19, 7, 29, 42, 0, 0}, {16, 10, 42, 0, 0, 0, 0, 0}};

}  // namespace

char ConfigFile::mParams[3 * 255] = {};

// 0x89bee0 ConfigFile::Encode(char const*, char const*, char const*, char*)
// The original returns 0 without writing the output.
int ConfigFile::Encode(const char*, const char*, const char*, char*) { return 0; }

// 0x89bee8 ConfigFile::Seed()
unsigned int ConfigFile::Seed() { return 0; }

// 0x89bef0 ConfigFile::XOR(char const*, char const*, char*)
// Builds the result in a 512-byte scratch (terminated at the value length), then copies it to the output with strcpy, so
// the output may alias the value. Deviation: a value of 512 or more characters is cut to 511 (the original overruns).
void ConfigFile::XOR(const char* value, const char* key, char* output) {
    char retval[512];
    const std::size_t keyLength = std::strlen(key);
    std::size_t valueLength = std::strlen(value);
    if (valueLength > sizeof(retval) - 1) {
        valueLength = sizeof(retval) - 1;
    }
    std::size_t k = 0;
    for (std::size_t i = 0; i != valueLength; ++i) {
        retval[i] = static_cast<char>(key[k] ^ value[i]);
        ++k;
        if (keyLength <= k) {
            k = 0;
        }
    }
    retval[valueLength] = '\0';
    std::strcpy(output, retval);
}

// 0x89bfb4 ConfigFile::Decode(char const*, char*, char*, char*)
// The image holds three strided byte tables. The player id: buffer[0x0c00] bytes taken every buffer[0x0c04] bytes from
// +0x2000. The key: buffer[0x4800] bytes every buffer[0x4804] bytes from +0x5c00. The server address: a 16-bit length at
// +0x19000, stride at +0x19004, data from +0x19800, XOR-ed with the internal key bytes picked by kInternalKeyIndex and then with
// the key; '#' characters of the result become '%'. mParams gets the three response codes spelled out of the internal key.
// Both trace lines of the original (line 215 and 223) are printed. Returns 0.
// Deviation: the server length is clamped to the 512-byte scratch.
int ConfigFile::Decode(const char* buffer, char* key, char* pid, char* server) {
    const auto* image = reinterpret_cast<const unsigned char*>(buffer);
    const int pidCount = image[3072];
    if (pidCount != 0) {
        const int stride = image[3076];
        const unsigned char* src = image + 0x2000;
        for (int i = 0; i != pidCount; ++i) {
            pid[i] = static_cast<char>(*src);
            src += stride;
        }
    }
    char pkey[256];
    std::memset(pkey, 0, 0xFF);
    for (int j = 0; j != 8; ++j) {
        pkey[j] = kInternalKey[kInternalKeyIndex[j]];
    }
    for (int k = 0; k != 3; ++k) {
        int n = 0;
        for (;;) {
            const int index = kParams[k][n];
            if ((index & 0xFF) == 0x2A) {
                mParams[255 * k + n] = 0;
                break;
            }
            mParams[255 * k + n++] = kInternalKey[index];
            if (n == 255) {
                break;
            }
        }
    }
    const int keyCount = image[18432];
    if (keyCount != 0) {
        const int stride = image[18436];
        const unsigned char* src = image + 23552;
        for (int i = 0; i != keyCount; ++i) {
            key[i] = static_cast<char>(*src);
            src += stride;
        }
    }
    int serverLength = image[102400] | (image[102401] << 8);
    const int serverStride = image[102404];
    char output[512];
    std::memset(output, 0, sizeof(output));
    if (serverLength > 511) {
        serverLength = 511;
    }
    if (serverLength <= 0) {
        XOR(output, pkey, output);
        XOR(output, key, server);
        std::printf("%s: %u: %s \n%s\n", "P:/Template/Android/ALC/jni/../LCXPlayer/../jni/ConfigFile.cpp", 215u, "server",
                    server);
    } else {
        const unsigned char* src = image + 104448;
        for (int m = 0; m != serverLength; ++m) {
            output[m] = static_cast<char>(*src);
            src += serverStride;
        }
        XOR(output, pkey, output);
        XOR(output, key, server);
        std::printf("%s: %u: %s \n%s\n", "P:/Template/Android/ALC/jni/../LCXPlayer/../jni/ConfigFile.cpp", 215u, "server",
                    server);
        for (int n = 0; n != serverLength; ++n) {
            if (server[n] == '#') {
                server[n] = '%';
            }
        }
    }
    std::printf("%s: %u: %s \n%s\n", "P:/Template/Android/ALC/jni/../LCXPlayer/../jni/ConfigFile.cpp", 223u, "key", key);
    return 0;
}
