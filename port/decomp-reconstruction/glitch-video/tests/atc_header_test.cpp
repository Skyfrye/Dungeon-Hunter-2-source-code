// CImageLoaderATC::loadTextureHeader on an in-memory file (0x602e34).
// Build: g++ -std=c++17 -Wall -I glitch-video/include glitch-video/tests/atc_header_test.cpp
//        glitch-video/src/texture_loaders.cpp glitch-video/src/pixel_format.cpp glitch-video/src/pixel_format_table.cpp
#include <cstdio>
#include <cstring>
#include <vector>

#include "glitch-video/texture_loaders.hpp"
#include "read_file_stub.hpp"

using namespace glitch::video;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

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
    long getSize() const override { return static_cast<long>(m_bytes.size()); }
    long getPos() const override { return static_cast<long>(m_pos); }

private:
    std::vector<uint8_t> m_bytes;
    uint32_t m_pos = 0;
};

// Header: width (2), height (2), magic (2), unused (2), data size (4), then the data.
std::vector<uint8_t> makeAtc(uint16_t width, uint16_t height, uint16_t magic, uint32_t dataSize, bool truncate) {
    std::vector<uint8_t> f = {
        static_cast<uint8_t>(width & 0xff), static_cast<uint8_t>(width >> 8),
        static_cast<uint8_t>(height & 0xff), static_cast<uint8_t>(height >> 8),
        static_cast<uint8_t>(magic & 0xff), static_cast<uint8_t>(magic >> 8),
        0, 0,
        static_cast<uint8_t>(dataSize & 0xff), static_cast<uint8_t>((dataSize >> 8) & 0xff),
        static_cast<uint8_t>((dataSize >> 16) & 0xff), static_cast<uint8_t>(dataSize >> 24),
    };
    const uint32_t body = truncate ? dataSize - 1 : dataSize;
    f.resize(f.size() + body, 0x55);
    return f;
}

}  // namespace

int main() {
    CImageLoaderATC loader;
    {
        MemoryReadFile file(makeAtc(0x0123, 0x0456, 0x8c92, 8, false));
        STextureDesc desc;
        CHECK(loader.loadTextureHeader(&file, desc));
        CHECK(desc.width == 0x0123);
        CHECK(desc.height == 0x0456);
        CHECK(desc.format == 21);
        CHECK(desc.depth == 1);
        CHECK(desc.flag == 1);
        CHECK(desc.type == 0 && desc.unknown08 == 0);
    }
    {
        MemoryReadFile file(makeAtc(4, 8, 0x8c93, 3, false));
        STextureDesc desc;
        CHECK(loader.loadTextureHeader(&file, desc));
        CHECK(desc.format == 22);
    }
    {
        // Unknown magic: the header is still read, format is left as it was.
        MemoryReadFile file(makeAtc(4, 8, 0x1234, 3, false));
        STextureDesc desc;
        desc.format = 99;
        CHECK(loader.loadTextureHeader(&file, desc));
        CHECK(desc.format == 99);
        CHECK(desc.width == 4);
    }
    {
        // Short data block: the header fails and the descriptor is not written.
        MemoryReadFile file(makeAtc(4, 8, 0x8c92, 8, true));
        STextureDesc desc;
        desc.width = 77;
        CHECK(!loader.loadTextureHeader(&file, desc));
        CHECK(desc.width == 77);
    }
    if (failures == 0) std::printf("atc_header_test: ok\n");
    return failures == 0 ? 0 : 1;
}
