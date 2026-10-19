// Host check for CStringAttribute binary accessors and SStreamItrLoader byte order.
#include <cstdint>
#include <cstring>

#include "glitch-core-io/io/typed_attributes.hpp"
#include "io_stub_files.hpp"
#include "glitch-core-io/io/stream_itr_loader.hpp"

int main() {
    // setBinary writes lowercase hex; getBinary reads it back.
    const unsigned char in[4] = {0x00, 0xab, 0x7f, 0xff};
    glitch::io::CStringAttribute attr("bin", const_cast<unsigned char*>(in), 4, false);
    if (attr.narrow != "00ab7fff") return 1;
    unsigned char out[4] = {9, 9, 9, 9};
    attr.getBinary(out, 4);
    if (std::memcmp(in, out, 4) != 0) return 2;

    // A buffer longer than the text is zero filled past the decoded bytes.
    unsigned char longer[6] = {1, 1, 1, 1, 1, 1};
    attr.getBinary(longer, 6);
    if (longer[4] != 0 || longer[5] != 0) return 3;

    // SStreamItrLoader: big-endian 16-bit elements are stored as host values.
    class Reader : public glitch::io::testing::StubReadFile {
    public:
        const unsigned char* bytes;
        unsigned int pos = 0;
        std::int32_t read(void* buffer, std::uint32_t count) override {
            std::memcpy(buffer, bytes + pos, count);
            pos += count;
            return static_cast<std::int32_t>(count);
        }
    };
    const unsigned char be[4] = {0x12, 0x34, 0xab, 0xcd};
    Reader reader;
    reader.bytes = be;
    std::uint16_t dest[2] = {0, 0};
    glitch::io::SStreamItrLoader loader;
    loader.count = 2;
    loader.elementSize = 2;
    loader.stride = 4;
    loader.data = reinterpret_cast<std::uint8_t*>(dest);
    loader.loadAndAdvance(&reader, true);
    if (dest[0] != 0x1234 || dest[1] != 0xabcd) return 4;
    return 0;
}
