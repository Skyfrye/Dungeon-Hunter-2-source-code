// readPVRHeader (0x6058a4) on an in-memory file. The .cpp is included directly so the
// anonymous-namespace probe can be called. Build:
//   g++ -std=c++17 -Wall -I glitch-video/include -I shared/include glitch-video/tests/tb_video-glitch_video-0_test.cpp
#include <cstdio>
#include <cstring>
#include <vector>

#include "../src/tb_video-glitch_video-0.cpp"
#include "read_file_stub.hpp"

namespace glitch::os {
void Printer::logf(ELOG_LEVEL, const char*, ...) {}  // test stub: message output is not checked
}

namespace {

int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Only the header read is exercised; the size and position slots keep the inert answers of the stub.
class MemoryReadFile : public glitch::video::test::StubReadFile {
public:
    explicit MemoryReadFile(std::vector<uint8_t> bytes) : m_bytes(std::move(bytes)) {}
    int32_t read(void* buffer, uint32_t size) override {
        const uint32_t available = static_cast<uint32_t>(m_bytes.size()) - m_pos;
        const uint32_t n = size < available ? size : available;
        std::memcpy(buffer, m_bytes.data() + m_pos, n);
        m_pos += n;
        return static_cast<int32_t>(n);
    }
    bool seek(long position, bool relative) override {
        m_pos = static_cast<uint32_t>(relative ? static_cast<long>(m_pos) + position : position);
        return true;
    }
private:
    std::vector<uint8_t> m_bytes;
    uint32_t m_pos = 0;
};

void put32(std::vector<uint8_t>& b, size_t at, uint32_t v) {
    for (int i = 0; i < 4; ++i) b[at + i] = static_cast<uint8_t>(v >> (8 * i));
}

// 52-byte header: height, width, mips, flags, surfaces, with "PVR!" at +0x2c.
std::vector<uint8_t> plainHeader(uint32_t h, uint32_t w, uint32_t mips, uint32_t flags, uint32_t surfaces) {
    std::vector<uint8_t> b(52, 0);
    put32(b, 0, 52);
    put32(b, 4, h);
    put32(b, 8, w);
    put32(b, 12, mips);
    put32(b, 16, flags);
    put32(b, 48, surfaces);
    std::memcpy(b.data() + 44, "PVR!", 4);
    return b;
}

}  // namespace

int main() {
    using glitch::video::readPVRHeader;
    using glitch::video::SPVRHeader;
    bool btex = true;
    SPVRHeader hdr;

    {  // plain header, no mip flag: accepted without a mip check
        MemoryReadFile f(plainHeader(64, 32, 1, 0, 0));
        CHECK(readPVRHeader(&f, hdr, btex));
        CHECK(!btex);
        CHECK(hdr.width == 32 && hdr.height == 64);
    }
    {  // mip flag, 64x32 needs log2(64) + 1 = 6 levels
        MemoryReadFile ok(plainHeader(64, 32, 6, 0x100, 0));
        CHECK(readPVRHeader(&ok, hdr, btex));
        MemoryReadFile bad(plainHeader(64, 32, 5, 0x100, 0));
        CHECK(!readPVRHeader(&bad, hdr, btex));
    }
    {  // mip flag with zero mip count fails
        MemoryReadFile f(plainHeader(64, 32, 0, 0x100, 0));
        CHECK(!readPVRHeader(&f, hdr, btex));
    }
    {  // cube map flag needs six surfaces
        MemoryReadFile ok(plainHeader(16, 16, 0, 0x1000, 6));
        CHECK(readPVRHeader(&ok, hdr, btex));
        MemoryReadFile bad(plainHeader(16, 16, 0, 0x1000, 5));
        CHECK(!readPVRHeader(&bad, hdr, btex));
    }
    {  // volume: depth 8 gives log2 3, above the 4x4 dimension log 2, so 3 levels are expected
        MemoryReadFile ok(plainHeader(4, 4, 3, 0x100 | 0x4000, 8));
        CHECK(readPVRHeader(&ok, hdr, btex));
        MemoryReadFile bad(plainHeader(4, 4, 2, 0x100 | 0x4000, 8));
        CHECK(!readPVRHeader(&bad, hdr, btex));
    }
    {  // wrong tag fails
        std::vector<uint8_t> b = plainHeader(8, 8, 0, 0, 0);
        b[44] = 'X';
        MemoryReadFile f(b);
        CHECK(!readPVRHeader(&f, hdr, btex));
    }
    {  // BTEX wrapper: 8-byte tag then the 52-byte header; isBTEX is set
        std::vector<uint8_t> b(8, 0);
        std::memcpy(b.data(), "BTEXpvr", 8);
        std::vector<uint8_t> h = plainHeader(8, 8, 0, 0, 0);
        b.insert(b.end(), h.begin(), h.end());
        MemoryReadFile f(b);
        CHECK(readPVRHeader(&f, hdr, btex));
        CHECK(btex);
    }
    {  // short file fails
        std::vector<uint8_t> b = plainHeader(8, 8, 0, 0, 0);
        b.resize(30);
        MemoryReadFile f(b);
        CHECK(!readPVRHeader(&f, hdr, btex));
    }
    {  // a short read decodes what it read and keeps the caller's previous bytes for the rest, as the
       // original does by reading into the caller's struct in place
        std::vector<uint8_t> b = plainHeader(8, 16, 3, 0x100, 0);
        b.resize(30);  // the 8 + 22 bytes reach the fields up to and including +0x1c (the red mask)
        MemoryReadFile f(b);
        SPVRHeader pre;
        pre.alphaBitMask = 0xDEADBEEFu;  // +0x28, past the end of the data
        pre.redBitMask = 0x1111u;        // +0x1c, inside the data (it is read as 0)
        CHECK(!readPVRHeader(&f, pre, btex));
        CHECK(pre.height == 8 && pre.width == 16 && pre.mipMapCount == 3 && pre.flags == 0x100);
        CHECK(pre.redBitMask == 0);
        CHECK(pre.alphaBitMask == 0xDEADBEEFu);
    }
    std::printf(failures ? "FAILED %d\n" : "OK\n", failures);
    return failures ? 1 : 0;
}
