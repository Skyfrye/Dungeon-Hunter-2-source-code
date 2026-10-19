// StreamReader: static helpers that read and write typed values and strings on an IStreamBase.
// Values use the file's little-endian layout. It has no instance data and no vtable.
// Reconstructed from libDungeonHunter2.so pseudocode (readAs/writeAs/readString/writeString, 0x3139e0 .. 0x5075b8).
// Template specializations live in game-app/src/g1-game-app-StreamReader-cab859-{0,1}.cpp, one per original symbol.
#pragma once

#include <cstdint>

class IStreamBase;

class StreamReader {
public:
    // Value read: readAs<T>(IStreamBase*) -> T. Specializations:
    //   int 0x3364ec, unsigned int 0x313a90, unsigned char 0x3365a4, bool 0x429c1c.
    template <class T>
    static T readAs(IStreamBase* stream);

    // Out-parameter read: readAs<T>(IStreamBase*, T*). Specializations:
    //   int 0x459090, unsigned int 0x3df1a0, bool 0x4db89c, float 0x4db94c,
    //   signed char 0x4db9fc, short 0x4dbaac, unsigned short 0x5075b8.
    template <class T>
    static void readAs(IStreamBase* stream, T* value);

    // Read without advancing the stream: peekAs<T>(IStreamBase*, T*). Specialization: int 0x459140.
    template <class T>
    static void peekAs(IStreamBase* stream, T* value);

    // Value write: writeAs<T>(IStreamBase*, T). Specializations: int 0x33665c, unsigned char 0x336718, bool 0x429d84.
    template <class T>
    static void writeAs(IStreamBase* stream, T value);

    // Pointer write: writeAs<T>(IStreamBase*, const T*). Specializations: int 0x46c9c8, unsigned int 0x3139e0.
    template <class T>
    static void writeAs(IStreamBase* stream, const T* value);

    // Length-prefixed strings. The length is a 32-bit field read by readAs<unsigned int>. The buffer
    // holds at most len - 1 characters and is terminated.
    static bool readString(IStreamBase* stream, char* dst, std::uint64_t len);       // 0x317734
    static bool readString(IStreamBase* stream, wchar_t* dst, std::uint64_t len);    // 0x31763c

    // Length-prefixed strings written with their length.
    static bool writeString(IStreamBase* stream, const char* src, std::uint64_t len);     // 0x317490
    static bool writeString(IStreamBase* stream, const wchar_t* src, std::uint64_t len);  // 0x317548

    // Raw bytes, no length prefix and no terminator.
    static bool readStringEx(IStreamBase* stream, char* dst, std::uint64_t len);     // 0x317454
    static bool writeStringEx(IStreamBase* stream, const char* src, std::uint64_t len);  // 0x317604 (returns 1)
};

// Explicit specializations, declared at namespace scope so every translation unit that uses one sees it. Definitions:
// game-app/src/g1-game-app-StreamReader-cab859-0.cpp (part 1) and -1.cpp (part 2). The value reads unsigned int
// (0x313a90) and unsigned char (0x3365a4) are defined in game-app/src/g1-game-app-pack13-4d9327-0.cpp.
template <> unsigned int StreamReader::readAs<unsigned int>(IStreamBase* stream);
template <> unsigned char StreamReader::readAs<unsigned char>(IStreamBase* stream);
template <> int StreamReader::readAs<int>(IStreamBase* stream);
template <> bool StreamReader::readAs<bool>(IStreamBase* stream);
template <> void StreamReader::readAs<int>(IStreamBase* stream, int* value);
template <> void StreamReader::readAs<unsigned int>(IStreamBase* stream, unsigned int* value);
template <> void StreamReader::readAs<bool>(IStreamBase* stream, bool* value);
template <> void StreamReader::readAs<float>(IStreamBase* stream, float* value);
template <> void StreamReader::readAs<signed char>(IStreamBase* stream, signed char* value);
template <> void StreamReader::readAs<short>(IStreamBase* stream, short* value);
template <> void StreamReader::peekAs<int>(IStreamBase* stream, int* value);
template <> void StreamReader::writeAs<int>(IStreamBase* stream, int value);
template <> void StreamReader::writeAs<unsigned char>(IStreamBase* stream, unsigned char value);
template <> void StreamReader::writeAs<bool>(IStreamBase* stream, bool value);
template <> void StreamReader::writeAs<int>(IStreamBase* stream, const int* value);
template <> void StreamReader::writeAs<unsigned int>(IStreamBase* stream, const unsigned int* value);
