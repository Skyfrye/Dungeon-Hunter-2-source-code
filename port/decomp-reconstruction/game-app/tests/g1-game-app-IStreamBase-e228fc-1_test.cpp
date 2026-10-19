// Test for batch g1-game-app-IStreamBase-e228fc-1 (IStreamBase, part 2 of 2).
// Runs the typed helpers and readAs(std::string&) against an in-memory stream. Returns non-zero on failure.
//
// Link shims: IStreamBase's destructor, seekWrite, tellWrite and readAs<int> are in the other part of this class and
// are not among the sources this test links. The shims below follow dh2/IStreamBase.hpp (seekWrite forwards to
// seek, tellWrite returns tell). readAs<int> does only the raw 4-byte read, so the string path can run here.
#include "dh2/IStreamBase.hpp"

#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

// The source file reads this global; the test provides it (gAssertLevel 0 keeps ASSERT silent).
int gAssertLevel = 0;

// Explicit specializations defined in game-app/src/g1-game-app-IStreamBase-e228fc-1.cpp.
template <> void IStreamBase::writeAs<unsigned long long>(const unsigned long long& value);
template <> void IStreamBase::writeAs<unsigned int>(const unsigned int& value);
template <> void IStreamBase::writeAs<unsigned short>(const unsigned short& value);
template <> void IStreamBase::writeAs<signed char>(const signed char& value);
template <> void IStreamBase::readAs<unsigned long long>(unsigned long long& value);
template <> void IStreamBase::readAs<unsigned short>(unsigned short& value);
template <> void IStreamBase::readAs<signed char>(signed char& value);

// Link shims for the other part of the class (see the comment at the top).
IStreamBase::~IStreamBase() {}
void IStreamBase::seekWrite(std::uint64_t pos) { seek(pos); }
std::uint64_t IStreamBase::tellWrite() const { return tell(); }
template <> void IStreamBase::readAs<int>(int& value) { read(&value, sizeof(int)); }

namespace {

// A byte-array stream. maxTransfer caps every read and write, to exercise the short-count path.
class MemoryStream final : public IStreamBase {
public:
    std::vector<unsigned char> bytes;
    std::uint64_t cursor = 0;
    std::uint64_t maxTransfer = ~static_cast<std::uint64_t>(0);

    std::uint32_t size() const override { return static_cast<std::uint32_t>(bytes.size()); }
    bool canRead() const override { return cursor < bytes.size(); }
    bool canWrite() const override { return true; }

    std::uint64_t peek(void* dst, std::uint64_t n) const override {
        const std::uint64_t total = static_cast<std::uint64_t>(bytes.size());
        const std::uint64_t avail = cursor < total ? total - cursor : 0;
        const std::uint64_t count = std::min(std::min(n, avail), maxTransfer);
        if (count != 0) {
            std::memcpy(dst, bytes.data() + cursor, static_cast<std::size_t>(count));
        }
        return count;
    }

    std::uint64_t read(void* dst, std::uint64_t n) override {
        const std::uint64_t total = static_cast<std::uint64_t>(bytes.size());
        const std::uint64_t avail = cursor < total ? total - cursor : 0;
        const std::uint64_t count = std::min(std::min(n, avail), maxTransfer);
        if (count != 0) {
            std::memcpy(dst, bytes.data() + cursor, static_cast<std::size_t>(count));
        }
        cursor += count;
        return count;
    }

    std::uint64_t write(const void* src, std::uint64_t n) override {
        const std::uint64_t count = std::min(n, maxTransfer);
        const std::uint64_t needed = cursor + count;
        if (bytes.size() < needed) {
            bytes.resize(static_cast<std::size_t>(needed));
        }
        if (count != 0) {
            std::memcpy(bytes.data() + cursor, src, static_cast<std::size_t>(count));
        }
        cursor += count;
        return count;
    }

    void seek(std::uint64_t pos) override { cursor = pos; }
    std::uint64_t tell() const override { return cursor; }
    void skip(std::uint64_t n) override { cursor += n; }
};

int g_failures = 0;

#define EXPECT(cond)                                                                 \
    do {                                                                             \
        if (!(cond)) {                                                               \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);     \
            ++g_failures;                                                            \
        }                                                                            \
    } while (0)

// Replaces the stream contents with the given bytes and rewinds it.
void Load(MemoryStream& s, const std::vector<unsigned char>& data) {
    s.bytes = data;
    s.cursor = 0;
    s.maxTransfer = ~static_cast<std::uint64_t>(0);
}

