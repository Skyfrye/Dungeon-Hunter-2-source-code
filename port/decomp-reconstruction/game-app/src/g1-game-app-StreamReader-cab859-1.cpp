// Batch g1-game-app-StreamReader-cab859-1 (StreamReader, part 2 of 2, one body).
// The body follows the Hex-Rays pseudocode of libDungeonHunter2.so. The assembly was checked for the read (vtable +0x18
// with the count 2 and the high word 0), the 64-bit result test (CMP R0,#2 then CMP R1,#0), the level 2 trap (a store to
// address 0) and the level 1 fprintf (line 0x50 = 80, StreamReader.h).
#include "dh2/StreamReader.hpp"

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "dh2/IStreamBase.hpp"

// Global assert level. core-platform/memory.hpp declares it too; it is not included here, as in the other game-app
// sources.
extern int gAssertLevel;

namespace {

// The source path that the original passes to its StreamReader.h ASSERT.
constexpr const char* kStreamReaderSource = "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/StreamReader.h";

// The original ASSERT. gAssertLevel 2 stops the program (the original stores to address 0 to crash). gAssertLevel 1
// prints the message to stderr, and execution continues. Any other level does nothing.
void ReportStreamReaderAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kStreamReaderSource, line);
    }
}

}  // namespace

// 0x5075b8 void StreamReader::readAs<unsigned short>(IStreamBase*, unsigned short*)
// read() is vtable +0x18 and is called with (dst, 2). Its result is a 64-bit count (r0:r1), and the original accepts
// only exactly 2: the low word must be 2 and the high word must be 0. Any other count fails ASSERT
// bytesRead == sizeof(T) at StreamReader.h:80. The value is not changed on the trap path beyond what read() wrote.
// The Hex-Rays body returns r0 (the count, or the fprintf result on the level 1 path). The declared type is void, as
// in dh2/StreamReader.hpp, and no C++ caller can use a return value here, so it is not reproduced.
template <>
void StreamReader::readAs<unsigned short>(IStreamBase* stream, unsigned short* value) {
    const std::uint64_t got = stream->read(value, sizeof(unsigned short));
    if (got != sizeof(unsigned short)) {
        ReportStreamReaderAssert("bytesRead == sizeof(T)", 80);
    }
}
