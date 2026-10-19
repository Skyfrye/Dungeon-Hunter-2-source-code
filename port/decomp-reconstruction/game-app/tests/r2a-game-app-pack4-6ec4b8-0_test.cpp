// Test for batch r2a-game-app-pack4-6ec4b8-0, the wide-string forms of StreamReader: writeString(IStreamBase*, wchar_t const*,
// len) (0x317548) and readString(IStreamBase*, wchar_t*, len) (0x31763c). Returns non-zero on failure.
//
// The stream holds 32-bit units for each character on every host, so these checks run whether wchar_t is 2 or 4 bytes.
// Link shims: IStreamBase's destructor, seekWrite and tellWrite are in the IStreamBase batches, and the value read
// readAs<unsigned int>(IStreamBase*) (0x313a90, which readString calls) is in this class's other batch. gAssertLevel is
// set to 0 so the ASSERT path stays silent.
#include "dh2/StreamReader.hpp"

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <cwchar>
#include <vector>

#include "dh2/IStreamBase.hpp"

int gAssertLevel = 0;

IStreamBase::~IStreamBase() {}
void IStreamBase::seekWrite(std::uint64_t pos) { seek(pos); }
std::uint64_t IStreamBase::tellWrite() const { return tell(); }
template <> unsigned int StreamReader::readAs<unsigned int>(IStreamBase* stream) {
    unsigned int value = 0;
    stream->read(&value, sizeof(unsigned int));
    return value;
}

namespace {

using Bytes = std::vector<unsigned char>;

// A byte-array stream with a cursor. Reads and writes move the cursor; writes past the end grow the array.
class MemoryStream final : public IStreamBase {
public:
    Bytes bytes;
    std::uint64_t cursor = 0;

    std::uint32_t size() const override { return static_cast<std::uint32_t>(bytes.size()); }
    bool canRead() const override { return cursor < bytes.size(); }
    bool canWrite() const override { return true; }

    std::uint64_t peek(void* dst, std::uint64_t n) const override {
        const std::uint64_t count = std::min(n, Available());
        if (count != 0) {
            std::memcpy(dst, bytes.data() + cursor, static_cast<std::size_t>(count));
        }
        return count;
    }

    std::uint64_t read(void* dst, std::uint64_t n) override {
        const std::uint64_t count = std::min(n, Available());
        if (count != 0) {
            std::memcpy(dst, bytes.data() + cursor, static_cast<std::size_t>(count));
        }
        cursor += count;
        return count;
    }

    std::uint64_t write(const void* src, std::uint64_t n) override {
        const std::uint64_t needed = cursor + n;
        if (bytes.size() < needed) {
            bytes.resize(static_cast<std::size_t>(needed));
        }
        if (n != 0) {
            std::memcpy(bytes.data() + cursor, src, static_cast<std::size_t>(n));
        }
        cursor += n;
        return n;
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

int g_failures = 0;

void Check(bool condition, const char* what) {
    if (!condition) {
        ++g_failures;
        std::printf("FAIL: %s\n", what);
    }
}

// The bytes of one 32-bit unit, little-endian, as the stream stores it.
Bytes Unit(std::uint32_t value) {
    return Bytes{static_cast<unsigned char>(value & 0xffu), static_cast<unsigned char>((value >> 8) & 0xffu),
                 static_cast<unsigned char>((value >> 16) & 0xffu), static_cast<unsigned char>((value >> 24) & 0xffu)};
}

Bytes Concat(const Bytes& a, const Bytes& b) {
    Bytes out = a;
    out.insert(out.end(), b.begin(), b.end());
    return out;
}

}  // namespace

int main() {
    // writeString(wchar_t, "ok", 2): the 32-bit length 2, then one 32-bit unit per character.
    {
        MemoryStream stream;
        const bool ok = StreamReader::writeString(&stream, L"ok", 2);
        Check(ok, "writeString(wchar_t) returns true");
        const Bytes expected = Concat(Concat(Unit(2), Unit('o')), Unit('k'));
        Check(stream.bytes == expected, "writeString(wchar_t) writes length 2, then two 32-bit units");
        Check(stream.cursor == 12, "writeString(wchar_t) advances the cursor by 4 + 4 * len");
    }

    // A character above 0xff is still one 32-bit unit: U+4E2D is stored as 2d 4e 00 00.
    {
        MemoryStream stream;
        StreamReader::writeString(&stream, L"中", 1);
        Check(stream.bytes == Concat(Unit(1), Unit(0x4e2d)), "writeString(wchar_t) stores a BMP character as one unit");
    }

    // Length 0 writes the prefix only.
    {
        MemoryStream stream;
        const bool ok = StreamReader::writeString(&stream, L"", 0);
        Check(ok, "writeString(wchar_t) of length 0 returns true");
        Check(stream.bytes == Unit(0), "writeString(wchar_t) of length 0 writes only the zero prefix");
    }

    // readString(wchar_t) reads "ok" back and terminates it. len 8 exceeds the length 2, so the result is true.
    {
        MemoryStream stream;
        StreamReader::writeString(&stream, L"ok", 2);
        stream.cursor = 0;
        wchar_t buf[8] = {};
        const bool ok = StreamReader::readString(&stream, buf, 8);
        Check(ok, "readString(wchar_t) returns true when len exceeds the length");
        Check(std::wcscmp(buf, L"ok") == 0, "readString(wchar_t) reads 'ok' and terminates it");
        Check(stream.cursor == 12, "readString(wchar_t) moves the cursor past the prefix and the units");
    }

    // Clamp: length 5 with len 3 reads len - 1 = 2 characters, and the result is false (3 does not exceed 5).
    {
        Bytes data = Unit(5);
        for (wchar_t c : {L'a', L'b', L'c', L'd', L'e'}) {
            data = Concat(data, Unit(static_cast<std::uint32_t>(c)));
        }
        MemoryStream stream;
        stream.bytes = data;
        wchar_t buf[8] = {};
        const bool ok = StreamReader::readString(&stream, buf, 3);
        Check(!ok, "readString(wchar_t) returns false when len does not exceed the length");
        Check(std::wcscmp(buf, L"ab") == 0, "readString(wchar_t) clamps to len - 1 characters");
        Check(stream.cursor == 4 + 8, "readString(wchar_t) moves the cursor by the clamped count");
    }

    // Exact fit: length 3 with len 4 reads "xyz" and the result is true.
    {
        MemoryStream stream;
        StreamReader::writeString(&stream, L"xyz", 3);
        stream.cursor = 0;
        wchar_t buf[8] = {};
        const bool ok = StreamReader::readString(&stream, buf, 4);
        Check(ok, "readString(wchar_t) exact fit returns true");
        Check(std::wcscmp(buf, L"xyz") == 0, "readString(wchar_t) exact fit reads 'xyz'");
    }

    // Round trip of a BMP string with mixed widths.
    {
        MemoryStream stream;
        const wchar_t text[] = L"été中";
        StreamReader::writeString(&stream, text, 4);
        stream.cursor = 0;
        wchar_t buf[8] = {};
        Check(StreamReader::readString(&stream, buf, 8), "readString(wchar_t) round trip returns true");
        Check(std::wcscmp(buf, text) == 0, "readString(wchar_t) round trip restores the characters");
    }

    if (g_failures != 0) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("StreamReader wide-string test passed\n");
    return 0;
}
