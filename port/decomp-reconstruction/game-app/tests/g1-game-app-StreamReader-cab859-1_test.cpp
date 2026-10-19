// Test for batch g1-game-app-StreamReader-cab859-1 (StreamReader::readAs<unsigned short>, one body).
// Runs the out-parameter read against an in-memory stream. Returns non-zero on failure.
//
// Link shims: IStreamBase's destructor, seekWrite and tellWrite are in the other part of the class and are not among the
// sources this test links. The shims follow dh2/IStreamBase.hpp (seekWrite forwards to seek, tellWrite returns tell).
#include "dh2/StreamReader.hpp"

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "dh2/IStreamBase.hpp"

// The source file reads this global; the test provides it. gAssertLevel 0 keeps ASSERT silent.
int gAssertLevel = 0;

// Explicit specialization defined in game-app/src/g1-game-app-StreamReader-cab859-1.cpp.
template <> void StreamReader::readAs<unsigned short>(IStreamBase* stream, unsigned short* value);

// Link shims for the other part of IStreamBase (see the comment at the top).
IStreamBase::~IStreamBase() {}
void IStreamBase::seekWrite(std::uint64_t pos) { seek(pos); }
std::uint64_t IStreamBase::tellWrite() const { return tell(); }

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
        if (bytes.size() < cursor + count) {
            bytes.resize(static_cast<std::size_t>(cursor + count));
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

int g_failures = 0;

void Check(bool condition, const char* what) {
    if (!condition) {
        ++g_failures;
        std::printf("FAIL: %s\n", what);
    }
}

}  // namespace

int main() {
    // Two bytes, little-endian: 0x34 then 0x12 reads as 0x1234. The cursor moves by 2.
    {
        MemoryStream stream;
        stream.bytes = {0x34, 0x12};
        unsigned short value = 0;
        StreamReader::readAs<unsigned short>(&stream, &value);
        Check(value == 0x1234, "two-byte read gives 0x1234");
        Check(stream.cursor == 2, "two-byte read advances the cursor by 2");
    }

    // Sequential reads take consecutive pairs.
    {
        MemoryStream stream;
        stream.bytes = {0x01, 0x00, 0xff, 0xff};
        unsigned short first = 0;
        unsigned short second = 0;
        StreamReader::readAs<unsigned short>(&stream, &first);
        StreamReader::readAs<unsigned short>(&stream, &second);
        Check(first == 1, "first pair reads 1");
        Check(second == 0xffff, "second pair reads 0xffff");
        Check(stream.cursor == 4, "two reads advance the cursor by 4");
    }

    // An empty stream transfers nothing: the value keeps its old content and the cursor does not move.
    // gAssertLevel is 0, so the failed count is silent.
    {
        MemoryStream stream;
        unsigned short value = 0x5a5a;
        StreamReader::readAs<unsigned short>(&stream, &value);
        Check(value == 0x5a5a, "empty stream leaves the value unchanged");
        Check(stream.cursor == 0, "empty stream leaves the cursor at 0");
    }

    // A one-byte stream gives a short count (1, not 2). The call must return without a crash and move the cursor by 1.
    {
        MemoryStream stream;
        stream.bytes = {0x7f};
        unsigned short value = 0;
        StreamReader::readAs<unsigned short>(&stream, &value);
        Check(stream.cursor == 1, "short stream moves the cursor by the count transferred");
    }

    // Capped transfer (maxTransfer 1) is also a short count.
    {
        MemoryStream stream;
        stream.bytes = {0x01, 0x02, 0x03, 0x04};
        stream.maxTransfer = 1;
        unsigned short value = 0;
        StreamReader::readAs<unsigned short>(&stream, &value);
        Check(stream.cursor == 1, "capped transfer moves the cursor by 1");
    }

    // gAssertLevel 1 takes the fprintf branch on a short count and then continues. The message goes to stderr.
    {
        gAssertLevel = 1;
        MemoryStream stream;
        stream.bytes = {0x7f};
        unsigned short value = 0;
        StreamReader::readAs<unsigned short>(&stream, &value);
        Check(stream.cursor == 1, "level 1 assert path still completes the read");
        gAssertLevel = 0;
    }

    if (g_failures == 0) {
        std::printf("StreamReader readAs<unsigned short> test: all checks passed\n");
        return 0;
    }
    std::printf("StreamReader readAs<unsigned short> test: %d failure(s)\n", g_failures);
    return 1;
}
