// vox::DecoderMSWav::CreateNewCursor: a PCM WAVE block is parsed from the stream, the PCM
// sub-decoder reads the data chunks, and the parsed block is reused by a second cursor.
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
}  // namespace

int main() {
    // RIFF/WAVE, a 16-byte PCM fmt chunk (mono, 16-bit, 8 kHz), one data chunk of 8 bytes and a
    // second data chunk of 4 bytes, so the parser builds a two-node list.
    std::vector<std::uint8_t> file;
    Put(file, "RIFF");
    Put32(file, 0);  // patched below
    Put(file, "WAVE");
    Put(file, "fmt ");
    Put32(file, 16);
    Put16(file, 1);      // PCM
    Put16(file, 1);      // channels
    Put32(file, 8000);   // sample rate
    Put32(file, 16000);  // bytes per second
    Put16(file, 2);      // block align
    Put16(file, 16);     // bits per sample
    Put(file, "data");
    Put32(file, 8);
    for (std::uint8_t b = 1; b <= 8; ++b) {
        file.push_back(b);
    }
    Put(file, "data");
    Put32(file, 4);
    for (std::uint8_t b = 9; b <= 12; ++b) {
        file.push_back(b);
    }
    const std::uint32_t riff_size = static_cast<std::uint32_t>(file.size() - 8);
    for (int i = 0; i < 4; ++i) {
        file[4 + i] = static_cast<std::uint8_t>(riff_size >> (8 * i));
    }

    vox::StreamMemoryBufferParams params;
    params.data = file.data();
    params.size = static_cast<int>(file.size());
    vox::StreamMemoryBuffer stream(&params);

    vox::DecoderMSWav* decoder = static_cast<vox::DecoderMSWav*>(vox::DecoderMSWavFactory(nullptr));
    CHECK(decoder != nullptr);
    if (decoder == nullptr) {
        std::printf("decoder_mswav_parse_test: FAILED\n");
        return 1;
    }
    CHECK(decoder->GetType() == 1);

    for (int pass = 0; pass < 2; ++pass) {
        vox::StreamCursorInterface* stream_cursor = stream.CreateNewCursor();
        CHECK(stream_cursor != nullptr);
        vox::DecoderCursorInterface* cursor = decoder->CreateNewCursor(stream_cursor);
        CHECK(cursor != nullptr);
        if (cursor == nullptr) {
            break;
        }

        CHECK(cursor->HasData());
        std::uint8_t out[8] = {};
        CHECK(cursor->Decode(out, 8) == 8);
        bool same = true;
        for (int i = 0; i < 8; ++i) {
            same = same && out[i] == i + 1;
        }
        CHECK(same);

        decoder->DestroyCursor(cursor);
        stream.DestroyCursor(stream_cursor);
    }

    // The decoder frees its data list (DataNode::DropNodes) on destruction.
    decoder->~DecoderMSWav();
    VoxFree(decoder);

    std::printf("decoder_mswav_parse_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
