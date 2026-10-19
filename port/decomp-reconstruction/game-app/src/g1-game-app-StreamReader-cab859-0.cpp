// Batch g1-game-app-StreamReader-cab859-0 (StreamReader, part 1 of 2, 20 bodies).
// The bodies follow the Hex-Rays pseudocode of libDungeonHunter2.so. Where the pseudocode lost a store or an argument,
// the assembly was checked: readStringEx (0x317454), writeString (0x317490, 0x317548), writeStringEx (0x317604),
// readString (0x317734, 0x31763c). The Hex-Rays signatures put a leading `this` on these static members; the parameter
// names here are the real ones (stream, value, len).
//
// The original ASSERT (StreamReader.h) is one macro. Its line differs per function, so each body passes the line it
// had. gAssertLevel 2 stops the program (the original stores to address 0 to crash). gAssertLevel 1 prints the message
// to stderr and execution continues. Any other level does nothing.
//
// Part 2 (readAs<unsigned short>, 0x5075b8) is in g1-game-app-StreamReader-cab859-1.cpp. The value read unsigned int
// (0x313a90), which readString calls, is in the other batch of this class.
#include "dh2/StreamReader.hpp"

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <vector>

#include "dh2/IStreamBase.hpp"

// Global assert level (libDungeonHunter2.so gAssertLevel, defined in core-platform/src/memory.cpp). core-platform's
// memory.hpp declares it too, but that header is not included here, as in the other game-app sources.
extern int gAssertLevel;

namespace {

// The source path that the original passes to its StreamReader.h ASSERT.
constexpr const char* kStreamReaderSource = "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/StreamReader.h";

// writeAs<unsigned int>(IStreamBase*, const unsigned int*) (0x3139e0) passes this spelling of the same path.
constexpr const char* kStreamReaderSourceMixed = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\/StreamReader.h";

// The original ASSERT. gAssertLevel 2 stops the program (the original stores to address 0 to crash). gAssertLevel 1
// prints the message to stderr, and execution continues. Any other level does nothing.
void ReportStreamReaderAssert(const char* expression, const char* source, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, source, line);
    }
}

// The count that readString transfers (0x317734 and 0x31763c). length is the 32-bit field from the file. The count is
// clamped to len - 1, but only when len - 1 fits in 32 bits (the high-word test in the assembly). So len 0 is not
// clamped, as in the original.
std::uint32_t ReadStringCount(std::uint32_t length, std::uint64_t len) {
    if (((len - 1) >> 32) == 0) {
        const std::uint32_t limit = static_cast<std::uint32_t>(len - 1);
        if (length > limit) {
            return limit;
        }
    }
    return length;
}

}  // namespace

// 0x3139e0 void StreamReader::writeAs<unsigned int>(IStreamBase*, unsigned int const*)
// The pointer is the source: write() (vtable +0x1c) gets (value, 4). ASSERT bytesWritten == sizeof(T) at line 128.
template <>
void StreamReader::writeAs<unsigned int>(IStreamBase* stream, const unsigned int* value) {
    const std::uint64_t written = stream->write(value, sizeof(unsigned int));
    if (written != sizeof(unsigned int)) {
        ReportStreamReaderAssert("bytesWritten == sizeof(T)", kStreamReaderSourceMixed, 128);
    }
}

// 0x317454 bool StreamReader::readStringEx(IStreamBase*, char*, unsigned long long)
// read() (vtable +0x18) gets (dst, len). Its 64-bit count is compared with len (asm: the low word, then the high word,
// with the result 1 only when both are equal). So it is true only when all len bytes arrived. No terminator is written.
bool StreamReader::readStringEx(IStreamBase* stream, char* dst, std::uint64_t len) {
    return stream->read(dst, len) == len;
}

// 0x317490 bool StreamReader::writeString(IStreamBase*, char const*, unsigned long long)
// The length prefix is the low word of len (asm: STR R2 into a stack slot), written as 4 bytes. The byte-swap loop in
// the binary is guarded by a constant, so it never runs and is not reproduced. The characters follow as len bytes; the
// count write() returns is not checked. Returns 1.
bool StreamReader::writeString(IStreamBase* stream, const char* src, std::uint64_t len) {
    const std::uint32_t prefix = static_cast<std::uint32_t>(len);
    stream->write(&prefix, sizeof(prefix));
    stream->write(src, len);
    return true;
}

