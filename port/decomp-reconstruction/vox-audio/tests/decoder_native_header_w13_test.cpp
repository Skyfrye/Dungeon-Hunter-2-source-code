// vox::DecoderNativeCursor::ParseFile header block on an in-memory VoxN file: the magic and
// body size, body words 0..2 (name words), the base offset, the Afmt id and size, the first
// 12 fmt bytes in the format, field_0c and sample words, and the fmt bytes past them.
#include <cstdint>
#include <cstdio>
#include <vector>

#include "vox-audio/vox/decoder_native.hpp"
#include "vox-audio/vox/stream.hpp"

namespace {
int g_failures = 0;
#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

void Put32(std::vector<std::uint8_t>& out, std::uint32_t value) {
    for (int shift = 0; shift < 32; shift += 8) {
        out.push_back(static_cast<std::uint8_t>(value >> shift));
    }
}

void Chunk(std::vector<std::uint8_t>& out, std::uint32_t id, const std::vector<std::uint8_t>& body) {
    Put32(out, id);
    Put32(out, static_cast<std::uint32_t>(body.size()));
    out.insert(out.end(), body.begin(), body.end());
}

}  // namespace

namespace vox {

struct DecoderNativeTestAccess {
    static const NativeHeaderWords& Header(const DecoderNative& d) { return d.header_words_; }
};

}  // namespace vox

int main() {
    using vox::DecoderNative;
    using vox::DecoderNativeTestAccess;

    // Afmt body: 24 bytes. Words 0..2 are format, field_0c and sample word (bytes per second
    // here, so its low half is 0xB110); word 3 and the words after it are the fmt bytes past 12.
    std::vector<std::uint8_t> data;
    std::vector<std::uint8_t> fmt;
    Put32(fmt, 0x00020001u);
    Put32(fmt, 44100u);
    Put32(fmt, 176400u);
    Put32(fmt, 0x00100004u);
    Put32(fmt, 0xAABBCCDDu);
    Put32(fmt, 0x11223344u);
    Chunk(data, 0x746D6641u, fmt);

    // Header block: magic, body size 16, body words 0..2 (name words), word 3 the total length.
    const std::uint32_t total = static_cast<std::uint32_t>(data.size() + 16 + 16);
    std::vector<std::uint8_t> file;
    Put32(file, 0x4E786F56u);
    Put32(file, 16u);
    Put32(file, 0x11111111u);
    Put32(file, 0x22222222u);
    Put32(file, 0x33333333u);
    Put32(file, total);
    file.insert(file.end(), data.begin(), data.end());

    vox::StreamMemoryBufferParams params;
    params.data = file.data();
    params.size = static_cast<int>(file.size());
    vox::StreamMemoryBuffer stream(&params);
    vox::StreamCursorInterface* cursor = stream.CreateNewCursor();

    DecoderNative decoder;
    vox::DecoderNativeCursor parsed(&decoder, cursor);

    const vox::NativeHeaderWords& header = DecoderNativeTestAccess::Header(decoder);
    CHECK(header.magic == 0x4E786F56);
    CHECK(header.body_size == 16);
    CHECK(header.name_words[0] == 0x11111111);
    CHECK(header.name_words[1] == 0x22222222);
    CHECK(header.name_words[2] == 0x33333333);
    CHECK(header.base_offset == static_cast<std::int32_t>(total));
    CHECK(header.afmt_id == 0x746D6641);
    CHECK(header.afmt_size == 24);
    CHECK(header.format_word == 0x00020001);
    CHECK(header.field_0c == 44100);
    // Sample word = fmt bytes 8..11 (176400 here), with the bits half set to 16 at +0x2e.
    CHECK(static_cast<std::uint32_t>(header.sample_word) == 0x0010B110u);
    CHECK(header.fmt_tail.size() == 12);
    if (header.fmt_tail.size() == 12) {
        // Word 3 (0x00100004) then word 4 (0xAABBCCDD) then word 5 (0x11223344), little endian.
        CHECK(header.fmt_tail[0] == 0x04);
        CHECK(header.fmt_tail[2] == 0x10);
        CHECK(header.fmt_tail[4] == 0xDD);
        CHECK(header.fmt_tail[7] == 0xAA);
        CHECK(header.fmt_tail[8] == 0x44);
        CHECK(header.fmt_tail[11] == 0x11);
    }

    stream.DestroyCursor(cursor);

    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    return 0;
}