void TestWriteReadUnsignedLongLong() {
    MemoryStream s;
    s.writeAs<unsigned long long>(0x0102030405060708ULL);
    EXPECT(s.bytes.size() == 8);
    EXPECT(s.cursor == 8);
    EXPECT(s.bytes[0] == 0x08 && s.bytes[7] == 0x01);  // little-endian
    s.seek(0);
    unsigned long long out = 0;
    s.readAs<unsigned long long>(out);
    EXPECT(out == 0x0102030405060708ULL);
    EXPECT(s.cursor == 8);
}

void TestWriteUnsignedInt() {
    MemoryStream s;
    s.writeAs<unsigned int>(0xDEADBEEFu);
    EXPECT(s.bytes.size() == 4);
    EXPECT(s.bytes[0] == 0xEF && s.bytes[3] == 0xDE);
}

void TestUnsignedShortRoundTrip() {
    MemoryStream s;
    s.writeAs<unsigned short>(static_cast<unsigned short>(0xBEEF));
    EXPECT(s.bytes.size() == 2);
    EXPECT(s.bytes[0] == 0xEF && s.bytes[1] == 0xBE);
    s.seek(0);
    unsigned short out = 0;
    s.readAs<unsigned short>(out);
    EXPECT(out == 0xBEEF);
    EXPECT(s.cursor == 2);
}

void TestSignedCharRoundTrip() {
    MemoryStream s;
    s.writeAs<signed char>(static_cast<signed char>(-5));
    EXPECT(s.bytes.size() == 1);
    EXPECT(s.bytes[0] == 0xFB);
    s.seek(0);
    signed char out = 0;
    s.readAs<signed char>(out);
    EXPECT(out == -5);
}

void TestShortWriteAndRead() {
    // A short write moves only part of the count; the helper asserts and returns, and the stream is left partly written.
    MemoryStream s;
    s.maxTransfer = 4;
    s.writeAs<unsigned long long>(0x1122334455667788ULL);
    EXPECT(s.cursor == 4);
    EXPECT(s.bytes.size() == 4);

    // A short read leaves the rest of the destination alone.
    MemoryStream r;
    Load(r, {0x01, 0x02, 0x03});
    unsigned long long out = 0xAAAAAAAAAAAAAAAAULL;
    r.readAs<unsigned long long>(out);
    EXPECT(r.cursor == 3);
}

void TestReadStringBasic() {
    MemoryStream s;
    // length 4 (counts the NUL), then "abc" and the terminator.
    Load(s, {4, 0, 0, 0, 'a', 'b', 'c', 0});
    std::string value;
    s.readAs(value);
    EXPECT(value == "abc");
    EXPECT(value.size() == 3);
    EXPECT(s.cursor == 8);
}

void TestReadStringReplacesContent() {
    MemoryStream s;
    Load(s, {6, 0, 0, 0, 'h', 'e', 'l', 'l', 'o', 0});
    std::string value = "previous text that is longer";
    s.readAs(value);
    EXPECT(value == "hello");
    EXPECT(s.cursor == 10);
}

void TestReadStringLengthOne() {
    // length 1 is only the terminator: an empty string.
    MemoryStream s;
    Load(s, {1, 0, 0, 0, 0});
    std::string value = "stale";
    s.readAs(value);
    EXPECT(value.empty());
    EXPECT(s.cursor == 5);
}

void TestReadStringZeroLength() {
    // length 0 fails ASSERT(len > 0) (silent here) and reads nothing more.
    MemoryStream s;
    Load(s, {0, 0, 0, 0, 'x'});
    std::string value = "stale";
    s.readAs(value);
    EXPECT(value.empty());
    EXPECT(s.cursor == 4);
}

void TestReadStringNegativeLength() {
    // length -3 (0xFFFFFFFD) fails the same check and reads nothing more.
    MemoryStream s;
    Load(s, {0xFD, 0xFF, 0xFF, 0xFF, 'x'});
    std::string value = "stale";
    s.readAs(value);
    EXPECT(value.empty());
    EXPECT(s.cursor == 4);
}

void TestReadStringTruncatedStream() {
    // length 6 but only three bytes follow: the string keeps its size of len - 1 and the stream runs out.
    MemoryStream s;
    Load(s, {6, 0, 0, 0, 'h', 'e', 'l'});
    std::string value;
    s.readAs(value);
    EXPECT(value.size() == 5);
    EXPECT(value.compare(0, 3, "hel") == 0);
    EXPECT(s.cursor == 7);
}

}  // namespace

int main() {
    TestWriteReadUnsignedLongLong();
    TestWriteUnsignedInt();
    TestUnsignedShortRoundTrip();
    TestSignedCharRoundTrip();
    TestShortWriteAndRead();
    TestReadStringBasic();
    TestReadStringReplacesContent();
    TestReadStringLengthOne();
    TestReadStringZeroLength();
    TestReadStringNegativeLength();
    TestReadStringTruncatedStream();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("IStreamBase helpers: all checks passed\n");
    return 0;
}
