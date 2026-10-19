// ConfigFile: encrypted configuration reader (P:/Template/Android/ALC/jni/ConfigFile.cpp). Members and signatures follow the
// reference binary's DWARF: Decode(const char*, char*, char*, char*) -> int, Encode(const char*, const char*, const char*,
// char*) -> int, XOR(const char*, const char*, char*) -> void, Seed() -> unsigned int, plus the static table mParams.
#pragma once

class ConfigFile {
public:
    ConfigFile() = default;   // 0x89bed0 / 0x89bed4
    ~ConfigFile() = default;  // 0x89bed8 / 0x89bedc (compiler-generated)

    // 0x89bfb4 _ZN10ConfigFile6DecodeEPKcPcS2_S2_: unpacks the player id, the key and the server address from the
    // obfuscated config image (the strided byte tables at +0x2000, +0x5c00 and +0x19800 of the buffer) and fills mParams.
    int Decode(const char* buffer, char* key, char* pid, char* server);
    int Encode(const char* key, const char* name, const char* value, char* out);  // 0x89bee0
    // 0x89bef0 _ZN10ConfigFile3XOREPKcS1_Pc: output = value XOR the repeating key (output may alias value).
    void XOR(const char* value, const char* key, char* output);
    unsigned int Seed();                                                           // 0x89bee8

    // ConfigFile::mParams (0xa34af4): three 255-byte response codes spelled out of the internal key by Decode.
    static char mParams[3 * 255];
};
