// SStreamItrWriter: swapped elements are written big-endian, block writes are raw, and the
// source pointer advances by the stride.
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "glitch-core-io/io/stream_itr_writer.hpp"
#include "io_stub_files.hpp"

namespace {

struct CaptureFile : glitch::io::testing::StubWriteFile {
    std::vector<std::uint8_t> bytes;
    std::size_t write(const void* d, unsigned int n) override {
        const auto* p = static_cast<const std::uint8_t*>(d);
        bytes.insert(bytes.end(), p, p + n);
        return n;
    }
};

int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

}  // namespace

int main() {
    // Two 4-byte values, swapped: 0x01020304 and 0x0a0b0c0d come out most significant byte first.
    const std::uint32_t values[3] = {0x01020304u, 0x0a0b0c0du, 0x11223344u};
    {
        CaptureFile file;
        glitch::io::SStreamItrWriter w{};
        w.data = reinterpret_cast<const std::uint8_t*>(values);
        w.count = 2;
        w.elementSize = 4;
        w.stride = 4;
        w.writeAndAdvance(&file, true);
        const std::uint8_t expected[8] = {0x01, 0x02, 0x03, 0x04, 0x0a, 0x0b, 0x0c, 0x0d};
        CHECK(file.bytes.size() == 8);
        CHECK(std::memcmp(file.bytes.data(), expected, 8) == 0);
        CHECK(w.data == reinterpret_cast<const std::uint8_t*>(values) + 4);  // advanced by the stride
    }
    {
        // Block write (no swap) of two 2-byte elements keeps the bytes as they are.
        CaptureFile file;
        const std::uint16_t words[2] = {0x1234, 0xabcd};
        glitch::io::SStreamItrWriter w{};
        w.data = reinterpret_cast<const std::uint8_t*>(words);
        w.count = 2;
        w.elementSize = 2;
        w.stride = 0;
        w.writeAndAdvance(&file, false);
        CHECK(file.bytes.size() == 4);
        CHECK(std::memcmp(file.bytes.data(), words, 4) == 0);
    }
    std::printf("%s\n", failures ? "stream_itr_writer: FAILED" : "stream_itr_writer: ok");
    return failures != 0;
}