// 0x317548 bool StreamReader::writeString(IStreamBase*, wchar_t const*, unsigned long long)
// The prefix is the low word of len, as in the char form. The characters are 4 * len bytes (asm: LSL #2 on both
// words): each character is one 32-bit unit of the stream (TRACK-B decision 2, the file layout is 32-bit, field by
// field). On the original's 4-byte wchar_t the units are the characters' own bytes, so the stream bytes are the same.
// On a host with a 2-byte wchar_t the character is widened to its 32-bit unit before it is written.
bool StreamReader::writeString(IStreamBase* stream, const wchar_t* src, std::uint64_t len) {
    const std::uint32_t prefix = static_cast<std::uint32_t>(len);
    stream->write(&prefix, sizeof(prefix));
    if constexpr (sizeof(wchar_t) == sizeof(std::uint32_t)) {
        stream->write(src, len * 4);
    } else {
        std::vector<std::uint32_t> units(static_cast<std::size_t>(len));
        for (std::size_t i = 0; i < units.size(); ++i) {
            units[i] = static_cast<std::uint32_t>(src[i]);
        }
        stream->write(units.data(), len * 4);
    }
    return true;
}

// 0x317604 bool StreamReader::writeStringEx(IStreamBase*, char const*, unsigned long long)
// Raw bytes: write(src, len), no prefix. The count is not checked and the result is 1 whatever write() returned.
bool StreamReader::writeStringEx(IStreamBase* stream, const char* src, std::uint64_t len) {
    stream->write(src, len);
    return true;
}

// 0x31763c bool StreamReader::readString(IStreamBase*, wchar_t*, unsigned long long)
// The length is read by readAs<unsigned int> (0x313a90, the other batch of this class). read() gets 4 * count bytes,
// the count is clamped (ReadStringCount), dst[count] is a 4-byte zero, and the result is len > length. On a 4-byte
// wchar_t the bytes go straight into dst, as in the original. On a host with a 2-byte wchar_t the 32-bit units are read
// into a buffer and each one is narrowed into its wchar_t element (TRACK-B decision 2). A short read there leaves the
// unread units zero, where the original leaves the unread bytes of dst as they were.
bool StreamReader::readString(IStreamBase* stream, wchar_t* dst, std::uint64_t len) {
    const std::uint32_t length = readAs<unsigned int>(stream);
    const std::uint32_t count = ReadStringCount(length, len);
    const std::uint64_t bytes = static_cast<std::uint64_t>(count) * 4;
    if constexpr (sizeof(wchar_t) == sizeof(std::uint32_t)) {
        stream->read(dst, bytes);
    } else {
        std::vector<std::uint32_t> units(count, 0u);
        stream->read(units.data(), bytes);
        for (std::uint32_t i = 0; i < count; ++i) {
            dst[i] = static_cast<wchar_t>(units[i]);
        }
    }
    dst[count] = L'\0';
    return len > length;
}

// 0x317734 bool StreamReader::readString(IStreamBase*, char*, unsigned long long)
// The length is a 32-bit field read by readAs<unsigned int> (0x313a90). read() gets (dst, count), its result is
// ignored, and dst[count] is zeroed. Returns len > length.
bool StreamReader::readString(IStreamBase* stream, char* dst, std::uint64_t len) {
    const std::uint32_t length = readAs<unsigned int>(stream);
    const std::uint32_t count = ReadStringCount(length, len);
    stream->read(dst, count);
    dst[count] = '\0';
    return len > length;
}

// 0x3364ec int StreamReader::readAs<int>(IStreamBase*)
// read() gets (&value, 4). ASSERT bytesRead == sizeof(T) at line 68 when the count is not 4. The value is returned
// whatever the count was. The original's local is not zeroed; it is zeroed here, so a short read gives 0, not stack data.
template <>
int StreamReader::readAs<int>(IStreamBase* stream) {
    int value = 0;
    const std::uint64_t got = stream->read(&value, sizeof(int));
    if (got != sizeof(int)) {
        ReportStreamReaderAssert("bytesRead == sizeof(T)", kStreamReaderSource, 68);
    }
    return value;
}

// 0x33665c void StreamReader::writeAs<int>(IStreamBase*, int)
// The value goes to a local and is written from its address: write(&copy, 4). ASSERT bytesWritten at line 116.
template <>
void StreamReader::writeAs<int>(IStreamBase* stream, int value) {
    int copy = value;
    const std::uint64_t written = stream->write(&copy, sizeof(int));
    if (written != sizeof(int)) {
        ReportStreamReaderAssert("bytesWritten == sizeof(T)", kStreamReaderSource, 116);
    }
}

// 0x336718 void StreamReader::writeAs<unsigned char>(IStreamBase*, unsigned char)
// write(&copy, 1). ASSERT bytesWritten at line 116.
template <>
void StreamReader::writeAs<unsigned char>(IStreamBase* stream, unsigned char value) {
    unsigned char copy = value;
    const std::uint64_t written = stream->write(&copy, 1);
    if (written != 1) {
        ReportStreamReaderAssert("bytesWritten == sizeof(T)", kStreamReaderSource, 116);
    }
}

