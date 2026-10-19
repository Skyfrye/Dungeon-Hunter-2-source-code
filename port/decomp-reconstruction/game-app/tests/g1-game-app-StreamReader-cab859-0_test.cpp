// Test for batch g1-game-app-StreamReader-cab859-0 (StreamReader, part 1 of 2). Runs the typed reads and writes, the
// peek, and the string helpers against an in-memory stream. Returns non-zero on failure.
//
// Link shims: IStreamBase's destructor, seekWrite and tellWrite are in the IStreamBase batches, and the value read
// readAs<unsigned int>(IStreamBase*) (0x313a90, which readString calls) is in this class's other batch. The shims follow
// dh2/IStreamBase.hpp and do only what these tests need. The wide-string checks run only where wchar_t is 4 bytes.
#include "dh2/StreamReader.hpp"

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <cwchar>
#include <string>
#include <vector>

#include "dh2/IStreamBase.hpp"

// The source file reads this global; the test provides it. gAssertLevel 0 keeps ASSERT silent.
int gAssertLevel = 0;

// Link shims for the other batches (see the comment at the top).
IStreamBase::~IStreamBase() {}
void IStreamBase::seekWrite(std::uint64_t pos) { seek(pos); }
std::uint64_t IStreamBase::tellWrite() const { return tell(); }
template <> unsigned int StreamReader::readAs<unsigned int>(IStreamBase* stream) {
    unsigned int value = 0;
    stream->read(&value, sizeof(unsigned int));
    return value;
}

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
        const std::uint64_t count = std::min(std::min(n, Available()), maxTransfer);
        if (count != 0) {
            std::memcpy(dst, bytes.data() + cursor, static_cast<std::size_t>(count));
        }
        return count;
    }

    std::uint64_t read(void* dst, std::uint64_t n) override {
        const std::uint64_t count = std::min(std::min(n, Available()), maxTransfer);
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

private:
    std::uint64_t Available() const {
        const std::uint64_t total = static_cast<std::uint64_t>(bytes.size());
        return cursor < total ? total - cursor : 0;
    }
};

using Bytes = std::vector<unsigned char>;

int g_failures = 0;

void Check(bool condition, const char* what) {
    if (!condition) {
        ++g_failures;
        std::printf("FAIL: %s\n", what);
    }
}

MemoryStream MakeStream(const Bytes& bytes) {
    MemoryStream stream;
    stream.bytes = bytes;
    return stream;
}

}  // namespace

