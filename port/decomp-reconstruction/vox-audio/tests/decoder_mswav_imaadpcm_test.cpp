// VoxMSWavSubDecoderIMAADPCM through DecoderMSWav: a mono IMA ADPCM WAVE with one 8-byte block
// decodes to nine frames. Expected values are worked out from the IMA tables by hand:
// header predictor 0, step index 0; nibbles 4,0,0,0,0,0,0,0 give 0, 7, 8, 9, 9, 9, 9, 9, 9.
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "vox-audio/vox/decoder_mswav.hpp"
#include "vox-audio/vox/memory.hpp"
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

void Put(std::vector<std::uint8_t>& v, const char* tag) {
    v.insert(v.end(), tag, tag + 4);
}
void Put16(std::vector<std::uint8_t>& v, unsigned value) {
    v.push_back(static_cast<std::uint8_t>(value));
    v.push_back(static_cast<std::uint8_t>(value >> 8));
}
void Put32(std::vector<std::uint8_t>& v, std::uint32_t value) {
    for (int i = 0; i < 4; ++i) {
        v.push_back(static_cast<std::uint8_t>(value >> (8 * i)));
    }
}

const std::int16_t kExpected[9] = {0, 7, 8, 9, 9, 9, 9, 9, 9};

bool SamePcm(const std::uint8_t* bytes, const std::int16_t* expected, int frames) {
    for (int i = 0; i < frames; ++i) {
        const std::int16_t value =
            static_cast<std::int16_t>(bytes[2 * i] | (bytes[2 * i + 1] << 8));
        if (value != expected[i]) {
            return false;
        }
    }
    return true;
}
}  // namespace

int main() {
    std::vector<std::uint8_t> file;
    Put(file, "RIFF");
    Put32(file, 0);  // patched below
    Put(file, "WAVE");
    Put(file, "fmt ");
    Put32(file, 20);     // IMA fmt chunk with the 2-byte extension
    Put16(file, 17);     // IMA ADPCM
    Put16(file, 1);      // channels
    Put32(file, 8000);   // sample rate
    Put32(file, 4000);   // bytes per second
    Put16(file, 8);      // block align: 4-byte header plus one 4-byte group
    Put16(file, 4);      // bits per sample
    Put16(file, 2);      // extension size
    Put16(file, 9);      // samples per block
    Put(file, "fact");
    Put32(file, 4);
    Put32(file, 9);      // total frames
    Put(file, "data");
    Put32(file, 8);
    // Block header: predictor 0, step index 0, reserved 0.
    file.push_back(0x00);
    file.push_back(0x00);
    file.push_back(0x00);
    file.push_back(0x00);
    // One group: channel 0 word. Low nibble of byte 0 is 4, every other nibble is 0.
    file.push_back(0x04);
    file.push_back(0x00);
    file.push_back(0x00);
    file.push_back(0x00);
    const std::uint32_t riff_size = static_cast<std::uint32_t>(file.size() - 8);
    for (int i = 0; i < 4; ++i) {
        file[4 + i] = static_cast<std::uint8_t>(riff_size >> (8 * i));
    }

    vox::StreamMemoryBufferParams params;
    params.data = file.data();
    params.size = static_cast<int>(file.size());
    vox::StreamMemoryBuffer stream(&params);
    vox::DecoderMSWav decoder;
    vox::StreamCursorInterface* stream_cursor = stream.CreateNewCursor();
    vox::DecoderCursorInterface* cursor = decoder.CreateNewCursor(stream_cursor);
    CHECK(cursor != nullptr);
    if (cursor == nullptr) {
        std::printf("decoder_mswav_imaadpcm_test: FAILED\n");
        return 1;
    }

    CHECK(cursor->HasData());
    std::uint8_t out[18] = {};
    CHECK(cursor->Decode(out, 18) == 18);
    CHECK(SamePcm(out, kExpected, 9));
    CHECK(!cursor->HasData());  // all nine frames are owed and returned

    // Seek back to the start and read the same frames in two pieces.
    CHECK(cursor->Seek(0) == 0);
    std::uint8_t head[4] = {};
    CHECK(cursor->Decode(head, 4) == 4);
    CHECK(SamePcm(head, kExpected, 2));
    std::uint8_t tail[14] = {};
    CHECK(cursor->Decode(tail, 14) == 14);
    CHECK(SamePcm(tail, kExpected + 2, 7));

    // Seeking past the end is refused.
    CHECK(cursor->Seek(9) == -1);

    decoder.DestroyCursor(cursor);
    stream.DestroyCursor(stream_cursor);

    std::printf("decoder_mswav_imaadpcm_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
