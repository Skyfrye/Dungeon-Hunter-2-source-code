// Batch g1-game-app-IStreamBase-e228fc-1 (IStreamBase, part 2 of 2).
// Bodies follow the Hex-Rays pseudocode of libDungeonHunter2.so. The assembly was checked for the string read
// (0x461da8) and for the 8-byte write (0x4616c0): the length compare, the vtable slots and the ASSERT trap.
//
// The original readAs<T> and writeAs<T> are one template. Its instantiations differ only in sizeof(T), the vtable
// slot (read +0x18, write +0x1c) and the ASSERT line (69 for reads, 77 for writes). Each instantiation here is an
// explicit specialization that carries its own address, as CharAI::SetScript<T> does. The template arguments keep
// the original spelling (unsigned long long, not std::uint64_t): on LP64 hosts std::uint64_t is unsigned long, which
// would name a different specialization.
//
// The primary templates in dh2/IStreamBase.hpp have no body. Each instantiation is defined by its own explicit
// specialization, either here or in the other part of this class. readAs<int> (0x38b758) is in that other part;
// readAs(std::string&) calls it.
#include "dh2/IStreamBase.hpp"

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <string>

// Global assert level (libDungeonHunter2.so gAssertLevel). core-platform/memory.hpp declares it too, but that
// header is not included here, as in the other game-anim sources.
extern int gAssertLevel;

namespace {

// The source path that the original passes to its IStream.h ASSERT.
constexpr const char* kIStreamSource = "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/IStream.h";

// The original ASSERT. gAssertLevel 2 stops the program (the original stores to address 0 to crash). gAssertLevel 1
// prints the message to stderr, and execution continues. Any other level does nothing.
void ReportIStreamAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kIStreamSource, line);
    }
}

}  // namespace

// 0x4616c0 void IStreamBase::writeAs<unsigned long long>(unsigned long long const&)
// write() is vtable +0x1c. The count is 8 bytes; the result is compared as a whole 64-bit value, as the
// original compares the low word with 8 and then the high word with 0.
template <>
void IStreamBase::writeAs<unsigned long long>(const unsigned long long& value) {
    const std::uint64_t written = write(&value, sizeof(unsigned long long));
    if (written != sizeof(unsigned long long)) {
        ReportIStreamAssert("bytesWritten == sizeof(T)", 77);
    }
}

// 0x461770 void IStreamBase::writeAs<unsigned int>(unsigned int const&)
template <>
void IStreamBase::writeAs<unsigned int>(const unsigned int& value) {
    const std::uint64_t written = write(&value, sizeof(unsigned int));
    if (written != sizeof(unsigned int)) {
        ReportIStreamAssert("bytesWritten == sizeof(T)", 77);
    }
}

// 0x461828 void IStreamBase::readAs<unsigned long long>(unsigned long long&)
// read() is vtable +0x18.
template <>
void IStreamBase::readAs<unsigned long long>(unsigned long long& value) {
    const std::uint64_t got = read(&value, sizeof(unsigned long long));
    if (got != sizeof(unsigned long long)) {
        ReportIStreamAssert("bytesRead == sizeof(T)", 69);
    }
}

// 0x461da8 void IStreamBase::readAs(std::basic_string<char, std::char_traits<char>, std::allocator<char> >&)
// The stream holds a 32-bit signed length that counts the terminating NUL, then the characters. A length that
// is not positive fails ASSERT(len > 0) and gives an empty string, with nothing more read.
// The original sizes the string to len - 1 and then reads len bytes into its storage, so the terminator is read as
// well. Here the string is sized to len first, the read fills it, and the last byte is dropped. This keeps every
// write inside the string's own elements. The fill byte of the original resize is not set in the binary (r2 is not
// loaded before the call), so the default NUL fill is used. The read overwrites every byte kept, so the content is
// the same.
void IStreamBase::readAs(std::string& value) {
    int len = 0;
    readAs<int>(len);
    if (len <= 0) {
        ReportIStreamAssert("len > 0", 87);
        value.resize(0);
        return;
    }
    value.resize(static_cast<std::size_t>(len));
    read(value.data(), static_cast<std::uint64_t>(len));
    value.resize(static_cast<std::size_t>(len - 1));
}

// 0x468db8 void IStreamBase::writeAs<unsigned short>(unsigned short const&)
template <>
void IStreamBase::writeAs<unsigned short>(const unsigned short& value) {
    const std::uint64_t written = write(&value, sizeof(unsigned short));
    if (written != sizeof(unsigned short)) {
        ReportIStreamAssert("bytesWritten == sizeof(T)", 77);
    }
}

// 0x468e68 void IStreamBase::writeAs<signed char>(signed char const&)
template <>
void IStreamBase::writeAs<signed char>(const signed char& value) {
    const std::uint64_t written = write(&value, sizeof(signed char));
    if (written != sizeof(signed char)) {
        ReportIStreamAssert("bytesWritten == sizeof(T)", 77);
    }
}

// 0x469070 void IStreamBase::readAs<unsigned short>(unsigned short&)
template <>
void IStreamBase::readAs<unsigned short>(unsigned short& value) {
    const std::uint64_t got = read(&value, sizeof(unsigned short));
    if (got != sizeof(unsigned short)) {
        ReportIStreamAssert("bytesRead == sizeof(T)", 69);
    }
}

// 0x469120 void IStreamBase::readAs<signed char>(signed char&)
template <>
void IStreamBase::readAs<signed char>(signed char& value) {
    const std::uint64_t got = read(&value, sizeof(signed char));
    if (got != sizeof(signed char)) {
        ReportIStreamAssert("bytesRead == sizeof(T)", 69);
    }
}