int main() {
    // writeAs<int>(value) and readAs<int>(value) use the little-endian 4-byte layout.
    {
        MemoryStream stream;
        StreamReader::writeAs<int>(&stream, 0x12345678);
        Check(stream.bytes == Bytes({0x78, 0x56, 0x34, 0x12}), "writeAs<int> writes 4 little-endian bytes");
        Check(stream.cursor == 4, "writeAs<int> advances the cursor by 4");
        stream.cursor = 0;
        Check(StreamReader::readAs<int>(&stream) == 0x12345678, "readAs<int>(value) reads the value back");
        Check(stream.cursor == 4, "readAs<int>(value) advances the cursor by 4");
    }

    // The out-parameter int read, and the pointer write of unsigned int.
    {
        MemoryStream stream = MakeStream({0xff, 0xff, 0xff, 0xff});
        int value = 0;
        StreamReader::readAs<int>(&stream, &value);
        Check(value == -1, "readAs<int>(ptr) reads -1 from four 0xff bytes");

        MemoryStream out;
        unsigned int word = 0xdeadbeef;
        StreamReader::writeAs<unsigned int>(&out, &word);
        Check(out.bytes == Bytes({0xef, 0xbe, 0xad, 0xde}), "writeAs<unsigned int>(ptr) writes the value's bytes");

        MemoryStream in = MakeStream({0xef, 0xbe, 0xad, 0xde});
        unsigned int back = 0;
        StreamReader::readAs<unsigned int>(&in, &back);
        Check(back == 0xdeadbeef, "readAs<unsigned int>(ptr) reads 0xdeadbeef");
    }

    // Pointer write of int.
    {
        MemoryStream stream;
        const int value = 0x01020304;
        StreamReader::writeAs<int>(&stream, &value);
        Check(stream.bytes == Bytes({0x04, 0x03, 0x02, 0x01}), "writeAs<int>(const ptr) writes 4 bytes");
    }

    // Value and pointer writes of unsigned char and bool.
    {
        MemoryStream stream;
        StreamReader::writeAs<unsigned char>(&stream, 0xab);
        StreamReader::writeAs<bool>(&stream, true);
        StreamReader::writeAs<bool>(&stream, false);
        Check(stream.bytes == Bytes({0xab, 0x01, 0x00}), "writeAs<unsigned char> and writeAs<bool> write one byte each");
        Check(stream.cursor == 3, "three one-byte writes advance the cursor by 3");
    }

    // Bool reads: value form returns the raw byte as true or false, the out form stores it.
    {
        MemoryStream zero = MakeStream({0x00});
        Check(StreamReader::readAs<bool>(&zero) == false, "readAs<bool>(value) of 0 is false");

        MemoryStream one = MakeStream({0x01});
        Check(StreamReader::readAs<bool>(&one) == true, "readAs<bool>(value) of 1 is true");

        MemoryStream two = MakeStream({0x02});
        Check(StreamReader::readAs<bool>(&two) == true, "readAs<bool>(value) of a nonzero byte is true");

        MemoryStream outForm = MakeStream({0x01});
        bool flag = false;
        StreamReader::readAs<bool>(&outForm, &flag);
        Check(flag == true, "readAs<bool>(ptr) stores the byte");
        Check(outForm.cursor == 1, "readAs<bool>(ptr) advances the cursor by 1");
    }

    // Small integers, float and short reads, all little-endian.
    {
        MemoryStream s1 = MakeStream({0xff});
        signed char sc = 0;
        StreamReader::readAs<signed char>(&s1, &sc);
        Check(sc == -1, "readAs<signed char> reads 0xff as -1");

        MemoryStream s2 = MakeStream({0x34, 0x12});
        short sh = 0;
        StreamReader::readAs<short>(&s2, &sh);
        Check(sh == 0x1234, "readAs<short> reads 0x1234");

        MemoryStream s3 = MakeStream({0x00, 0x00, 0xc0, 0x3f});
        float f = 0.0f;
        StreamReader::readAs<float>(&s3, &f);
        Check(f == 1.5f, "readAs<float> reads 1.5");
    }

    // peekAs<int> reads without moving the cursor.
    {
        MemoryStream stream = MakeStream({0x2a, 0x00, 0x00, 0x00});
        int value = 0;
        StreamReader::peekAs<int>(&stream, &value);
        Check(value == 42, "peekAs<int> reads 42");
        Check(stream.cursor == 0, "peekAs<int> leaves the cursor at 0");
    }

    // A short stream: the value read returns 0 (the local is zeroed), and the cursor does not move.
    // gAssertLevel is 0 here, so the failed count is silent.
    {
        MemoryStream empty;
        Check(StreamReader::readAs<int>(&empty) == 0, "readAs<int>(value) on an empty stream returns 0");
        Check(empty.cursor == 0, "readAs<int>(value) on an empty stream leaves the cursor at 0");
    }

    // gAssertLevel 1 takes the message path on a short count and then continues. The message goes to stderr.
    {
        gAssertLevel = 1;
        MemoryStream empty;
        int value = 7;
        StreamReader::readAs<int>(&empty, &value);
        Check(empty.cursor == 0, "level 1 assert path on a short read still returns");
        gAssertLevel = 0;
    }

    // writeString(char) writes a 32-bit length, then the bytes.
    {
        MemoryStream stream;
        const bool ok = StreamReader::writeString(&stream, "hi", 2);
        Check(ok, "writeString(char) returns true");
        Check(stream.bytes == Bytes({0x02, 0x00, 0x00, 0x00, 'h', 'i'}), "writeString(char) writes length 2, then the bytes");
    }

    // readString(char) reads the length, the characters and a terminator.
    {
        MemoryStream stream = MakeStream({0x02, 0x00, 0x00, 0x00, 'h', 'i'});
        char buf[8] = {};
        const bool ok = StreamReader::readString(&stream, buf, 8);
        Check(ok, "readString(char) returns true when len exceeds the length");
        Check(std::strcmp(buf, "hi") == 0, "readString(char) reads 'hi' and terminates it");
        Check(stream.cursor == 6, "readString(char) advances the cursor past the prefix and the characters");
    }

    // readString(char) clamps the count to len - 1: the length 5 with a buffer of 3 reads 2 characters.
    {
        MemoryStream stream = MakeStream({0x05, 0x00, 0x00, 0x00, 'a', 'b', 'c', 'd', 'e'});
        char buf[3] = {};
        const bool ok = StreamReader::readString(&stream, buf, 3);
        Check(!ok, "readString(char) returns false when len does not exceed the length");
        Check(std::strcmp(buf, "ab") == 0, "readString(char) clamps to len - 1 characters");
        Check(stream.cursor == 6, "readString(char) moves the cursor by the clamped count");
    }

    // An exact fit: length 3 into a buffer of 4 reads all three characters.
    {
        MemoryStream stream = MakeStream({0x03, 0x00, 0x00, 0x00, 'x', 'y', 'z'});
        char buf[4] = {};
        const bool ok = StreamReader::readString(&stream, buf, 4);
        Check(ok, "readString(char) exact fit returns true");
        Check(std::strcmp(buf, "xyz") == 0, "readString(char) exact fit reads 'xyz'");
    }

    // A zero-length string: length 0 gives an empty string.
    {
        MemoryStream stream = MakeStream({0x00, 0x00, 0x00, 0x00});
        char buf[1] = {'q'};
        const bool ok = StreamReader::readString(&stream, buf, 1);
        Check(ok, "readString(char) of length 0 returns true for len 1");
        Check(buf[0] == '\0', "readString(char) of length 0 terminates the buffer");
    }

    // writeStringEx and readStringEx move raw bytes, with no prefix.
    {
        MemoryStream stream;
        const bool wrote = StreamReader::writeStringEx(&stream, "xyz", 3);
        Check(wrote, "writeStringEx returns true");
        Check(stream.bytes == Bytes({'x', 'y', 'z'}), "writeStringEx writes the raw bytes");

        MemoryStream in = MakeStream({'a', 'b', 'c', 'd'});
        char buf[4] = {};
        Check(StreamReader::readStringEx(&in, buf, 4), "readStringEx returns true when all bytes arrive");
        Check(std::memcmp(buf, "abcd", 4) == 0, "readStringEx reads the raw bytes");

        MemoryStream shortStream = MakeStream({'a', 'b'});
        char buf2[4] = {};
        Check(!StreamReader::readStringEx(&shortStream, buf2, 4), "readStringEx returns false on a short count");

        MemoryStream capped = MakeStream({'a', 'b', 'c', 'd'});
        capped.maxTransfer = 2;
        char buf3[4] = {};
        Check(!StreamReader::readStringEx(&capped, buf3, 4), "readStringEx returns false on a capped count");
    }

    // The wide-string forms: the stream holds 32-bit units. Checked only where wchar_t is 4 bytes, since the stream
    // layout assumes that width (see the PARTIAL notes in the source file).
    if constexpr (sizeof(wchar_t) == 4) {
        MemoryStream stream;
        const bool ok = StreamReader::writeString(&stream, L"ok", 2);
        Check(ok, "writeString(wchar_t) returns true");
        Check(stream.bytes == Bytes({0x02, 0x00, 0x00, 0x00, 'o', 0x00, 0x00, 0x00, 'k', 0x00, 0x00, 0x00}),
              "writeString(wchar_t) writes length 2, then 8 bytes of 32-bit units");

        MemoryStream in = MakeStream(stream.bytes);
        wchar_t buf[8] = {};
        const bool read = StreamReader::readString(&in, buf, 8);
        Check(read, "readString(wchar_t) returns true");
        Check(std::wcscmp(buf, L"ok") == 0, "readString(wchar_t) reads 'ok' and terminates it");
    }

    if (g_failures == 0) {
        std::printf("StreamReader part 1 test: all checks passed\n");
        return 0;
    }
    std::printf("StreamReader part 1 test: %d failure(s)\n", g_failures);
    return 1;
}