// 0x3df1a0 void StreamReader::readAs<unsigned int>(IStreamBase*, unsigned int*)
// read(value, 4). ASSERT bytesRead at line 80.
template <>
void StreamReader::readAs<unsigned int>(IStreamBase* stream, unsigned int* value) {
    const std::uint64_t got = stream->read(value, sizeof(unsigned int));
    if (got != sizeof(unsigned int)) {
        ReportStreamReaderAssert("bytesRead == sizeof(T)", kStreamReaderSource, 80);
    }
}

// 0x429c1c bool StreamReader::readAs<bool>(IStreamBase*)
// read(&raw, 1). ASSERT bytesRead at line 68. The original returns the raw byte. A saved bool is 0 or 1, and any
// nonzero byte is true here, as a bool return would read it.
template <>
bool StreamReader::readAs<bool>(IStreamBase* stream) {
    unsigned char raw = 0;
    const std::uint64_t got = stream->read(&raw, 1);
    if (got != 1) {
        ReportStreamReaderAssert("bytesRead == sizeof(T)", kStreamReaderSource, 68);
    }
    return raw != 0;
}

// 0x429d84 void StreamReader::writeAs<bool>(IStreamBase*, bool)
// The argument's byte (0 or 1) is written with write(&copy, 1). ASSERT bytesWritten at line 116.
template <>
void StreamReader::writeAs<bool>(IStreamBase* stream, bool value) {
    unsigned char copy = value ? 1 : 0;
    const std::uint64_t written = stream->write(&copy, 1);
    if (written != 1) {
        ReportStreamReaderAssert("bytesWritten == sizeof(T)", kStreamReaderSource, 116);
    }
}

// 0x459090 void StreamReader::readAs<int>(IStreamBase*, int*)
// read(value, 4). ASSERT bytesRead at line 80.
template <>
void StreamReader::readAs<int>(IStreamBase* stream, int* value) {
    const std::uint64_t got = stream->read(value, sizeof(int));
    if (got != sizeof(int)) {
        ReportStreamReaderAssert("bytesRead == sizeof(T)", kStreamReaderSource, 80);
    }
}

// 0x459140 void StreamReader::peekAs<int>(IStreamBase*, int*)
// peek(value, 4), so the stream does not advance. ASSERT bytesRead at line 104.
template <>
void StreamReader::peekAs<int>(IStreamBase* stream, int* value) {
    const std::uint64_t got = stream->peek(value, sizeof(int));
    if (got != sizeof(int)) {
        ReportStreamReaderAssert("bytesRead == sizeof(T)", kStreamReaderSource, 104);
    }
}

// 0x46c9c8 void StreamReader::writeAs<int>(IStreamBase*, int const*)
// The pointer is the source: write(value, 4). ASSERT bytesWritten at line 128.
template <>
void StreamReader::writeAs<int>(IStreamBase* stream, const int* value) {
    const std::uint64_t written = stream->write(value, sizeof(int));
    if (written != sizeof(int)) {
        ReportStreamReaderAssert("bytesWritten == sizeof(T)", kStreamReaderSource, 128);
    }
}

// 0x4db89c void StreamReader::readAs<bool>(IStreamBase*, bool*)
// read(value, 1): the raw byte is stored in the bool, as the original does. ASSERT bytesRead at line 80.
template <>
void StreamReader::readAs<bool>(IStreamBase* stream, bool* value) {
    const std::uint64_t got = stream->read(value, 1);
    if (got != 1) {
        ReportStreamReaderAssert("bytesRead == sizeof(T)", kStreamReaderSource, 80);
    }
}

// 0x4db94c void StreamReader::readAs<float>(IStreamBase*, float*)
// read(value, 4). ASSERT bytesRead at line 80.
template <>
void StreamReader::readAs<float>(IStreamBase* stream, float* value) {
    const std::uint64_t got = stream->read(value, sizeof(float));
    if (got != sizeof(float)) {
        ReportStreamReaderAssert("bytesRead == sizeof(T)", kStreamReaderSource, 80);
    }
}

// 0x4db9fc void StreamReader::readAs<signed char>(IStreamBase*, signed char*)
// read(value, 1). ASSERT bytesRead at line 80.
template <>
void StreamReader::readAs<signed char>(IStreamBase* stream, signed char* value) {
    const std::uint64_t got = stream->read(value, 1);
    if (got != 1) {
        ReportStreamReaderAssert("bytesRead == sizeof(T)", kStreamReaderSource, 80);
    }
}

// 0x4dbaac void StreamReader::readAs<short>(IStreamBase*, short*)
// read(value, 2). ASSERT bytesRead at line 80.
template <>
void StreamReader::readAs<short>(IStreamBase* stream, short* value) {
    const std::uint64_t got = stream->read(value, sizeof(short));
    if (got != sizeof(short)) {
        ReportStreamReaderAssert("bytesRead == sizeof(T)", kStreamReaderSource, 80);
    }
}
